Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A94183D162E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 20:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184C76E0D8;
	Wed, 21 Jul 2021 18:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD316E0D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 18:24:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="191074870"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="191074870"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 11:24:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="662203958"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 11:24:26 -0700
Date: Wed, 21 Jul 2021 11:24:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210721182425.GJ4174536@mdroper-desk1.amr.corp.intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <162654039289.18551.9174894699896671803@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162654039289.18551.9174894699896671803@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_workaround_updates?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 17, 2021 at 04:46:32PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: More workaround updates
> URL   : https://patchwork.freedesktop.org/series/92669/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10346_full -> Patchwork_20640_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20640_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20640_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20640_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@kms:
>     - shard-skl:          [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl6/igt@gem_eio@kms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl5/igt@gem_eio@kms.html
> 

https://gitlab.freedesktop.org/drm/intel/-/issues/3649

>   * igt@gem_request_retire@retire-vma-not-inactive:
>     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb6/igt@gem_request_retire@retire-vma-not-inactive.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb5/igt@gem_request_retire@retire-vma-not-inactive.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3697

> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-iclb:         NOTRUN -> [SKIP][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@gen9_exec_parse@bb-start-far.html
> 

Change to cmdparser version reporting wouldn't be caused by this series.
Appears to be triggered by the cmdparser changes in this series:

        https://patchwork.freedesktop.org/series/90891/



First three patches applied to gt-next, next three to intel-next.  The
final patch was split into separate GT and display halves and applied
through the corresponding trees.


Matt

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20640_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][6] ([i915#180])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-snb2/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2410])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842]) +4 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-kbl:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271]) +143 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_whisper@basic-forked-all:
>     - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2190])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][24] ([i915#2658]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
>     - shard-kbl:          NOTRUN -> [WARN][25] ([i915#2658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109289]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +109 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@i915_pm_lpsp@kms-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110892])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#2521])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3722])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110723]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [FAIL][37] ([i915#3678])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +5 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-snb2/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_color@pipe-c-ctm-max:
>     - shard-skl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl7/igt@kms_color@pipe-c-ctm-max.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl4/igt@kms_color@pipe-c-ctm-max.html
> 
>   * igt@kms_color@pipe-d-ctm-negative:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#1149])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_color@pipe-d-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3319]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278]) +11 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-dpms.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274] / [fdo#109278])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#426])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][54] -> [INCOMPLETE][55] ([i915#180])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#79]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][60] ([i915#2122]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +27 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111825]) +4 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#198] / [i915#2828])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][71] ([i915#265]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3536])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2733])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +4 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109441])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-tglb:         NOTRUN -> [FAIL][82] ([i915#132] / [i915#3467])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109502])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#2437])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2530])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@nouveau_crc@pipe-b-source-rg.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2530])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#1542])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl7/igt@perf@blocking.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl3/igt@perf@blocking.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][90] -> [FAIL][91] ([i915#1542])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@perf@polling-parameterized.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb6/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +186 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> 
>   * igt@prime_nv_test@i915_import_gtt_mmap:
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109291]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb3/igt@prime_nv_test@i915_import_gtt_mmap.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-apl8/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][96] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         [FAIL][104] ([i915#2842]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][106] ([i915#2849]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [FAIL][108] ([i915#307]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][112] ([i915#300]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][114] ([i915#2346] / [i915#533]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-panning-interruptible@d-edp1:
>     - shard-tglb:         [INCOMPLETE][116] -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-tglb6/igt@kms_flip@flip-vs-panning-interruptible@d-edp1.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-tglb1/igt@kms_flip@flip-vs-panning-interruptible@d-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [INCOMPLETE][118] ([i915#198] / [i915#2910]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-iclb:         [INCOMPLETE][120] ([i915#1185]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][122] ([fdo#108145] / [i915#265]) -> [PASS][123] +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][124] ([i915#1722]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-skl2/igt@perf@polling-small-buf.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-skl10/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][126] ([i915#2842]) -> [FAIL][127] ([i915#2852])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([i915#658])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][133], [FAIL][134]) ([i915#3002] / [i915#3363])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-kbl3/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl7/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-kbl3/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1814] / [i915#3002]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10346/shard-iclb1/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb6/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/shard-iclb6/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20640/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
