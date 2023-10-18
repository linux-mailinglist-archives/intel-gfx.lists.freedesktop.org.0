Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7497CD2D3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 06:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DECB10E367;
	Wed, 18 Oct 2023 04:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4B110E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 04:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697602742; x=1729138742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EnZzZnx5lO+QOAycFti2wCXh7nGqrhWJiKGAh5/Jo9Y=;
 b=Af1BXrgzpG15kN78DlY8On6yi8Ls0myevHzo65qAq21lXUd9EWkDMyBq
 7Ggg191O9QLPDjC1sHagIrAfsrdH+/SszRP0iDH8t37xt56jLrGSr+9/i
 3iThnafC7Z4ESI1uXH5LEKpZ8lxr+GJMK4HG6US851rqZMNcf5yvuR3L/
 Y3Ceyd+wbFgA5F+pD8ssZBcZXxviWCrQ3IeXgAbdEzAfOVLNpYYTnUzqK
 o5lXm0jMkYuMd546Xc2AA0CffbUoELQNeTX2vD6DM1eQFaJiOY7Fac88n
 RFi/QSQzm14RsSTUnVsAZOv2ISMcV9E49PHdAb1/Vh7nDBMvasmd5K1lx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472157382"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="472157382"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 21:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="732985845"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="732985845"
Received: from kchua1-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.248.174])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 21:18:53 -0700
Date: Wed, 18 Oct 2023 06:18:45 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZS9cpXTFe9SxoVNf@ashyti-mobl2.lan>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v17 0/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

merged in drm-intel-gt-next.

Thanks for your persistence :-)

Andi

On Tue, Oct 17, 2023 at 11:07:59AM -0700, Jonathan Cavitt wrote:
> Implement GuC-based TLB invalidations and use them on MTL.
> 
> Some complexity in the implementation was introduced early on
> and will be required for range-based TLB invalidations.
> RFC: https://patchwork.freedesktop.org/series/124922/
> 
> v2:
> - Add missing supporting patches.
> 
> v3:
> - Split suspend/resume changes and multi-gt support into separate
>   patches.
> - Only perform GuC TLB invalidation functions when supported.
> - Move intel_guc_is_enabled check function to usage location.
> - Address comments.
> 
> v4:
> - Change conditions for GuC-based tlb invalidation support
>   to a pci tag that's only active for MTL.
> - Address some FIXMEs and formatting issues.
> - Move suspend/resume changes to helper functions in intel_gt.h
> - Improve comment for ct_handle_event change.
> - Use cleaner if-else conditions.
> - Address comments.
> 
> v5:
> - Reintroduce missing change to selftest msleep duration
> - Move suspend/resume loops from intel_gt.h to intel_tlb.c,
>   making them no longer static inlines.
> - Remove superfluous blocking and error checks.
> - Move ct_handle_event exception to general case in
>   ct_process_request.
> - Explain usage of xa_alloc_cyclic_irq.
> - Modify explanation of purpose of
>   OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
> - Explain purpose of performing tlb invalidation twice in
>   intel_gt_tlb_resume_all.
> 
> v6:
> - Add this cover letter.
> - Fix explanation of purpose of
>   OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
> - s/pci tags/pci flags
> - Enable GuC TLB Invalidations separately from adding the
>   flags to do so.
> 
> v7:
> - Eliminate pci terminology from patches.
> - Order new device info flag correctly.
> - Run gen8_ggtt_invalidate in more cases, specifically when
>   GuC-based TLB invalidation is not supported.
> - Use intel_uncore_write_fw instead of intel_uncore_write
>   during guc_ggtt_invalidate.
> - Remove duplicate request message clear in ct_process_request.
> - Remove faulty tag from series.
> 
> v8:
> - Simplify cover letter contents.
> - Fix miscellaneous formatting and typos.
> - Reorder device info flags and defines.
> - Reword commit message.
> - Rename TLB invalidation enums and functions.
> - Add comments explaining confusing points.
> - Add helper function getting expected delay of CT buffer.
> - Simplify intel_guc_tlb_invalidation_done by passing computed
>   values.
> - Remove helper functions for tlb suspend and resume.
> - Move tlb suspend and resume paths to uc.
> - Split suspend/resume and wedged into two patches.
> - Clarify purpose of sleep change in tlb selftest.
> 
> v9:
> - Explain complexity of GuC TLB invalidations as required for
>   range-based TLB invalidations, which will be platformed later.
> - Fix CHECKPATCH issues.
> - Explain intel_guc_is_ready tlb invalidation skip in
>   intel_gt_invalidate_tlb_full.
> - Reword comment for unlocked xa_for_each loop in
>   intel_guc_submission_reset.
> - Report all errors in init_tlb_lookup.
> - Remove debug message from fini_tlb_lookup.
> - Use standardized interface for
>   intel_guc_tlb_invalidation_done
> - Remove spurious changes.
> - Move wake_up_all_tlb_invalidate on wedge to correct patch.
> 
> v10:
> - Add lock to tlb_lookup on guc submission reset.
> - Add comment about why timeout increased from 10 ms to 20 ms
>   by default in gt_tlb selftest.
> - Remove spurious changes.
> 
> v11:
> - Update CT size delay helper to be clearer.
> - Reorder some function declarations.
> - Clarify some comments.
> - Produce error message if attempting to free a busy wait
>   during fini_tlb_lookup.
> - Revert default sleep back to 10 ms.
> - Link to RFC.
> 
> v12:
> - Add helper for checking if GuC TLB invalidation is
>   supported and guc is ready.
> - Prevent suspend/resume actions involving GuC TLB
>   invalidations if guc is not ready.
> - Add path for INTEL_GUC_ACTION_TLB_INVALIDATION_DONE
>   to immediately process in ct_process_request after
>   it is submitted to ct_handle_event.
> 
> v13:
> - Re-add error check in intel_guc_tlb_invalidation_done
>   for invalid length.
> - Remove intel_guc_is_ready requirement from
>   wake_up_all_tlb_invalidate.
> - Align patches 3 and 4 by adding a check for GuC
>   TLB invalidation support to the former that was
>   added in the latter.
> 
> v14:
> - Re-add intel_guc_is_ready requirement to
>   wake_up_all_tlb_invalidate.
> - Move wake_up_all_tlb_invalidate from
>   intel_guc_submission_reset to the end of
>   __uc_hw_init.
> - Remove gen8_ggtt_invalidate changes, as they
>   aren't related to GuC TLB invalidation.
> - Add missing newline.
> 
> v15:
> - Move wake_up_all_tlb_invalidate from __uc_hw_init
>   to intel_guc_submission_reset_finish.
> - Change structure of wake_up_all_tlb_invalidate back to
>   the way it was in v12, since it looks better and is
>   functionally equivalent.
> - s/readd/re-add
> 
> v16:
> - Swap must_wait_woken and intel_gt_is_enabled checks
>   in guc_send_invalidate_tlb.
> 
> v17:
> - Use unsigned long instead of long unsigned int.
> - Add early guard against !intel_gt_is_enabled in
>   guc_send_invalidate_tlb.
> - Explain the purpose of both uses of intel_gt_is_enabled
>   as comments in guc_send_invalidate_tlb.
> 
> Jonathan Cavitt (6):
>   drm/i915: Add GuC TLB Invalidation device info flags
>   drm/i915/guc: Add CT size delay helper
>   drm/i915: No TLB invalidation on suspended GT
>   drm/i915: No TLB invalidation on wedged GT
>   drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
>   drm/i915: Enable GuC TLB invalidations for MTL
> 
> Prathap Kumar Valsan (1):
>   drm/i915: Define and use GuC and CTB TLB invalidation routines
> 
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  30 ++-
>  drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  23 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  38 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 233 +++++++++++++++++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_pci.c               |   1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  13 files changed, 385 insertions(+), 13 deletions(-)
> 
> -- 
> 2.25.1
