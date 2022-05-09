Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F8851FFA5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 16:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F135310E62D;
	Mon,  9 May 2022 14:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FA510E62D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 14:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652106478; x=1683642478;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=WHfCELv4bEAqzNWY1xypB5ICHD3R6kpnUvBcEWxrNr0=;
 b=FOB6A29CbYrijb9YGxRUbqZfdzWOakfcuuvTa6SlRHiUGey1u/LL40EH
 PN58OXCd8UZzAmacoVDNP9hb9wjr9m7z40TktWL6WAqrR3Z83WSaUGybL
 DdyjJ3HRkB8ZCzikzyEjqPkTn0Wdo5EkAIP5+UNvv2npyp0yjmcjmI9WV
 sop2pUATGOdsVb+mMRIRHBQnTU6TLVINqReZyydOMjSU21MpYOQxDawO5
 8RO2NOl2XFo0j/SLLQB2GopFLKfqS7g3t2PfJcrBcAvO6G8XzXM7azzQ0
 k8WVvwHZUKrpUJH2SzxhLdQveykkvCKfI7xzZl9zUEZ7aGvtkDoDaUG9o A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="355492942"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="355492942"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:27:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="519256780"
Received: from oanderso-mobl1.ger.corp.intel.com (HELO [10.213.217.157])
 ([10.213.217.157])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:27:52 -0700
Message-ID: <75614995-e6e0-7d04-8591-5e042ee20f4a@linux.intel.com>
Date: Mon, 9 May 2022 15:27:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220505193524.276400-1-jose.souza@intel.com>
 <20220505193524.276400-5-jose.souza@intel.com>
 <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
 <2e649496c5028a4fdbcc655308e2f8d7f965fd94.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <2e649496c5028a4fdbcc655308e2f8d7f965fd94.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device
 info
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


On 09/05/2022 15:01, Souza, Jose wrote:
> On Mon, 2022-05-09 at 14:32 +0100, Tvrtko Ursulin wrote:
>> On 05/05/2022 20:35, José Roberto de Souza wrote:
>>> No need to have this parameter in intel_device_info struct
>>> as all platforms with display version 9 or newer, haswell or broadwell
>>> supports it.
>>>
>>> As a side effect of the of removal this flag, it will not be printed
>>> in dmesg during driver load anymore and developers will have to rely
>>> on to check the macro and compare with platform being used and IP
>>> versions of it.
>>>
>>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>>>    drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>>>    drivers/gpu/drm/i915/intel_device_info.h | 1 -
>>>    3 files changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 5538564bc1d25..600d8cee272da 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -1298,7 +1298,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>    #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>>>    
>>>    #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
>>> -#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>>> +#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
>>> +					  IS_BROADWELL(dev_priv) || \
>>> +					  IS_HASWELL(dev_priv))
>>
>> This one is a bit borderline, not sure it passes Jani's criteria of
>> simplicity, which I thought was a good one. And from the OCD angle it
>> kind of sucks to expand the conditionals to all call sites (when it's
>> even called from i915_irq.c, justifiably or not I don't know).
> 
> This might increase code size but I don't believe it will case any performance impact even for interruption handling.

Probably won't, but its IMO ugly and at some point a death of thousand 
cuts come to play ie. maybe you can't measure an effect of a single 
change, but over time pointless wastage of cycles accumulates. Not 
saying that I looked whether it applies to this concrete example, just a 
general principle - if the condition is not straightforward I would 
recommend looking at the number and context of callers.

>> What is the high level motivation for this work?
> 
> Add new platforms definitions are becoming huge burden, there is too many features to check if a new platform supports each one of it, what is leading
> to platform definition errors.

How does this change help with that? That work is always required, no? 
With flags it is at least mostly centralized in one file and with this 
series some parts become spread around so you have to not even know what 
feature supports what, but also where in code to look for places which 
need to be adjusted. (Example engine reset and further issues when/if 
other macros start getting out i915_drv.h.)

> Also usually when a feature is dropped a HSD will be filed, so the person taking care of that can just adjust the macro upper platform or IP bound and
> disable it for good.

Or can equally adjust the has flags assignments at a single file.

To be clear I don't have a strong preference either way (in principle) 
at the moment, but think more consensus and discussion is needed here 
before changing it all.

Regards,

Tvrtko

>> Also, why is this in drm-intel-gt-next? :)
> 
> To reduce conflicts, moving just one of this patches around already causes conflicts.
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>
>>>    #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>>>    #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>>>    #define HAS_PSR_HW_TRACKING(dev_priv) \
>>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>> index 2dc0284629d30..a0693d9ff9cee 100644
>>> --- a/drivers/gpu/drm/i915/i915_pci.c
>>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>>> @@ -535,7 +535,6 @@ static const struct intel_device_info vlv_info = {
>>>    	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>>>    	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>>>    		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>>> -	.display.has_ddi = 1, \
>>>    	.display.has_fpga_dbg = 1, \
>>>    	.display.has_dp_mst = 1, \
>>>    	.has_rc6p = 0 /* RC6p removed-by HSW */, \
>>> @@ -683,7 +682,6 @@ static const struct intel_device_info skl_gt4_info = {
>>>    		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>>>    		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>>>    	.has_64bit_reloc = 1, \
>>> -	.display.has_ddi = 1, \
>>>    	.display.has_fpga_dbg = 1, \
>>>    	.display.fbc_mask = BIT(INTEL_FBC_A), \
>>>    	.display.has_hdcp = 1, \
>>> @@ -932,7 +930,6 @@ static const struct intel_device_info adl_s_info = {
>>>    	.dbuf.size = 4096,							\
>>>    	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>>>    		BIT(DBUF_S4),							\
>>> -	.display.has_ddi = 1,							\
>>>    	.display.has_dmc = 1,							\
>>>    	.display.has_dp_mst = 1,						\
>>>    	.display.has_dsb = 1,							\
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>>> index bef65e3f02c55..bc71ce48763ad 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>>> @@ -167,7 +167,6 @@ enum intel_ppgtt_type {
>>>    	func(cursor_needs_physical); \
>>>    	func(has_cdclk_crawl); \
>>>    	func(has_dmc); \
>>> -	func(has_ddi); \
>>>    	func(has_dp_mst); \
>>>    	func(has_dsb); \
>>>    	func(has_dsc); \
> 
