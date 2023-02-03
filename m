Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 789446897B1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F83D10E763;
	Fri,  3 Feb 2023 11:28:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC5D10E1FE;
 Fri,  3 Feb 2023 11:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675423677; x=1706959677;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cjnGu7o6A2bkSgNlHUMiz7gVdMWrpNntNKBj7mo0DbM=;
 b=lTPkDUvYazp3h8v+j+3gc+okO6BZTivhizyAyVIEmRtVG3SUyl5s9b5D
 Ud4Nx+HqZtVeteNQbuXgDVYj8TgXrTJAwf/pS+5COL8CAU0Nvvjb9QoTc
 Yq5VueDa9Kgog7v01/gVh/twfcOrhFZIo4ZvCi7RivqHiw8h72EyrkA/T
 Kwg6eFnQ2sMudEBwgvSctsqD+dgL6FVeDLfA+0wac29Mo5DymZSO4/3sm
 D8106opB+5iY3RLcWILNw0Hhnl+F/m2GMXamY+aA0QnavV+u8mqRKeNZD
 7GcDBKqj6eGya+N14s4AUwEuAWX/+Dthc0qhhkYWQZj6WfFjDEpcBcsow A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="316719947"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="316719947"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:27:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="734323587"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="734323587"
Received: from lhime-mobl1.ger.corp.intel.com (HELO [10.213.220.100])
 ([10.213.220.100])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:27:54 -0800
Message-ID: <1ef87a22-fa43-d4b1-1b80-5c55c51d5127@linux.intel.com>
Date: Fri, 3 Feb 2023 11:27:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
 <20230203111636.4138202-4-tvrtko.ursulin@linux.intel.com>
 <Y9zuj8TH6QSF/e/D@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y9zuj8TH6QSF/e/D@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3] intel_gpu_top: Add CVS
 output format
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Caleb Callaway <caleb.callaway@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/02/2023 11:22, Ville Syrjälä wrote:
> On Fri, Feb 03, 2023 at 11:16:36AM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Add CVS output mode.
> 
> Should that be csv?

Lol at least I was consistent.. facepalm.

Regards,

Tvrtko

>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Caleb Callaway <caleb.callaway@intel.com>
>> ---
>>   man/intel_gpu_top.rst |  3 ++
>>   tools/intel_gpu_top.c | 78 +++++++++++++++++++++++++++++++++++++++++--
>>   2 files changed, 78 insertions(+), 3 deletions(-)
>>
>> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
>> index 69834756b81e..77228277b9bf 100644
>> --- a/man/intel_gpu_top.rst
>> +++ b/man/intel_gpu_top.rst
>> @@ -31,6 +31,9 @@ OPTIONS
>>   -h
>>       Show help text.
>>   
>> +-c
>> +    Output CVS formatted data.
>> +
>>   -J
>>       Output JSON formatted data.
>>   
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index a980cc7043dc..4c425ca027e3 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -1268,6 +1268,7 @@ usage(const char *appname)
>>   		"\n"
>>   		"\tThe following parameters are optional:\n\n"
>>   		"\t[-h]            Show this help text.\n"
>> +		"\t[-c]            Output CVS formatted data.\n"
>>   		"\t[-J]            Output JSON formatted data.\n"
>>   		"\t[-l]            List plain text data.\n"
>>   		"\t[-o <file|->]   Output to specified file or '-' for standard out.\n"
>> @@ -1283,6 +1284,7 @@ usage(const char *appname)
>>   static enum {
>>   	INTERACTIVE,
>>   	TEXT,
>> +	CVS,
>>   	JSON
>>   } output_mode;
>>   
>> @@ -1457,6 +1459,22 @@ text_add_member(const struct cnt_group *parent, struct cnt_item *item,
>>   	return len > 0 ? len : 0;
>>   }
>>   
>> +static unsigned int
>> +cvs_add_member(const struct cnt_group *parent, struct cnt_item *item,
>> +	       unsigned int headers)
>> +{
>> +	int len = 0;
>> +
>> +	if (headers)
>> +		fprintf(out, "%s %s", parent->display_name, item->unit);
>> +	else
>> +		len = fprintf(out, "%f",
>> +			      pmu_calc(&item->pmu->val, item->d, item->t,
>> +				       item->s));
>> +
>> +	return len > 0 ? len : 0;
>> +}
>> +
>>   static void
>>   term_open_struct(const char *name)
>>   {
>> @@ -1540,6 +1558,46 @@ print_group(struct cnt_group *grp, unsigned int headers)
>>   	return consumed;
>>   }
>>   
>> +static unsigned int cvs_count, prev_cvs_count;
>> +
>> +static void cvs_close_struct(void)
>> +{
>> +	assert(text_level > 0);
>> +	if (--text_level == 0) {
>> +		cvs_count = prev_cvs_count = 0;
>> +		text_lines++;
>> +		fputs("\n", out);
>> +		fflush(out);
>> +	}
>> +}
>> +
>> +static bool
>> +cvs_print_group(struct cnt_group *grp, unsigned int headers)
>> +{
>> +	unsigned int consumed = 0;
>> +	struct cnt_item *item;
>> +
>> +	if (!present_in_group(grp))
>> +		return false;
>> +
>> +	text_open_struct(grp->name);
>> +
>> +	for (item = grp->items; item->name; item++) {
>> +		if (!item->pmu || !item->pmu->present)
>> +			continue;
>> +
>> +		if (cvs_count != prev_cvs_count)
>> +			fprintf(out, ",");
>> +		prev_cvs_count = cvs_count++;
>> +
>> +		consumed += cvs_add_member(grp, item, headers);
>> +	}
>> +
>> +	cvs_close_struct();
>> +
>> +	return consumed;
>> +}
>> +
>>   static bool
>>   term_print_group(struct cnt_group *grp, unsigned int headers)
>>   {
>> @@ -1570,6 +1628,13 @@ static const struct print_operations text_pops = {
>>   	.print_group = print_group,
>>   };
>>   
>> +static const struct print_operations cvs_pops = {
>> +	.open_struct = text_open_struct,
>> +	.close_struct = cvs_close_struct,
>> +	.add_member = cvs_add_member,
>> +	.print_group = cvs_print_group,
>> +};
>> +
>>   static const struct print_operations term_pops = {
>>   	.open_struct = term_open_struct,
>>   	.close_struct = term_close_struct,
>> @@ -1582,11 +1647,12 @@ static bool print_groups(struct cnt_group **groups)
>>   	static bool headers_printed = false;
>>   	bool print_data = true;
>>   
>> -	if (output_mode == TEXT &&
>> +	if ((output_mode == TEXT || output_mode == CVS) &&
>>   	    (text_header_repeat || !headers_printed)) {
>> +		const unsigned int header_lines = output_mode == TEXT ? 2 : 1;
>>   		unsigned int headers = text_lines % TEXT_HEADER_REPEAT + 1;
>>   
>> -		if (headers == 1 || headers == 2)
>> +		if (headers > 0 && headers <= header_lines)
>>   			for (struct cnt_group **grp = groups; *grp; grp++)
>>   				print_data = pops->print_group(*grp, headers);
>>   
>> @@ -2469,7 +2535,7 @@ int main(int argc, char **argv)
>>   	char *codename = NULL;
>>   
>>   	/* Parse options */
>> -	while ((ch = getopt(argc, argv, "o:s:d:pJLlh")) != -1) {
>> +	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
>>   		switch (ch) {
>>   		case 'o':
>>   			output_path = optarg;
>> @@ -2483,6 +2549,9 @@ int main(int argc, char **argv)
>>   		case 'p':
>>   			physical_engines = true;
>>   			break;
>> +		case 'c':
>> +			output_mode = CVS;
>> +			break;
>>   		case 'J':
>>   			output_mode = JSON;
>>   			break;
>> @@ -2532,6 +2601,9 @@ int main(int argc, char **argv)
>>   	case TEXT:
>>   		pops = &text_pops;
>>   		break;
>> +	case CVS:
>> +		pops = &cvs_pops;
>> +		break;
>>   	case JSON:
>>   		pops = &json_pops;
>>   		break;
>> -- 
>> 2.34.1
> 
