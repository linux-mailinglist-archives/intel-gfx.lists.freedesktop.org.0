Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1147F785A73
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 16:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8351210E423;
	Wed, 23 Aug 2023 14:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D54710E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 14:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692800839; x=1724336839;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1D5+1k/L/nyWMvcSDXJ3+Ix2P1kAqGJGBtaLoGw+YQI=;
 b=lU1pGKSBATr0zxtQ7l8RJ3/VbGJfKosLfG0ZV3LKk7jYFf3/dyCcJpUL
 uYbrsiIwAihWZat101QIbOmsx+k1FisK4QB/v/eUAkfwXd0Pfo8oGHan/
 pEQ8SjkUFJv6kCjK7PnRutG4Z2zSsxRQQ1odzVkkYph4cQHcaSKkVrEv1
 1ui2Zi+SLA45NcD8XD3RDyXyggagTe5Wy+33+V2TQYKzYjPPq3Ylg8BUz
 XpVCGxxZ7UUVGBtXhQ0JNQ7nnlWzHMPJHo0pJD1rQeX4eyEPwwj72mx0e
 u9qelF89f9RA4+bs0BgVPBHUGOSorzV6Xwl1cius01FWzV+9eYC7xwMN+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377932061"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377932061"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 07:27:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730228305"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730228305"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 07:27:17 -0700
Date: Wed, 23 Aug 2023 17:27:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZOYXVJgEliF3FErf@ideak-desk.fi.intel.com>
References: <20230822113015.41224-1-imre.deak@intel.com>
 <169279028248.16625.16327066769698119928@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169279028248.16625.16327066769698119928@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm=3A__Add_an_HPD_poll_helper?=
 =?utf-8?q?_to_reschedule_the_poll_work_=28rev2=29?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 11:31:22AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm: Add an HPD poll helper to reschedule the poll work (rev2)
> URL   : https://patchwork.freedesktop.org/series/122736/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13549_full -> Patchwork_122736v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122736v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122736v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_122736v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a3:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html

The device runtime resumed at
[  134.617965] i915 0000:03:00.0: [drm:intel_runtime_resume [i915]] Device resumed

and the hang happens during system suspend/resume later at
[  185.237746] [IGT] kms_flip: starting dynamic subtest A-HDMI-A3

so I can't see how HPD polling active only during the runtime suspended
state can relate to this.

Possible root cause:
The log of this and all other shard DG2 machines (which also have
hang failures during suspend/resume) are full of

<6>[  178.771191] pcieport 0000:00:1b.0: AER: Corrected error received: 0000:05:00.0
<4>[  178.771206] nvme 0000:05:00.0: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
<4>[  178.771208] nvme 0000:05:00.0:   device [15b7:5006] error status/mask=00000001/0000e000
<4>[  178.771211] nvme 0000:05:00.0:    [ 0] RxErr                  (First)

and in many cases suspend/resume is aborted by
[  559.312808] PM: Triggering wakeup from IRQ 122

where the above IRQ is used by
<6>[    2.667424] pcieport 0000:00:1b.0: PME: Signaling with IRQ 122
<6>[    2.667691] pcieport 0000:00:1b.0: AER: enabled with IRQ 122


Similar issues filed already for DG2:
https://gitlab.freedesktop.org/drm/intel/-/issues/7297
https://gitlab.freedesktop.org/drm/intel/-/issues/9138
https://gitlab.freedesktop.org/drm/intel/-/issues/4817

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v2/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v2/shard-dg2-5/igt@gem_workarounds@suspend-resume-context.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122754v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122746v1/shard-dg2-11/igt@i915_suspend@forcewake.html
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

>   * igt@syncobj_timeline@invalid-wait-illegal-handle:
>     - shard-mtlp:         [PASS][2] -> [DMESG-WARN][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@syncobj_timeline@invalid-wait-illegal-handle.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@syncobj_timeline@invalid-wait-illegal-handle.html

<3> [180.568104] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun: port,transcoder,

while the first runtime suspend where polling could make a difference is
only later at:
<7>[  257.340468] i915 0000:00:02.0: [drm:intel_runtime_suspend [i915]] Device suspended

So can't see how the issue would be related to the change.

The same error is also present in CI_DRM_13549:
<3>[  189.219264] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun: port,transcoder,

and in both cases possibly related to the following errors:
<3>[  189.217988] i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00100000
<3>[  189.218236] i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00100000

> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-dg2:          [FAIL][4] ([fdo#103375]) -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html

The same applies here as for the above shard-dg2-5 error; can't see how it
would relate to the changes.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122736v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8411])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8411])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-noreloc-keep-cache-simple:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271]) +92 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-snb4/igt@api_intel_bb@object-noreloc-keep-cache-simple.html
> 
>   * igt@drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#1839])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@feature_discovery@display-3x.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#1839])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_caching@writes:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#4873])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-8/igt@gem_caching@writes.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#5325])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [PASS][14] -> [INCOMPLETE][15] ([i915#6311] / [i915#7297])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-dg2:          [PASS][16] -> [FAIL][17] ([fdo#103375])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-cleanup:
>     - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#1099])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-snb4/igt@gem_ctx_persistence@legacy-engines-cleanup.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][20] -> [ABORT][21] ([i915#7975] / [i915#8213] / [i915#8398])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-4/igt@gem_eio@hibernate.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-tglu-10/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#8555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4473] / [i915#4771])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#7697])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([fdo#112283])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281]) +5 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-engines@ccs0:
>     - shard-mtlp:         [PASS][30] -> [FAIL][31] ([i915#9119]) +4 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@ccs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html
> 
>   * igt@gem_exec_schedule@preempt-engines@rcs0:
>     - shard-mtlp:         [PASS][32] -> [DMESG-FAIL][33] ([i915#8962] / [i915#9121])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@rcs0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4812])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4860]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#4613])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][38] -> [DMESG-WARN][39] ([i915#4936] / [i915#5493])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4083]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@basic-write-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4077]) +2 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-write-read.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4083])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3282]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4270]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_readwrite@read-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3282])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gem_readwrite@read-bad-handle.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8428])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4885])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#3297])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3297] / [i915#4880])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3281]) +6 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-dg2:          NOTRUN -> [FAIL][54] ([i915#3318])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#2856])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#2527])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#2856])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4881])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@load:
>     - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#6227])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-snb4/igt@i915_module_load@load.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-mtlp:         [PASS][60] -> [FAIL][61] ([i915#8691])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_backlight@fade-with-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5354] / [i915#7561])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@i915_pm_backlight@fade-with-dpms.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([fdo#109289])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][64] -> [SKIP][65] ([i915#1397]) +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - shard-dg1:          [PASS][66] -> [SKIP][67] ([i915#1397]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8925])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@i915_pm_rps@thresholds-idle@gt0.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][69] -> [DMESG-FAIL][70] ([i915#5334])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4077]) +5 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][72] ([i915#8247]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [FAIL][73] ([i915#8247]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#1769] / [i915#3555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5286])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         [PASS][76] -> [FAIL][77] ([i915#3743]) +3 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([fdo#111614])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([fdo#111615]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#5190]) +4 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([fdo#110723])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5190]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#2705])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3886] / [i915#6095]) +4 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271]) +26 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-glk7/igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#5354] / [i915#6095])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_ccs@pipe-b-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3734] / [i915#5354] / [i915#6095]) +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#6095]) +4 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-3/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3689] / [i915#3886] / [i915#5354]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#5354]) +6 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5354]) +24 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg1:          [PASS][92] -> [DMESG-WARN][93] ([i915#4423]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-18/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-14/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3689] / [i915#5354]) +9 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3742])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4087]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-12/igt@kms_cdclk@plane-scaling@pipe-c-dp-2.html
> 
>   * igt@kms_chamelium_color@ctm-0-75:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#111827])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_chamelium_color@ctm-0-75.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#7828]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#7828])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7828]) +3 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3555]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][102] ([i915#7173])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-12/igt@kms_content_protection@legacy@pipe-a-dp-2.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7118]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3555]) +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3359])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#8814])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3359])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][108] ([i915#8841]) +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#3546]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([fdo#109274] / [i915#5354]) +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][111] ([i915#2346])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4103] / [i915#4213]) +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#3555] / [i915#3840])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3637]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([fdo#111825])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#109274])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#2672])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8810])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2672]) +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([fdo#109285])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#111825] / [i915#1825]) +4 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#1825]) +5 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#8708]) +6 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3023]) +6 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#5460])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#8708]) +3 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3458]) +5 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3555] / [i915#8228]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#3555] / [i915#8228])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#4816])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [PASS][131] -> [ABORT][132] ([i915#180])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          [PASS][133] -> [DMESG-WARN][134] ([i915#180])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - shard-mtlp:         [PASS][135] -> [FAIL][136] ([i915#1623])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3555] / [i915#8806])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#6953])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][139] ([i915#8292])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][140] ([i915#8292])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5176]) +7 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#5176]) +15 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#5176]) +5 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#5235]) +3 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#5235]) +7 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#5235]) +15 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#658]) +1 similar issue
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#1072])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#1072]) +4 similar issues
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([fdo#111615] / [i915#5289])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4235])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_selftest@drm_damage:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#8661])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_selftest@drm_damage.html
> 
>   * igt@kms_selftest@drm_format:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8661])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_selftest@drm_format.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][154] -> [FAIL][155] ([IGT#2])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_sysfs_edid_timing.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#4070] / [i915#6768]) +2 similar issues
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#7387])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@perf@global-sseu-config.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#2435])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@semaphore-busy@vcs1:
>     - shard-mtlp:         NOTRUN -> [FAIL][159] ([i915#4349]) +3 similar issues
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@perf_pmu@semaphore-busy@vcs1.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3708])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2575]) +6 similar issues
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html
> 
>   * igt@v3d/v3d_submit_csd@bad-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#2575])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@v3d/v3d_submit_csd@bad-bo.html
> 
>   * igt@v3d/v3d_submit_csd@bad-flag:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([fdo#109315]) +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@v3d/v3d_submit_csd@bad-flag.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#7711])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#7711]) +3 similar issues
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#7711]) +3 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-1/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][167] ([i915#6268]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-dg1:          [TIMEOUT][169] ([i915#3778]) -> [PASS][170]
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@gem_exec_endless@dispatch@vcs0.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-17/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][171] ([i915#2842]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][173] ([i915#2842]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [FAIL][175] ([i915#2842]) -> [PASS][176] +1 similar issue
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@parallel@vcs0:
>     - shard-mtlp:         [DMESG-FAIL][177] ([i915#9121]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_fence@parallel@vcs0.html
> 
>   * igt@gem_exec_fence@parallel@vecs0:
>     - shard-mtlp:         [FAIL][179] ([i915#8957]) -> [PASS][180] +2 similar issues
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_exec_fence@parallel@vecs0.html
> 
>   * igt@gem_ppgtt@shrink-vs-evict-any:
>     - shard-rkl:          [ABORT][181] -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-4/igt@gem_ppgtt@shrink-vs-evict-any.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-7/igt@gem_ppgtt@shrink-vs-evict-any.html
> 
>   * igt@gem_spin_batch@user-each:
>     - shard-mtlp:         [DMESG-FAIL][183] ([i915#8962] / [i915#9121]) -> [PASS][184] +2 similar issues
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@gem_spin_batch@user-each.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@gem_spin_batch@user-each.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][185] ([i915#5566]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-glk8/igt@gen9_exec_parse@allowed-single.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [DMESG-WARN][187] ([i915#7061] / [i915#8617]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][189] ([i915#1397]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-dg2:          [FAIL][191] ([fdo#103375]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@i915_suspend@forcewake.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-12/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-mtlp:         [ABORT][193] ([i915#8466]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@i915_suspend@sysfs-reader.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [FAIL][195] ([i915#5138]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-mtlp:         [FAIL][197] ([i915#3743]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-apl:          [FAIL][199] ([i915#2346]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-mtlp:         [FAIL][201] ([i915#4767]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-5/igt@kms_fbcon_fbt@psr-suspend.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_getfb@getfb-addfb-different-handles:
>     - shard-mtlp:         [DMESG-WARN][203] ([i915#2017]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-mtlp-4/igt@kms_getfb@getfb-addfb-different-handles.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-mtlp-6/igt@kms_getfb@getfb-addfb-different-handles.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
>     - shard-apl:          [ABORT][205] ([i915#180]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][207] ([i915#7484]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg1:          [SKIP][209] ([i915#4565]) -> [SKIP][210] ([i915#4423] / [i915#4565])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [DMESG-WARN][211] ([i915#4936] / [i915#5493]) -> [TIMEOUT][212] ([i915#5493])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg1:          [SKIP][213] ([i915#2527]) -> [SKIP][214] ([i915#2527] / [i915#4423])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-18/igt@gen9_exec_parse@bb-secure.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-14/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglu:         [FAIL][215] ([i915#2681] / [i915#3591]) -> [WARN][216] ([i915#2681]) +1 similar issue
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - shard-tglu:         [WARN][217] ([i915#2681]) -> [FAIL][218] ([i915#2681] / [i915#3591])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-dg1:          [FAIL][219] ([i915#8346]) -> [FAIL][220] ([i915#8229])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-14/igt@i915_pm_rps@reset.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-17/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-dg2:          [SKIP][221] ([i915#7118]) -> [SKIP][222] ([i915#7118] / [i915#7162])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-5/igt@kms_content_protection@content_type_change.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-12/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg2:          [SKIP][223] ([i915#7118] / [i915#7162]) -> [SKIP][224] ([i915#7118])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg2-11/igt@kms_content_protection@mei_interface.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg2-5/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][225] ([fdo#110189] / [i915#3955]) -> [SKIP][226] ([i915#3955])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          [SKIP][227] ([fdo#109285]) -> [SKIP][228] ([fdo#109285] / [i915#4098])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][229] ([i915#4816]) -> [SKIP][230] ([i915#4070] / [i915#4816])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - shard-dg1:          [SKIP][231] ([i915#1072] / [i915#4078]) -> [SKIP][232] ([i915#1072])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-13/igt@kms_psr@cursor_plane_move.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-17/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-dg1:          [SKIP][233] ([i915#1072]) -> [SKIP][234] ([i915#1072] / [i915#4078]) +1 similar issue
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13549/shard-dg1-17/igt@kms_psr@primary_page_flip.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/shard-dg1-13/igt@kms_psr@primary_page_flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8229]: https://gitlab.freedesktop.org/drm/intel/issues/8229
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8466]: https://gitlab.freedesktop.org/drm/intel/issues/8466
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#8957]: https://gitlab.freedesktop.org/drm/intel/issues/8957
>   [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>   [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13549 -> Patchwork_122736v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13549: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122736v2: daa7b246575041e069f151cfbc69d07e321bdc01 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v2/index.html
