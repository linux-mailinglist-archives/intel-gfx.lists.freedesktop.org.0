Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507227C4D00
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C507910E568;
	Wed, 11 Oct 2023 08:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D00910E570
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697012666; x=1728548666;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xN3jihmrY17usuwBlk1yx92zI8FqDpejBhQd9XENbPw=;
 b=oCZPY5Aa2cn5luoy5lRU0iOILufSC+6O4iHtJ1ExEjzMP48sV+vD+H6r
 fBiKzh3S+3zqe41bx+2m0BahzVL+VJ3Pr232gS8dHokCzjaWBrywF3zDj
 IwRBuK+eSuuHb7U3skW6s3aGjb9MxF/TAtjJ7pMsIT0IlKpCQ9YFzOauj
 aM3NhJT46OO8rduGUwqgly5Dc62Q82yiRuFokC+BJffKZcSaxOeZrhFtp
 6SRpeQqEESBO6YWwNHAE2sLPvM5GcNtysxWfRXGo4bG3v7nfsSZZrT1wR
 1rwKgmGXYckESfglQwhb51AhsmRgbRsnWRk2hc5hE8c1iyjTn8dwdZzPD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384462374"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384462374"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757464465"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="757464465"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO [10.213.194.149])
 ([10.213.194.149])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:24:23 -0700
Message-ID: <d5ec3941-068a-4eaa-1a81-21596cf01050@linux.intel.com>
Date: Wed, 11 Oct 2023 09:24:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v11 0/7] drm/i915: Define and use GuC and
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/10/2023 01:02, Jonathan Cavitt wrote:
> Implement GuC-based TLB invalidations and use them on MTL.
> 
> Some complexity in the implementation was introduced early on
> and will be required for range-based TLB invalidations.
> RFC: https://patchwork.freedesktop.org/series/124922/

Thanks for demonstrating the need with an RFC again.

If there are outstanding review comments of course address those, check 
BAT and all but otherwise I am happy.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> 
> v2:
> - Add missing supporting patches.
> 
> v3:
> - Split suspend/resume changes and multi-gt support into separate
>    patches.
> - Only perform GuC TLB invalidation functions when supported.
> - Move intel_guc_is_enabled check function to usage location.
> - Address comments.
> 
> v4:
> - Change conditions for GuC-based tlb invalidation support
>    to a pci tag that's only active for MTL.
> - Address some FIXMEs and formatting issues.
> - Move suspend/resume changes to helper functions in intel_gt.h
> - Improve comment for ct_handle_event change.
> - Use cleaner if-else conditions.
> - Address comments.
> 
> v5:
> - Reintroduce missing change to selftest msleep duration
> - Move suspend/resume loops from intel_gt.h to intel_tlb.c,
>    making them no longer static inlines.
> - Remove superfluous blocking and error checks.
> - Move ct_handle_event exception to general case in
>    ct_process_request.
> - Explain usage of xa_alloc_cyclic_irq.
> - Modify explanation of purpose of
>    OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
> - Explain purpose of performing tlb invalidation twice in
>    intel_gt_tlb_resume_all.
> 
> v6:
> - Add this cover letter.
> - Fix explanation of purpose of
>    OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
> - s/pci tags/pci flags
> - Enable GuC TLB Invalidations separately from adding the
>    flags to do so.
> 
> v7:
> - Eliminate pci terminology from patches.
> - Order new device info flag correctly.
> - Run gen8_ggtt_invalidate in more cases, specifically when
>    GuC-based TLB invalidation is not supported.
> - Use intel_uncore_write_fw instead of intel_uncore_write
>    during guc_ggtt_invalidate.
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
>    values.
> - Remove helper functions for tlb suspend and resume.
> - Move tlb suspend and resume paths to uc.
> - Split suspend/resume and wedged into two patches.
> - Clarify purpose of sleep change in tlb selftest.
> 
> v9:
> - Explain complexity of GuC TLB invalidations as required for
>    range-based TLB invalidations, which will be platformed later.
> - Fix CHECKPATCH issues.
> - Explain intel_guc_is_ready tlb invalidation skip in
>    intel_gt_invalidate_tlb_full.
> - Reword comment for unlocked xa_for_each loop in
>    intel_guc_submission_reset.
> - Report all errors in init_tlb_lookup.
> - Remove debug message from fini_tlb_lookup.
> - Use standardized interface for
>    intel_guc_tlb_invalidation_done
> - Remove spurious changes.
> - Move wake_up_all_tlb_invalidate on wedge to correct patch.
> 
> v10:
> - Add lock to tlb_lookup on guc submission reset.
> - Add comment about why timeout increased from 10 ms to 20 ms
>    by default in gt_tlb selftest.
> - Remove spurious changes.
> 
> v11:
> - Update CT size delay helper to be clearer.
> - Reorder some function declarations.
> - Clarify some comments.
> - Produce error message if attempting to free a busy wait
>    during fini_tlb_lookup.
> - Revert default sleep back to 10 ms.
> - Link to RFC.
> 
> Jonathan Cavitt (6):
>    drm/i915: Add GuC TLB Invalidation device info flags
>    drm/i915/guc: Add CT size delay helper
>    drm/i915: No TLB invalidation on suspended GT
>    drm/i915: No TLB invalidation on wedged GT
>    drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
>    drm/i915: Enable GuC TLB invalidations for MTL
> 
> Prathap Kumar Valsan (1):
>    drm/i915: Define and use GuC and CTB TLB invalidation routines
> 
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   drivers/gpu/drm/i915/gt/selftest_tlb.c        |  11 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  31 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 211 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +
>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>   drivers/gpu/drm/i915/i915_pci.c               |   1 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>   13 files changed, 358 insertions(+), 14 deletions(-)
> 
