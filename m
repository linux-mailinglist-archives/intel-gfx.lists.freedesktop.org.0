Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF36B38E1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 09:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307AB10E983;
	Fri, 10 Mar 2023 08:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98EEA10E981
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678437442; x=1709973442;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+UX6LtwZ6eFZnBIrC8KS37hFy+cDT4LE/p1sYmPzw2I=;
 b=NPD60lCJdgeanhDpmnoK61/ifGbwdLuHc6Z22LTFjaKDsep6OvWW0Pue
 0AgvH8QhDzieHOtZhsxf4Wrgr+nK352XD3QJbIxA5XNwgEhx59uv7g4yQ
 aFb+ENzEYll9ZMrw4VaJxGsc5VDPngTRnHOwXTo/uTGbHkHn2ox3iJJE6
 eVnYe6+/INuJvySM8wgeKR1uuM8ZeFwj1HDrvYctZQ0PsSApuhQGAG5T3
 A/+0pEqXc/1qMkjzSZdkSZfcs4YVRm+A1m0VeicI7LJMcxDjXPxFk4OMY
 kTAnaS+JgC1SmXaDUm4XlqBHBE6d439sh6qW0+5ukO+5mUTf+v3wtZkyJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="422946965"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="422946965"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 00:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923579382"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923579382"
Received: from kleve-mobl1.ger.corp.intel.com (HELO [10.252.59.238])
 ([10.252.59.238])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 00:37:21 -0800
Message-ID: <8acdd087-4c49-e5c4-5f00-d76e297f4834@linux.intel.com>
Date: Fri, 10 Mar 2023 09:37:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230309165852.1251-1-nirmoy.das@intel.com>
 <ZApcxlaM6vrITILC@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <ZApcxlaM6vrITILC@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/9/2023 11:25 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Thu, Mar 09, 2023 at 05:58:52PM +0100, Nirmoy Das wrote:
>> Change the function doc to reflect updated name.
>>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index ad3413242100..83532630b639 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>>   }
>>   
>>   /**
>> - * intel_engines_init_common - initialize cengine state which might require hw access
>> + * engines_init_common - initialize engine state which might require hw access
> You had one change to make and you missed it :-D

*facepalm*


>
> /engines_init_common/engine_init_common/
>
> Andi
>
>>    * @engine: Engine to initialize.
>>    *
>>    * Initializes @engine@ structure members shared between legacy and execlists
>> -- 
>> 2.39.0
