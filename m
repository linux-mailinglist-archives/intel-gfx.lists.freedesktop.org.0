Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B64198E1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 18:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594086E027;
	Mon, 27 Sep 2021 16:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A74089FAD
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 16:30:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="221306299"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="221306299"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 09:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="561276127"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2021 09:30:55 -0700
Received: from [10.249.134.73] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.134.73])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 18RGUstm029335
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 17:30:54 +0100
To: intel-gfx@lists.freedesktop.org
References: <20210926201005.1450-1-michal.wajdeczko@intel.com>
 <163269343593.27226.5041653792114784265@emeril.freedesktop.org>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <cd27b2eb-987a-d5e9-6f5f-99bfc8485471@intel.com>
Date: Mon, 27 Sep 2021 18:30:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <163269343593.27226.5041653792114784265@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_fixed_offset_for_PTEs_location?=
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



On 26.09.2021 23:57, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Use fixed offset for PTEs location
> URL   : https://patchwork.freedesktop.org/series/95074/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10644_full -> Patchwork_21162_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21162_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21162_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21162_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gem_migrate:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@i915_selftest@live@gem_migrate.html

unrelated, as patch impacts MMIO setup only, and this works just fine
here most likely it's just CI glitch as in the logs we can find:

Starting dynamic subtest: gem_migrate
Dynamic subtest gem_migrate: SUCCESS (5.395s)

-Michal

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21162_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-snb5/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063] / [i915#3648])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - shard-iclb:         [PASS][6] -> [INCOMPLETE][7] ([i915#3778])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb3/igt@gem_exec_endless@dispatch@vecs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb3/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842]) +2 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#456]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +204 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl6/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#658])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][19] ([i915#1886] / [i915#2291])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl4/igt@i915_suspend@forcewake.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#3722])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl3/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-hpd-with-enabled-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb3/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][32] ([i915#1319])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][33] ([i915#1319]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3444])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +35 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271]) +254 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#2346] / [i915#533])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][39] -> [INCOMPLETE][40] ([i915#180] / [i915#1982])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-dp1:
>     - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#2122])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate@c-dp1.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +37 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2733])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658]) +5 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#2920])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl6/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][59] ([i915#2410]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][61] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][63] ([i915#2842]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][65] ([i915#2842]) -> [PASS][66] +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][67] ([i915#2849]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][69] ([i915#2521]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][71] ([i915#118] / [i915#95]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][77] ([i915#2346]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [FAIL][81] ([i915#2122]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-tglb:         [INCOMPLETE][83] ([i915#456]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][85] ([i915#1188]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][89] ([i915#3288]) -> [FAIL][90] ([i915#3343])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [INCOMPLETE][92] ([i915#155])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][93] ([i915#658]) -> [SKIP][94] ([i915#2920])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][95] ([i915#2920]) -> [SKIP][96] ([i915#658]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl8/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl7/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl1/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl3/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl1/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl6/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl7/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl3/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl7/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/shard-apl8/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3288]: https://gitlab.freedesktop.org/drm/intel/issues/3288
>   [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3722]: https://gitlab.freedesktop.org/drm/intel/issues/3722
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
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
>   * Linux: CI_DRM_10644 -> Patchwork_21162
> 
>   CI-20190529: 20190529
>   CI_DRM_10644: ca294d706a72bd502f7e36b988c57fd634880b00 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21162: e144b09e7fed070dbb7b62b61a188c722856514f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21162/index.html
> 
