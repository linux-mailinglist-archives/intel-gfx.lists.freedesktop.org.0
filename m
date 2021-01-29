Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4EB308E3D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 21:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C4C6EBB5;
	Fri, 29 Jan 2021 20:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E684E6EBB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 20:18:49 +0000 (UTC)
IronPort-SDR: h+TfBOgPqt6HP2HVZVBCC78faGKi3gGZUWyzGW+GdKFzi6qm8rVb/PvfEDbD5E8SVLnXfbNgm6
 KX4XipocJQbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="160250434"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="160250434"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 12:18:49 -0800
IronPort-SDR: zxuKxFQoOvF68G5IQn97PaSlpuNRcb4s9ubp8g0w1OI6I04iXU6DCk+H8kyVycTGtAMbdHTkJZ
 j3NeUJ1yfrWw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389437680"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 12:18:46 -0800
Date: Fri, 29 Jan 2021 22:18:06 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Message-ID: <20210129201806.GA198660@ideak-desk.fi.intel.com>
References: <20210118183143.1145707-1-imre.deak@intel.com>
 <161102081469.4865.16549658985829335691@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161102081469.4865.16549658985829335691@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Prevent_setting_the_LTTPR_LT_mode_if_no_LTTPRs_are_?=
 =?utf-8?q?detected?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 19, 2021 at 01:46:54AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Prevent setting the LTTPR LT mode if no LTTPRs are detected
> URL   : https://patchwork.freedesktop.org/series/86007/
> State : failure

Thanks for the review pushed to -din.

The failures are unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9636_full -> Patchwork_19399_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19399_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19399_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19399_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_reloc@basic-many-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

This looks like
https://gitlab.freedesktop.org/drm/intel/-/issues/2389

> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-snb4/igt@i915_pm_rps@reset.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-snb4/igt@i915_pm_rps@reset.html

There is no DP connected to this machine, so the change makes no
difference here.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19399_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-hsw:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-hsw2/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#2369] / [i915#2502])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2389])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-hsw:          NOTRUN -> [SKIP][10] ([fdo#109271]) +158 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-hsw2/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#2521])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-hsw:          NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-hsw2/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
>     - shard-skl:          NOTRUN -> [FAIL][17] ([i915#54])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#54]) +12 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
>     - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2122])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@bo-too-big@a-hdmi-a1:
>     - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@kms_flip@bo-too-big@a-hdmi-a1.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk1/igt@kms_flip@bo-too-big@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#198] / [i915#1982])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#2122]) +4 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +26 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a:
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#53])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk1/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb1/igt@kms_psr@psr2_suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][38] ([i915#658]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb6/igt@feature_discovery@psr2.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-glk:          [TIMEOUT][40] ([i915#2918]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][42] ([i915#2842]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][44] ([i915#2842]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][46] ([i915#2842]) -> [PASS][47] +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * {igt@gem_exec_fair@basic-none@vecs0}:
>     - shard-apl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * {igt@gem_exec_fair@basic-pace-share@rcs0}:
>     - shard-glk:          [FAIL][50] ([i915#2842]) -> [PASS][51] +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * {igt@gem_exec_schedule@u-fairslice@rcs0}:
>     - shard-skl:          [DMESG-WARN][52] ([i915#1610] / [i915#2803]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
>     - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +3 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
>     - shard-glk:          [DMESG-WARN][58] ([i915#118] / [i915#95]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-glk6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][60] ([i915#79]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [FAIL][62] ([i915#79]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][64] ([fdo#108145] / [i915#265]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb6/igt@kms_psr@psr2_sprite_render.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][68] ([i915#51]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl2/igt@perf@short-reads.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl2/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][70] ([i915#2684]) -> [WARN][71] ([i915#2681] / [i915#2684])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][72] ([i915#1804] / [i915#2684]) -> [WARN][73] ([i915#2684])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          [FAIL][74] ([i915#2295] / [i915#2505]) -> ([FAIL][75], [FAIL][76], [FAIL][77]) ([i915#2292] / [i915#2295])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-kbl6/igt@runner@aborted.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl3/igt@runner@aborted.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl2/igt@runner@aborted.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-kbl3/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#2029] / [i915#2295] / [i915#2426]) -> [FAIL][81] ([i915#2295])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl5/igt@runner@aborted.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl10/igt@runner@aborted.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9636/shard-skl3/igt@runner@aborted.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/shard-skl3/igt@runner@aborted.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Issues hit ####
> 
>   * spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=2:
>     - pig-glk-j5005:      NOTRUN -> [WARN][82] ([mesa#1797]) +1 similar issue
>    [82]: None
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [mesa#1797]: https://gitlab.freedesktop.org/mesa/mesa/issues/1797
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
>   * Linux: CI_DRM_9636 -> Patchwork_19399
> 
>   CI-20190529: 20190529
>   CI_DRM_9636: f560ac388c527f2f166897c9091f7b9ad652050f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19399: f21bd65b0c50affc5cbf3e239ff26377e129ae68 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19399/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
