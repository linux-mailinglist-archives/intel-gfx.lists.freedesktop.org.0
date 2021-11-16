Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339B9453264
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 13:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE942883C5;
	Tue, 16 Nov 2021 12:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BEF36E94C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 12:47:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="297107489"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="297107489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 04:47:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="506418748"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 04:47:53 -0800
Date: Tue, 16 Nov 2021 14:47:50 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20211116124750.GA178748@ideak-desk.fi.intel.com>
References: <20211112190904.62920-1-imre.deak@intel.com>
 <163700831737.2948.4397152431903042272@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163700831737.2948.4397152431903042272@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_fastsets_on_TypeC_ports_following_a_non-blocking_m?=
 =?utf-8?q?odeset_=28rev2=29?=
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

On Mon, Nov 15, 2021 at 08:31:57PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix fastsets on TypeC ports following a non-blocking modeset (rev2)
> URL   : https://patchwork.freedesktop.org/series/96867/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10882_full -> Patchwork_21589_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21589_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21589_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21589_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events:
>     - shard-skl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl10/igt@kms_async_flips@async-flip-with-page-flip-events.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-events.html

The DPLL params don't change on SKL after pre-computing them, so I don't
think the issue is related to the changes.

The same test failed in previous test runs on SKL (haven't checked other
platforms), mostly nearby a
"Atomic update on pipe (A) took 354 us, max time under evasion is 250 us"

message, not sure if that's related, I can see the test failing also w/o
the message.

There is already a ticket for this:
https://gitlab.freedesktop.org/drm/intel/-/issues/2521

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21589_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][3] ([i915#3002])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@gem_create@create-massive.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl8/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglb:         NOTRUN -> [SKIP][5] ([i915#280])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#4525]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][7] ([i915#2369])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl2/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][10] ([i915#2842]) +5 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][15] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][17] ([i915#2658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][18] ([i915#2658])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#198]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl1/igt@gem_softpin@noreloc-s3.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl7/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109289])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2856]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#1904])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +80 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][28] ([i915#180])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-tglb5/igt@i915_suspend@forcewake.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111614]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3743]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([i915#3763])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111615])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689] / [i915#3886]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3689]) +6 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl3/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color@pipe-d-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +212 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl3/igt@kms_color@pipe-d-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl1/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>     - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#3444])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +62 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359]) +4 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +19 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2346])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2346] / [i915#533])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          NOTRUN -> [FAIL][59] ([i915#2346])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2122])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +6 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([i915#2122]) +3 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([i915#3701])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1188])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl8/igt@kms_hdr@bpc-switch.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl5/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#1187]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#265])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([fdo#108145] / [i915#265])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#112054])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2920]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +4 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][83] -> [SKIP][84] ([fdo#109441]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-tglb:         NOTRUN -> [FAIL][85] ([i915#132] / [i915#3467])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#31])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk5/igt@kms_setmode@basic.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk3/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180] / [i915#295])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     - shard-apl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180] / [i915#295])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2437])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2437])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#2530]) +3 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109291])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl6/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#2994])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb2/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl1/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][100] ([i915#658]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb1/igt@feature_discovery@psr2.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [INCOMPLETE][102] ([i915#2369]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl8/igt@gem_exec_capture@pi@bcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl2/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked:
>     - shard-glk:          [DMESG-WARN][108] ([i915#118]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-kbl3/igt@gem_softpin@noreloc-s3.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-kbl3/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][114] ([i915#454]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-glk:          [DMESG-FAIL][116] -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk3/igt@i915_selftest@live@gt_pm.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk5/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-tglb:         [INCOMPLETE][118] ([i915#456]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-tglb7/igt@i915_suspend@debugfs-reader.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-tglb3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - shard-skl:          [DMESG-WARN][120] ([i915#1982]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>     - shard-iclb:         [FAIL][122] ([i915#3444]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         [FAIL][124] ([i915#2346]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][126] ([i915#2346] / [i915#533]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][128] ([i915#79]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][130] ([i915#79]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [SKIP][132] ([i915#3701]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][134] ([fdo#109441]) -> [PASS][135] +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][136] ([i915#31]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10882/shard-apl2/igt@kms_setmode@basic.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/shard-apl3/igt@kms_setmode@basic.html
> 
>   * igt@perf@blocking:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21589/index.html
