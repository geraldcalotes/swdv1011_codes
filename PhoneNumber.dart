class PhoneNumber{
	String clean(String number){
		String num = number.replaceAll(RegExp(r'([()\s-.+])'),'');
		
		if (num.contains(RegExp(r'[a-zA-Z]'))){
			throw FormatException('Letters are not allowed');
		}else if (num.contains(RegExp(r'[^\w]+'))){
			throw FormatException('Punctuation is not permitted.');	
			
		}

		if (num.length < 11 || num.length > 11){
			throw FormatException('Phone number must be less than or greater than 10');
		}

		if (num.length == 11){
			if(num[0] == '1'){
				num = num.replaceFirst('1','');
			}else{
				throw FormatException('11 digits must start with a 1');
			}
		}

		if (num[0] == '0'){
			throw FormatException('Area code cannot start with zero');
		}
	return num;
	}

}


void main(){
	String num = "113392763AA";
	try{
	print('Cleaned number : ${PhoneNumber().clean(num)}');

	}catch(e){
		print('Error: $e');
	}

}
