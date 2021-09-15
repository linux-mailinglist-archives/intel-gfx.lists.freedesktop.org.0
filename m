Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912840CE64
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 481776EA5D;
	Wed, 15 Sep 2021 20:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50196EA5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:46:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="209653368"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="209653368"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 13:46:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="545097229"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 13:46:11 -0700
Date: Wed, 15 Sep 2021 13:46:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210915204610.GL3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210914220744.16042-1-radhakrishna.sripada@intel.com>
 <163167652478.30117.4152765579002433146@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163167652478.30117.4152765579002433146@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_parameters_=28rev2=29?=
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

On Wed, Sep 15, 2021 at 03:28:44AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Update memory bandwidth parameters (rev2)
> URL   : https://patchwork.freedesktop.org/series/94620/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10586_full -> Patchwork_21051_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21051_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21051_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21051_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@gen9_exec_parse@basic-rejected.html

<0>[  413.504583] NMI watchdog: Watchdog detected hard LOCKUP on cpu 4

and the CPU seems to be in a snd_hda_core interrupt handler at the time.
Issue not caused by adjusting the display memory bandwidth calculation
here.

> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][2] -> [SKIP][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

An ICL equivalent of
https://gitlab.freedesktop.org/drm/intel/-/issues/3701

> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-tglb:         [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

System never returned from s2idle.
https://gitlab.freedesktop.org/drm/intel/-/issues/456


Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21051_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#1839])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#3063])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb8/igt@gem_huc_copy@huc-copy.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#111656])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#768])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109289])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#2856])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@gen9_exec_parse@bb-secure.html
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#2856])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#454])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#454])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][22] ([i915#2684])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110892])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2521])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111614])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110723])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3689] / [i915#3886]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl2/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color@pipe-b-ctm-0-5:
>     - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl10/igt@kms_color@pipe-b-ctm-0-5.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl5/igt@kms_color@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#2411] / [i915#2828] / [i915#456])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3359]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3319]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109279])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278]) +6 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#109278])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#79])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#456])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#146] / [i915#198])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111825]) +17 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +7 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +6 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1188])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#112054]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@kms_plane_lowres@pipe-d-tiling-yf.html
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +40 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2920])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#658])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#132] / [i915#3467])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@kms_psr@psr2_primary_mmap_gtt.html
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109441])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([IGT#2])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#198] / [i915#2828])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109502])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2437])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@kms_writeback@writeback-check-output.html
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_writeback@writeback-check-output.html
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2437])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2530])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-c-source-rg:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2530]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@nouveau_crc@pipe-c-source-rg.html
> 
>   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109291])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-tglb:         [INCOMPLETE][81] -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-iclb:         [TIMEOUT][83] ([i915#3070]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][85] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-iclb:         [INCOMPLETE][87] ([i915#3778]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb8/igt@gem_exec_endless@dispatch@vcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb5/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][91] ([i915#2849]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-tglb:         [INCOMPLETE][93] ([i915#456]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-tglb7/igt@i915_suspend@debugfs-reader.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-tglb2/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_color@pipe-b-ctm-blue-to-red:
>     - shard-iclb:         [INCOMPLETE][95] ([i915#1149]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb1/igt@kms_color@pipe-b-ctm-blue-to-red.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb8/igt@kms_color@pipe-b-ctm-blue-to-red.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][97] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [FAIL][105] ([i915#3343]) -> [SKIP][106] ([i915#3288])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl7/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl3/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl1/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl3/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl4/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl6/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl4/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl4/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl4/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-kbl1/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl1/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl1/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl6/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl6/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl6/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl4/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl7/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl6/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl3/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl3/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl7/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-kbl4/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][130], [FAIL][131]) ([i915#1436] / [i915#3002] / [i915#3363]) -> [FAIL][132] ([i915#3002] / [i915#3363])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl10/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10586/shard-skl5/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/shard-skl5/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3288]: https://gitlab.freedesktop.org/drm/intel/issues/3288
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedeskt
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21051/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
