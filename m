Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0380F7C4CF9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A29310E525;
	Wed, 11 Oct 2023 08:22:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1627110E4BF;
 Wed, 11 Oct 2023 08:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697012561; x=1728548561;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=aIDPrpRjLsLlIA2mALsueyh23NJ7pslNdwrT007PhY8=;
 b=BJLO5sZ2TvZPaFJN+fx2Z/Ea+JfepothzFsFgYD9AwvT5cJYjhkfvcMn
 Mu7BYBOT5sL7hiIk521UuKsMTj4dXt8/atCMq5fPkdYHLYZwKqIb0F0eL
 IHmlegppWq145SZ9xICYW871Dus3q29vB/0DCoHGyVfmj3YCmylRWVCUW
 pQ+KPEOnDU2e/i4+auFec4wBMKIKOpf4W8dBJund2vKfusiQFvyt++/Ke
 qB/DZ0z4Zvibvkj0nl21Cti9FD2gOAvcvU2Tpng7vG21+IVnzs5qqYaNb
 dRVK30LDMrWmm4WjkHZyjQmeIW1Rs6KzJPHLcI+R+PriU6yiadAsdf6zn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384461964"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384461964"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757464113"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="757464113"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO [10.213.194.149])
 ([10.213.194.149])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:22:38 -0700
Message-ID: <7c36db01-1534-535a-c1ce-71369bc5405a@linux.intel.com>
Date: Wed, 11 Oct 2023 09:22:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-5-tvrtko.ursulin@linux.intel.com>
 <20231010164336.dikudseydggrrux7@kamilkon-desk.igk.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231010164336.dikudseydggrrux7@kamilkon-desk.igk.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/4] tools/intel_gpu_top: Handle
 narrow terminals more gracefully
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/10/2023 17:43, Kamil Konieczny wrote:
> Hi Tvrtko,
> On 2023-10-10 at 12:07:14 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Instead of asserting just skip trying to print columns when terminal is
>> too narrow.
>>
>> At the same time fix some type confusion to fix calculations going huge.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/143
> 
> Did you tested this in screensaver? I mean running intel_gpu_top
> in terminal windows under X (Gnome or other) and leaving desktop
> unattanded, entering screen saver mode (possible with screen
> turned off) and then re-enabling screen?

I tested it by resizing the terminal to crazy small dimensions and 
confirmed asserts and endless printing of spaces failure modes are 
fixed. Also under the screen lock.

But no DPMS and no console screensavers.

> 
>> ---
>>   tools/intel_gpu_top.c | 12 +++++++-----
>>   1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 472ce3f13ba9..6d1397cb8214 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -926,7 +926,7 @@ static void free_display_clients(struct igt_drm_clients *clients)
>>   	free(clients);
>>   }
>>   
>> -static unsigned int n_spaces(const unsigned int n)
>> +static int n_spaces(const int n)
> --------- ^^^
> Could you make it int at your first patch touching this function?

Honestly no, can't be bothered to churn this too much. I think argument 
can be made that this patch is fixing type confusion in many places so 
hopefully you can accept it as is.

Regards,

Tvrtko

> 
> With or without this suggestion,
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> Regards,
> Kamil
> 
>>   {
>>   	static const char *spaces[] = {
>>   		" ",
>> @@ -950,7 +950,7 @@ static unsigned int n_spaces(const unsigned int n)
>>   		"                   ",
>>   #define MAX_SPACES 19
>>   	};
>> -	unsigned int i, r = n;
>> +	int i, r = n;
>>   
>>   	while (r) {
>>   		if (r > MAX_SPACES)
>> @@ -972,7 +972,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
>>   	int bar_len, i, len = max_len - 2;
>>   	const int w = 8;
>>   
>> -	assert(max_len > 0);
>> +	if (len < 2) /* For edge lines '|' */
>> +		return;
>>   
>>   	bar_len = ceil(w * percent * len / max);
>>   	if (bar_len > w * len)
>> @@ -986,6 +987,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
>>   		printf("%s", bars[i]);
>>   
>>   	len -= (bar_len + (w - 1)) / w;
>> +	if (len < 1)
>> +		return;
>>   	n_spaces(len);
>>   
>>   	putchar('|');
>> @@ -2001,8 +2004,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>>   				 4 : clients->max_name_len; /* At least "NAME" */
>>   
>>   	if (output_mode == INTERACTIVE) {
>> -		unsigned int num_active = 0;
>> -		int len;
>> +		int len, num_active = 0;
>>   
>>   		if (lines++ >= con_h)
>>   			return lines;
>> -- 
>> 2.39.2
>>
