Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1CF7B6EBE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 18:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036DA10E2E7;
	Tue,  3 Oct 2023 16:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C568610E2E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 16:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696351303; x=1727887303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R6vt4PQyvRK6KD5DNU8/0pdvOCZBP4QGrEw6KtQ5wDE=;
 b=YQSUT21IHyn4fUk2kxLBmzcYu5VRWeCbl87t1yKSIJmCnX6q0ybSGsas
 V4gAV5vIiewFi611M3EX8W7YC1W/9yfSGVpmxEBI0BuYE+Lj807g/SK9s
 u0joJ3aJ/AHT5TjIuHXviGd30zYNQv4Nno5BEauc+HL0OzTdZgFHySDH+
 B4rNCqdAI3dHpgx8RhpcDuPfMbqEnQZSZvcZRodmqR9rDM8Nm5jvaV3Az
 2vz4t4zC8rmkrMmhep8Gs0eNeuVvkFdgUSKplfKYSCYGexthgzIQeMiZ1
 wXtbl6D38PaQZUKWwvYorcLboQWCQB/2QRKmaNsCNb6ZKelbMhXVppfuh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="386793211"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="386793211"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 09:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="700771496"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="700771496"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 09:41:34 -0700
Date: Tue, 3 Oct 2023 18:41:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
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

Hi,

[...]

> > +static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
> > +{
> > +	struct drm_i915_private *i915 = ggtt->vm.i915;
> > +	struct intel_gt *gt;
> > +
> > +	if (!IS_GEN9_LP(i915) && GRAPHICS_VER(i915) < 11)
> > +		gen8_ggtt_invalidate(ggtt);
> > +
> > +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> > +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc) &&
> > +		    intel_guc_is_ready(&gt->uc.guc)) {
> 
> The condition here expands to a relatively heavy one:
> 
> +#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
> +	((intel_guc_ct_enabled(&(guc)->ct)) && \
> +	 (intel_guc_submission_is_used(guc)) && \
> +	 (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))
> 
> 
> &&
> 
> static inline bool intel_guc_is_ready(struct intel_guc *guc)
> {
> 	return intel_guc_is_fw_running(guc) && intel_guc_ct_enabled(&guc->ct);
> }
> 
> intel_guc_ct_enabled is even duplicated.

Maybe this is a smaller set?

	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc) &&
	    intel_guc_is_fw_running(&gt->uc.guc))

The last condition includes intel_guc_submission_is_used() from
the macro.

> Is there scope to consolidate the parts which are platform invariant, or even runtime invariant, or at least guaranteed not to transition back and forth but one way only?
> 
> In other words, if we know during init we will want it, mark it as a flag in intel_guc or somewhere, and then at runtime do only those conditions which can transition back and forth due driver flows.
> 
> I am not saying this is performance sensitive, but in terms of elegance, readability and self-documentation the proposed version looks a bit sub-optimal to me.

Are you suggesting some PCI flag? This is actually applying only
for MTL.

> > +			guc_ggtt_ct_invalidate(gt);
> > +		} else if (GRAPHICS_VER(i915) >= 12) {
> > +			intel_uncore_write(gt->uncore,
> > +					   GEN12_GUC_TLB_INV_CR,
> > +					   GEN12_GUC_TLB_INV_CR_INVALIDATE);
> > +		} else {
> > +			intel_uncore_write(gt->uncore,
> > +					   GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> > +		}

[...]

> > -		mmio_invalidate_full(gt);
> > +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
> > +			if (intel_guc_is_ready(guc))
> > +				intel_guc_invalidate_tlb_full(guc);
> > +		} else {
> > +			/*
> > +			 * Fall back to old path if GuC is disabled.
> > +			 * This is safe because GuC is not enabled and not writing to MMIO.
> > +			 */
> 
> It is safe for intel_guc_is_ready() transitioning from false to true during GuC init? No way for some path to start issuing invalidations as that is happening?
> 
> > +			mmio_invalidate_full(gt);
> > +		}

supernitpick: as we are at this, brackets are not required.

Andi
