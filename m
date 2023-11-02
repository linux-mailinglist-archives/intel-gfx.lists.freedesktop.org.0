Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE5E7DF8F4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 18:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F34E10E973;
	Thu,  2 Nov 2023 17:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF6310E973
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 17:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698946884; x=1730482884;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lRYvM5vrZ/ej59VXArGWg2NHl7i1HtwunofS6LWVbQ8=;
 b=SrKhOBX1KPHQo1ak8JYMISWGXUiCHeB9yGAqz9I+eZfMSpTrWMxnaoPT
 cRyRw6cZFaZ0RUKmF/23ySF6PzDJ618R5VKY2CDg7X2JARu/5+50tEwvi
 ufNckK5gfgiEpHhSYvv8xWX/xRu/mnkGCiR5SvtB0c1kvcx5mmZhTpUbs
 Plyo5xEyEzly37Ojd4p3Qf8RPhLICZjZaZLmy0IELUxnJCt8zLkkX39hc
 ibfLrkrefyLEVsPEeKpote65+YjqlVAyoFDXWoLCvxvTFHThYDaYgx6yP
 Lpg7PLfG/zh9tHTEx/wnhClyEIVv8IDyGATnn0ZV0vT8ognfb7xmfx87n g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1702813"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="1702813"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 10:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="9475030"
Received: from stevenwo-mobl1.ger.corp.intel.com (HELO [10.213.233.30])
 ([10.213.233.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 10:41:21 -0700
Message-ID: <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
Date: Thu, 2 Nov 2023 17:41:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/11/2023 16:58, Andrzej Hajda wrote:
> On 02.11.2023 17:06, Radhakrishna Sripada wrote:
>> Experiments were conducted with different multipliers to VTD_GUARD macro
>> with multiplier of 185 we were observing occasional pipe faults when
>> running kms_cursor_legacy --run-subtest single-bo
>>
>> There could possibly be an underlying issue that is being 
>> investigated, for
>> now bump the guard pages for MTL.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> index 3770828f2eaf..b65f84c6bb3f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct 
>> drm_i915_gem_object *obj,
>>       if (intel_scanout_needs_vtd_wa(i915)) {
>>           unsigned int guard = VTD_GUARD;
>> +        if (IS_METEORLAKE(i915))
>> +            guard *= 200;
>> +
> 
> 200 * VTD_GUARD = 200 * 168 * 4K = 131MB
> 
> Looks insanely high, 131MB for padding, if this is before and after it 
> becomes even 262MB of wasted address per plane. Just signalling, I do 
> not know if this actually hurts.

Yeah this feels crazy. There must be some other explanation which is 
getting hidden by the crazy amount of padding so I'd rather we figured 
it out.

With 262MiB per fb how many fit in GGTT before eviction hits? N screens 
with double/triple buffering?

Regards,

Tvrtko

P.S. Where did the 185 from the commit message come from?
