Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C26E47B7921
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 09:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC1910E342;
	Wed,  4 Oct 2023 07:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD05010E342
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 07:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696406068; x=1727942068;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HFChfotUGnGFU2dxSxyvafId1zMSKAmZUHuqx87lrBk=;
 b=IpMjq+2IUEJ2asPTllZCJONNh3Zb/09JUpEkOjXtL60Khw5mti3su1aC
 GTX7ao2SVQwKDwHtIOxsDYs9lna77OmIwU8cxPDVhqDRrEhkIJexctDTn
 aC9kfT4B7Sdjl/fFo3rUgjgkPi/cJNKENiyQSYasq7LvCLu9WMA4bHcPb
 nailWORSwV5GmTmPF7Pq6NJo1KXw21UhRx8F6oXkQLmobleyOQLqfHxcW
 iwYU6NaA3XRABU/XiYRNX58pG9GEARS2SWXuJLP0RoroWR7aCtaCDUKfy
 RoiJd4vyKfkEU9pCDkLdIC9phRrawzIOG5Nnlo908CmJ4kqerBbK01nSs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="1693794"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; 
   d="scan'208";a="1693794"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="754765737"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="754765737"
Received: from mridgewa-mobl.ger.corp.intel.com (HELO [10.213.209.90])
 ([10.213.209.90])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:54:24 -0700
Message-ID: <aa682280-8fb0-811b-f1df-aa86f67daa9c@linux.intel.com>
Date: Wed, 4 Oct 2023 08:54:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
 <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/10/2023 17:41, Andi Shyti wrote:
> Hi,
> 
> [...]
> 
>>> +static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> +{
>>> +	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	struct intel_gt *gt;
>>> +
>>> +	if (!IS_GEN9_LP(i915) && GRAPHICS_VER(i915) < 11)
>>> +		gen8_ggtt_invalidate(ggtt);
>>> +
>>> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
>>> +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc) &&
>>> +		    intel_guc_is_ready(&gt->uc.guc)) {
>>
>> The condition here expands to a relatively heavy one:
>>
>> +#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
>> +	((intel_guc_ct_enabled(&(guc)->ct)) && \
>> +	 (intel_guc_submission_is_used(guc)) && \
>> +	 (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))
>>
>>
>> &&
>>
>> static inline bool intel_guc_is_ready(struct intel_guc *guc)
>> {
>> 	return intel_guc_is_fw_running(guc) && intel_guc_ct_enabled(&guc->ct);
>> }
>>
>> intel_guc_ct_enabled is even duplicated.
> 
> Maybe this is a smaller set?
> 
> 	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc) &&
> 	    intel_guc_is_fw_running(&gt->uc.guc))
> 
> The last condition includes intel_guc_submission_is_used() from
> the macro.
> 
>> Is there scope to consolidate the parts which are platform invariant, or even runtime invariant, or at least guaranteed not to transition back and forth but one way only?
>>
>> In other words, if we know during init we will want it, mark it as a flag in intel_guc or somewhere, and then at runtime do only those conditions which can transition back and forth due driver flows.
>>
>> I am not saying this is performance sensitive, but in terms of elegance, readability and self-documentation the proposed version looks a bit sub-optimal to me.
> 
> Are you suggesting some PCI flag? This is actually applying only
> for MTL.

1)

I didn't specifically have an opinion on whether it should be a device 
info flag or in the guc struct or whatever. More knowledge of GuC state 
transitions than I have would be required for an informed decision. To 
me it just felt it raises the question if it can be simplified by 
splitting the invariant from variant and eliminating the redundant. All 
upper case macro name was also IMO wrong since we normally use those for 
static things.

I'll have a look in the latest version how it looks.

2)

Only for MTL - really? I didn't see the patch do that. Why is that?

Regards,

Tvrtko

> 
>>> +			guc_ggtt_ct_invalidate(gt);
>>> +		} else if (GRAPHICS_VER(i915) >= 12) {
>>> +			intel_uncore_write(gt->uncore,
>>> +					   GEN12_GUC_TLB_INV_CR,
>>> +					   GEN12_GUC_TLB_INV_CR_INVALIDATE);
>>> +		} else {
>>> +			intel_uncore_write(gt->uncore,
>>> +					   GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>> +		}
> 
> [...]
> 
>>> -		mmio_invalidate_full(gt);
>>> +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
>>> +			if (intel_guc_is_ready(guc))
>>> +				intel_guc_invalidate_tlb_full(guc);
>>> +		} else {
>>> +			/*
>>> +			 * Fall back to old path if GuC is disabled.
>>> +			 * This is safe because GuC is not enabled and not writing to MMIO.
>>> +			 */
>>
>> It is safe for intel_guc_is_ready() transitioning from false to true during GuC init? No way for some path to start issuing invalidations as that is happening?
>>
>>> +			mmio_invalidate_full(gt);
>>> +		}
> 
> supernitpick: as we are at this, brackets are not required.
> 
> Andi
