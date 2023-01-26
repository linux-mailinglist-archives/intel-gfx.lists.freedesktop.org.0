Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BABCB67D113
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 17:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B3710E2CA;
	Thu, 26 Jan 2023 16:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB4710E2C9;
 Thu, 26 Jan 2023 16:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674749556; x=1706285556;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=HAYBNYKpwJfCMGWPvyEh1u/hO8geWx88HqcA/UHSTSk=;
 b=gSE2SR5g6DXvSClN6+Fv1QNapKquHHdVwZkgCUTY10KCSAy7TEtXCnSG
 HD+6tGVkWGmJFJRAonn50zwId0yIiqkSwpap4FCbeobUpmYFro3FWxg63
 Ujy0XSNKiaK9HW36e9y72h5l3zq0Bp0ChY0A5KdmxEaHqrDRwTudVowVD
 0g5R+Sp6n9UhftMfa5yNDQOM/Wc05XScC7S0dINSkLLVmRhyNrM8MikWY
 M027q079EmoudOaaygHYj4anQT4x6QgFKnkloXfMqr3hfNdKgbE/ISEQw
 d2i00Tofe+bxt+OGXH5ZWxKH1tdEG5UMmPLhvmrU0YcgLF8hjDlYyDNdH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="314780275"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="314780275"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:12:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="640373262"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="640373262"
Received: from kbrennan-mobl.ger.corp.intel.com (HELO [10.213.233.58])
 ([10.213.233.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:12:34 -0800
Message-ID: <b624ed98-0cbe-677c-23a8-bd06882eaad2@linux.intel.com>
Date: Thu, 26 Jan 2023 16:12:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-5-tvrtko.ursulin@linux.intel.com>
 <20230126155017.hx37o7gmvolcah5p@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230126155017.hx37o7gmvolcah5p@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/4] intel_gpu_top:
 Aggregate engine classes in all output modes
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


On 26/01/2023 15:50, Kamil Konieczny wrote:
> On 2023-01-12 at 17:47:30 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Use the same default for stdout and JSON output modes as it is for
>> interactive.
>>
>> Previously added command line switch can be used to go back to showing all
>> physical engines.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Downside with this one is that the default output for -l and -J modes 
will change. Which may result in bug reports. I am undecided on 
balance.. should have tagged it as RFC really. Thoughts?

Regards,

Tvrtko

>> ---
>>   tools/intel_gpu_top.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index e91b47baf72b..7aa233570463 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -2509,11 +2509,12 @@ int main(int argc, char **argv)
>>   	if (signal(SIGINT, sigint_handler) == SIG_ERR)
>>   		fprintf(stderr, "Failed to install signal handler!\n");
>>   
>> +	class_view = !physical_engines;
>> +
>>   	switch (output_mode) {
>>   	case INTERACTIVE:
>>   		pops = &term_pops;
>>   		interactive_stdin();
>> -		class_view = !physical_engines;
>>   		break;
>>   	case STDOUT:
>>   		pops = &stdout_pops;
>> -- 
>> 2.34.1
>>
