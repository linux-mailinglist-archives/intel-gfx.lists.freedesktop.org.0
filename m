Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AAF3F8D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 19:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89CC6E892;
	Thu, 26 Aug 2021 17:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168076E892
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 17:49:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="198042316"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="198042316"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 10:49:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="444660529"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 10:49:53 -0700
Date: Thu, 26 Aug 2021 10:44:44 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210826174444.GA20202@jons-linux-dev-box>
References: <20210826032327.18078-1-matthew.brost@intel.com>
 <162999462762.15048.16301274628038623814@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <162999462762.15048.16301274628038623814@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev6=29?=
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

On Thu, Aug 26, 2021 at 04:17:07PM +0000, Patchwork wrote:
> Patch Details
> 
> Series:  Clean up GuC CI failures, simplify locking, and kernel DOC (rev6)
> URL:     https://patchwork.freedesktop.org/series/93704/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html
> 
> CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20904
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_20904 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20904, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/
> index.html
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_20904:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@i915_selftest@live@hangcheck:
>       □ fi-rkl-guc: PASS -> INCOMPLETE

I've seen this locally before and after this series. I wouldn't hold of
the merge of this series because of this as I don't believe it is a
regression, just an existing instability in the stack. I haven't been
able to root cause this yet, but my initial analysis points to the GuC
losing a submission after the GuC has reset a context. Will dig into
this and hopefully get a fix after I'm back from vacation on 9/7.

Matt 

> 
> New tests
> 
> New tests have been introduced between CI_DRM_10525 and Patchwork_20904:
> 
> New IGT tests (1)
> 
>   • igt@i915_selftest@live@guc:
>       □ Statuses : 30 pass(s)
>       □ Exec time: [0.41, 5.26] s
> 
> Known issues
> 
> Here are the changes found in Patchwork_20904 that come from known issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@amdgpu/amd_cs_nop@sync-compute0:
> 
>       □ fi-kbl-soraka: NOTRUN -> SKIP (fdo#109271) +5 similar issues
>   • igt@runner@aborted:
> 
>       □ fi-rkl-guc: NOTRUN -> FAIL (i915#3928)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (40 -> 33)
> 
> Missing (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan
> fi-bdw-samus bat-jsl-1
> 
> Build changes
> 
>   • Linux: CI_DRM_10525 -> Patchwork_20904
> 
> CI-20190529: 20190529
> CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_20904: 0c1d27ac9fce7e231e7dddebcf56905e05302cae @ git://
> anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 0c1d27ac9fce drm/i915/guc: Drop static inline functions intel_guc_submission.c
> 50ada01b3d95 drm/i915/guc: Add GuC kernel doc
> 883eccfa8221 drm/i915/guc: Drop guc_active move everything into guc_state
> fa075902c938 drm/i915/guc: Move fields protected by guc->contexts_lock into sub
> structure
> a1c73c8c481a drm/i915/guc: Move GuC priority fields in context under guc_active
> f16c0554ae08 drm/i915/guc: Drop pin count check trick between sched_disable and
> re-pin
> 42ac1b77a019 drm/i915/guc: Proper xarray usage for contexts_lookup
> 9b9222998c83 drm/i915/guc: Rework and simplify locking
> 244934484f63 drm/i915/guc: Move guc_blocked fence to struct guc_state
> ba695a58136a drm/i915/guc: Release submit fence from an irq_work
> 3bd5803d5e25 drm/i915/guc: Flush G2H work queue during reset
> b87ba9121748 drm/i915: Allocate error capture in nowait context
> adb35ad83c76 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
> 97e616063006 drm/i915/guc: Don't touch guc_state.sched_state without a lock
> 1ff99308ef88 drm/i915/guc: Take context ref when cancelling request
> ff84f14ddceb drm/i915/selftests: Add initial GuC selftest for scrubbing lost
> G2H
> abd6a8884cf4 drm/i915/guc: Copy whole golden context, set engine state size of
> subset
> a19ba1f51009 drm/i915/guc: Don't enable scheduling on a banned context, guc_id
> invalid, not registered
> f29b2b338002 drm/i915/guc: Kick tasklet after queuing a request
> f577a4fdeeab drm/i915/selftests: Add a cancel request selftest that triggers a
> reset
> da3d87dfe8c5 Revert "drm/i915/gt: Propagate change in error status to children
> on unhold"
> 25273a034c8d drm/i915/guc: Workaround reset G2H is received after schedule done
> G2H
> c00d543957c2 drm/i915/guc: Process all G2H message at once in work queue
> 5b7ff1fa9e43 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding
> context
> 54cd904fa232 drm/i915/guc: Unwind context requests in reverse order
> 593f21493fda drm/i915/guc: Fix outstanding G2H accounting
> 6b511953d015 drm/i915/guc: Fix blocked context accounting
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
