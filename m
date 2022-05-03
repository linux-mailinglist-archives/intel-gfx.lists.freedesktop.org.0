Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BFF518B2A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 19:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D230E112119;
	Tue,  3 May 2022 17:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A19112119
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 17:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651599183; x=1683135183;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=s6GgNV0+ac0ENmEBIeHDIuDWFUUMR3vdPb5KogqkrEM=;
 b=K/kwsLJvxo1pHSVywuCMseZ1hPQZXiAQTKGt1kFa3j7zWgmFYITfQJ63
 9w9taCtlG202KV1J4Lvb2Y/s4/Cof2dihmFS0spcO8nzFF+AvyTg59pSc
 w/fRpyuzgesd9yp6CvyGYnQmUEU54QZJuX9T/izsveLVbHU9tR6rdeGtD
 GvqEdZvNJR8kOu92GDbzpEQxFkQ3G0iRAbXtPxGIHDSMECDIglI7gwjJt
 qB9rvm33bbVhupoxZbBY7nrgIXo8IFT5Y6tq69xLcgVv7ots0+IEMmuex
 g2K0Oa/qOsgfWEYYx92+o62oNVSdiFPw8HJjsZOtyXKn2cSmwk+CoUGv9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330526010"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="330526010"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 10:33:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599158310"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 10:33:00 -0700
Date: Tue, 3 May 2022 10:32:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YnFnS3mkB8yC47nk@mdroper-desk1.amr.corp.intel.com>
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
 <165153231273.28134.10169931457493103200@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165153231273.28134.10169931457493103200@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 02, 2022 at 10:58:32PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Introduce Ponte Vecchio
> URL   : https://patchwork.freedesktop.org/series/103443/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11588_full -> Patchwork_103443v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103443v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103443v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103443v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl4/igt@i915_pm_rpm@system-suspend-modeset.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@i915_pm_rpm@system-suspend-modeset.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3614

> 
>   * {igt@kms_concurrent@pipe-b@hdmi-a-3} (NEW):
>     - {shard-dg1}:        NOTRUN -> [CRASH][3] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-dg1-18/igt@kms_concurrent@pipe-b@hdmi-a-3.html

https://gitlab.freedesktop.org/drm/intel/-/issues/4886

> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-tglb:         [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

No obvious warnings/errors.  Maybe the same as
https://gitlab.freedesktop.org/drm/intel/-/issues/5756 ?


None of the changes here are caused by the PVC series.  I'm going to
apply patch #1 to drm-intel-gt-next to get the ball rolling on having
the basic IS_PONTEVECCHIO() definition in the tree (which will help cut
down on future cross-tree dependencies).

We'll hold off on applying any of the others until after the next
drm-intel-gt-next pull requests gets sent.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rpm@gem-evict-pwrite:
>     - {shard-rkl}:        [PASS][6] -> [INCOMPLETE][7] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-5/igt@i915_pm_rpm@gem-evict-pwrite.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-5/igt@i915_pm_rpm@gem-evict-pwrite.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][8] +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-dg1-18/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@i915_selftest@live:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][9]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-5/igt@i915_selftest@live.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11588_full and Patchwork_103443v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_concurrent@pipe-a@hdmi-a-3:
>     - Statuses : 1 crash(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_concurrent@pipe-b@hdmi-a-3:
>     - Statuses : 1 crash(s)
>     - Exec time: [0.04] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103443v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-skl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#1839])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][13] ([i915#5076] / [i915#5614])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][23] ([i915#4991])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109289])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#2521])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#5286])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1888]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3319])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#5691])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#2346]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +50 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#79])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +5 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#4939])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +27 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109280] / [fdo#111825]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#132] / [i915#3467])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +75 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2437])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-apl:          [PASS][61] -> [FAIL][62] ([i915#5639])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@perf@polling-parameterized.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl8/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109291])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@prime_nv_api@i915_nv_import_twice.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-skl:          [PASS][65] -> [WARN][66] ([i915#4055])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1731])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][69] ([i915#5784]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb3/igt@gem_eio@unwedge-stress.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb7/igt@gem_eio@unwedge-stress.html
>     - shard-iclb:         [TIMEOUT][71] ([i915#3070]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb6/igt@gem_eio@unwedge-stress.html
>     - {shard-rkl}:        [TIMEOUT][73] ([i915#3063]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-6/igt@gem_eio@unwedge-stress.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][75] ([i915#4525]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][77] ([i915#2842]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][81] ([i915#2842]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][83] ([i915#2842]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-rkl}:        [FAIL][85] ([i915#2842]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {shard-rkl}:        [FAIL][87] ([fdo#103375]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-4/igt@gem_exec_suspend@basic-s0@smem.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - {shard-rkl}:        [INCOMPLETE][89] ([i915#5080]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-1/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@gem_softpin@noreloc-s3.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl7/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][95] ([i915#454]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - {shard-rkl}:        [FAIL][97] ([i915#4016]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-5/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - {shard-dg1}:        [SKIP][99] ([i915#2575]) -> [PASS][100] +11 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-dg1-16/igt@i915_query@query-topology-coherent-slice-mask.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-dg1-12/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-kbl:          [INCOMPLETE][101] ([i915#794]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@i915_selftest@live@execlists.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl1/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][103] ([i915#5591]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb8/igt@i915_selftest@live@hangcheck.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@perf@request:
>     - shard-kbl:          [INCOMPLETE][105] -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@i915_selftest@perf@request.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@i915_selftest@perf@request.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-skl:          [INCOMPLETE][107] ([i915#4939]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_legacy@pipe-c-forked-bo:
>     - {shard-rkl}:        [SKIP][109] ([i915#4070]) -> [PASS][110] +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-forked-bo.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-forked-bo.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][111] ([i915#79]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][113] ([i915#4911]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][115] ([i915#3701]) -> [PASS][116] +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [FAIL][117] ([i915#1188]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120] +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][121] ([i915#5519]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@perf@polling:
>     - {shard-dg1}:        [SKIP][123] ([i915#5608]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-dg1-16/igt@perf@polling.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-dg1-12/igt@perf@polling.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][125] ([i915#5639]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl10/igt@perf@polling-parameterized.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl7/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [DMESG-WARN][127] ([i915#1982]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl9/igt@perf_pmu@module-unload.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl7/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][129] ([i915#4525]) -> [DMESG-WARN][130] ([i915#5614]) +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][131] ([i915#180]) -> [FAIL][132] ([i915#4767])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-a-edp-1-downscale-with-rotation:
>     - shard-skl:          [SKIP][133] ([fdo#109271] / [i915#1888]) -> [SKIP][134] ([fdo#109271])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-skl7/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-a-edp-1-downscale-with-rotation.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-skl9/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-a-edp-1-downscale-with-rotation.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716] / [i915#92]) -> ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl4/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl3/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl6/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-kbl1/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl1/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl3/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl4/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl3/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl1/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl6/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl3/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl4/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl2/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/shard-apl7/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl8/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl4/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl6/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl1/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl8/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl2/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl4/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/shard-apl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4055]: https://gitlab.freedesktop.org/drm/intel/issues/4055
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5501]: https://gitlab.freedesktop.org/drm/intel/issues/5501
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11588 -> Patchwork_103443v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11588: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103443v1: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
