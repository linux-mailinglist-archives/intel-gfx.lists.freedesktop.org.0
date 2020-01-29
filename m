Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C6014C7FD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 10:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582186E220;
	Wed, 29 Jan 2020 09:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07BC6E220
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 09:25:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 01:14:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="222390949"
Received: from mburkard-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.68])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 01:14:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <158025422816.20537.4895016081183268640@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1580149467.git.jani.nikula@intel.com>
 <158025422816.20537.4895016081183268640@emeril.freedesktop.org>
Date: Wed, 29 Jan 2020 11:14:09 +0200
Message-ID: <87a766aala.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29_regist?=
 =?utf-8?q?er_accessors_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: mass conversion to intel_de_*() register accessors (rev2)
> URL   : https://patchwork.freedesktop.org/series/72533/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_7827_full -> Patchwork_16283_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_16283_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16283_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_16283_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-hsw:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>
>   * igt@perf_pmu@semaphore-busy-vecs0:
>     - shard-skl:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@perf_pmu@semaphore-busy-vecs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl2/igt@perf_pmu@semaphore-busy-vecs0.html

Unrelated to the patches at hand, pushed the lot to dinq, thanks for the
acks.

BR,
Jani.



>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_16283_full that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +14 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_busy@busy-vcs1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb8/igt@gem_busy@busy-vcs1.html
>
>   * igt@gem_ctx_isolation@vcs1-none:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +4 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
>
>   * igt@gem_eio@kms:
>     - shard-snb:          [PASS][9] -> [INCOMPLETE][10] ([i915#82])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb1/igt@gem_eio@kms.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-snb5/igt@gem_eio@kms.html
>
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_exec_balancer@smoke.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb8/igt@gem_exec_balancer@smoke.html
>
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +6 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#694]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@gem_partial_pwrite_pread@write-snoop.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw4/igt@gem_partial_pwrite_pread@write-snoop.html
>
>   * igt@gem_wait@basic-await-all:
>     - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl6/igt@gem_wait@basic-await-all.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl2/igt@gem_wait@basic-await-all.html
>
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +5 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
>
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +4 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#96])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
>
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
>
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#34])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>     - shard-tglb:         [PASS][31] -> [SKIP][32] ([i915#668])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
>
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#31])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@kms_setmode@basic.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-glk7/igt@kms_setmode@basic.html
>
>   * igt@perf@oa-exponents:
>     - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#472] / [i915#807])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb5/igt@perf@oa-exponents.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-tglb1/igt@perf@oa-exponents.html
>
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [PASS][43] -> [FAIL][44] ([i915#831])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
>
>   * igt@prime_vgem@fence-wait-bsd2:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +22 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_ctx_persistence@vcs1-queued:
>     - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
>
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [SKIP][49] ([fdo#110841]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>
>   * igt@gem_eio@in-flight-suspend:
>     - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@gem_eio@in-flight-suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl4/igt@gem_eio@in-flight-suspend.html
>
>   * igt@gem_exec_parallel@vcs1-fds:
>     - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +8 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
>
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +25 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
>
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
>
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
>
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
>
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl8/igt@gem_softpin@noreloc-s3.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-apl1/igt@gem_softpin@noreloc-s3.html
>
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [FAIL][65] ([i915#447]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
>
>   * igt@i915_pm_rps@waitboost:
>     - shard-iclb:         [FAIL][67] ([i915#413]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@i915_pm_rps@waitboost.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb5/igt@i915_pm_rps@waitboost.html
>
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][69] ([i915#553] / [i915#725]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@i915_selftest@live_blt.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw5/igt@i915_selftest@live_blt.html
>
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][71] ([i915#300]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [INCOMPLETE][73] ([i915#221]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
>
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][77] ([i915#31]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl3/igt@kms_setmode@basic.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-apl6/igt@kms_setmode@basic.html
>
>   
> #### Warnings ####
>
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][79] ([fdo#109276] / [fdo#112080]) -> [FAIL][80] ([IGT#28]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
>
>   * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-hsw:          [FAIL][81] ([i915#1045]) -> [DMESG-FAIL][82] ([i915#1045])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>
>   * igt@gem_tiled_blits@interruptible:
>     - shard-hsw:          [FAIL][83] ([i915#818]) -> [FAIL][84] ([i915#694])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw7/igt@gem_tiled_blits@interruptible.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-hsw6/igt@gem_tiled_blits@interruptible.html
>
>   * igt@i915_pm_rpm@gem-evict-pwrite:
>     - shard-snb:          [SKIP][85] ([fdo#109271]) -> [INCOMPLETE][86] ([i915#82])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb6/igt@i915_pm_rpm@gem-evict-pwrite.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/shard-snb6/igt@i915_pm_rpm@gem-evict-pwrite.html
>
>   
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1045]: https://gitlab.freedesktop.org/drm/intel/issues/1045
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#807]: https://gitlab.freedesktop.org/drm/intel/issues/807
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
>
>
> Participating hosts (10 -> 10)
> ------------------------------
>
>   No changes in participating hosts
>
>
> Build changes
> -------------
>
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7827 -> Patchwork_16283
>
>   CI-20190529: 20190529
>   CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16283: 926ad0bb0b6374995ae9697bfe561eed406609d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16283/index.html

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
