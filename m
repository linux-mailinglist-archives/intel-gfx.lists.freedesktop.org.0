Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FFA7C4D2F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7627E10E5A3;
	Wed, 11 Oct 2023 08:31:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E0210E59A;
 Wed, 11 Oct 2023 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697013085; x=1728549085;
 h=message-id:date:mime-version:subject:from:to:references:
 in-reply-to:content-transfer-encoding;
 bh=+wnCNUGsUBXswDvYPaFpIaOUBiYIvJlFatdP0jY0mNw=;
 b=adwqxdQLbE0Xzgq9rLd8whW0OQRvgjy5am9+EBnNHxXliLBonikv2R1u
 xIOWdG9UMeSuo4VMvfQZFeBFg22PDpu0uJ0IrCn63EtEfRievy5nb4hol
 ULyqg21QnYedly55dTPAFuMby1rzLQK6V7i9n/6LPhQUlGT9Hsf8LTUHw
 mgLKjuYYMvfwwPi6cVUtszfK8vp+kL7QWXrv+UZkeDVzx4s9l9654xzaB
 rF2RnUu0gJfONrREqurHlRGiQxqGl170se+SWvmRSruEuOrtShNjipODG
 GOcLbDJd7bQ1tqIvXu76v3sGRewY1H3LrneVD1UKB1FWCyqe+5NlFYQYc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470872943"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="470872943"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="844468518"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="844468518"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO [10.213.194.149])
 ([10.213.194.149])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:31:24 -0700
Message-ID: <429810f6-d955-ebb7-89f0-79d822d0bd6c@linux.intel.com>
Date: Wed, 11 Oct 2023 09:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-5-tvrtko.ursulin@linux.intel.com>
 <20231010164336.dikudseydggrrux7@kamilkon-desk.igk.intel.com>
 <7c36db01-1534-535a-c1ce-71369bc5405a@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <7c36db01-1534-535a-c1ce-71369bc5405a@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 11/10/2023 09:22, Tvrtko Ursulin wrote:
> 
> On 10/10/2023 17:43, Kamil Konieczny wrote:
>> Hi Tvrtko,
>> On 2023-10-10 at 12:07:14 +0100, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Instead of asserting just skip trying to print columns when terminal is
>>> too narrow.
>>>
>>> At the same time fix some type confusion to fix calculations going huge.
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Closes: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/143
>>
>> Did you tested this in screensaver? I mean running intel_gpu_top
>> in terminal windows under X (Gnome or other) and leaving desktop
>> unattanded, entering screen saver mode (possible with screen
>> turned off) and then re-enabling screen?
> 
> I tested it by resizing the terminal to crazy small dimensions and 
> confirmed asserts and endless printing of spaces failure modes are 
> fixed. Also under the screen lock.
> 
> But no DPMS and no console screensavers.
> 
>>
>>> ---
>>>   tools/intel_gpu_top.c | 12 +++++++-----
>>>   1 file changed, 7 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>> index 472ce3f13ba9..6d1397cb8214 100644
>>> --- a/tools/intel_gpu_top.c
>>> +++ b/tools/intel_gpu_top.c
>>> @@ -926,7 +926,7 @@ static void free_display_clients(struct 
>>> igt_drm_clients *clients)
>>>       free(clients);
>>>   }
>>> -static unsigned int n_spaces(const unsigned int n)
>>> +static int n_spaces(const int n)
>> --------- ^^^
>> Could you make it int at your first patch touching this function?
> 
> Honestly no, can't be bothered to churn this too much. I think argument 
> can be made that this patch is fixing type confusion in many places so 
> hopefully you can accept it as is.

Ah sorry, I did make it unsigned in in a previous patch.. I will respin 
the whole series.

Regards,

Tvrtko

> 
> Regards,
> 
> Tvrtko
> 
>>
>> With or without this suggestion,
>> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>>
>> Regards,
>> Kamil
>>
>>>   {
>>>       static const char *spaces[] = {
>>>           " ",
>>> @@ -950,7 +950,7 @@ static unsigned int n_spaces(const unsigned int n)
>>>           "                   ",
>>>   #define MAX_SPACES 19
>>>       };
>>> -    unsigned int i, r = n;
>>> +    int i, r = n;
>>>       while (r) {
>>>           if (r > MAX_SPACES)
>>> @@ -972,7 +972,8 @@ print_percentage_bar(double percent, double max, 
>>> int max_len, bool numeric)
>>>       int bar_len, i, len = max_len - 2;
>>>       const int w = 8;
>>> -    assert(max_len > 0);
>>> +    if (len < 2) /* For edge lines '|' */
>>> +        return;
>>>       bar_len = ceil(w * percent * len / max);
>>>       if (bar_len > w * len)
>>> @@ -986,6 +987,8 @@ print_percentage_bar(double percent, double max, 
>>> int max_len, bool numeric)
>>>           printf("%s", bars[i]);
>>>       len -= (bar_len + (w - 1)) / w;
>>> +    if (len < 1)
>>> +        return;
>>>       n_spaces(len);
>>>       putchar('|');
>>> @@ -2001,8 +2004,7 @@ print_clients_header(struct igt_drm_clients 
>>> *clients, int lines,
>>>                    4 : clients->max_name_len; /* At least "NAME" */
>>>       if (output_mode == INTERACTIVE) {
>>> -        unsigned int num_active = 0;
>>> -        int len;
>>> +        int len, num_active = 0;
>>>           if (lines++ >= con_h)
>>>               return lines;
>>> -- 
>>> 2.39.2
>>>
