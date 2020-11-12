Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E6C2AFFA1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 07:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3E46E12E;
	Thu, 12 Nov 2020 06:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7736E12E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 06:27:00 +0000 (UTC)
IronPort-SDR: BOJBuY03jLDfFYD9fhKoq/3RT20UfpbbN7XBXVrxLjZ4l1BeQ1KBfkYId6wIhP3wkzsOZKWqdH
 qllBhy3fgpGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="167682452"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="167682452"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 22:27:00 -0800
IronPort-SDR: 9Vr9ppYuUy+8CfWaO3PALexzCcsOlIuJ0k4r9vg19rwhHgMVuACWeMgdZs1VvxbTAmA8gSQ1Wx
 ypRlwhucYq7g==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="542129714"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 22:27:00 -0800
Date: Wed, 11 Nov 2020 22:29:21 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201112062921.GA12934@labuser-Z97X-UD5H>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <160515415468.29793.6021500623113233323@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160515415468.29793.6021500623113233323@emeril.freedesktop.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/6=5D_drm/i915/dp=3A_Some_reshufflin?=
 =?utf-8?q?g_in_mode=5Fvalid_as_prep_for_bigjoiner_modes_=28rev4=29?=
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

On Thu, Nov 12, 2020 at 04:09:14AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v5,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes (rev4)
> URL   : https://patchwork.freedesktop.org/series/83373/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9312_full -> Patchwork_18891_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18891_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18891_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18891_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_create@create-clear:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-snb2/igt@gem_create@create-clear.html

This gem_create fail looks unrelated 

> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - shard-iclb:         [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-iclb2/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-iclb5/igt@i915_pm_rpm@basic-pci-d3-state.html

This looks unrelated
Can this be marked as unrelated/ false errors so we can go ahead with upstreaming?

Manasi

> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-hsw:          ([FAIL][4], [FAIL][5]) ([i915#1436] / [i915#2439] / [i915#483]) -> ([FAIL][6], [FAIL][7]) ([i915#1436] / [i915#2439])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-hsw6/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-hsw1/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-hsw8/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-hsw6/igt@runner@aborted.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9312_full and Patchwork_18891_full:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 199 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> 
> ### New IGT tests (1) ###
> 
>   * igt@sysfs_defaults@readonly:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18891_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_whisper@basic-forked:
>     - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk8/igt@gem_exec_whisper@basic-forked.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk3/igt@gem_exec_whisper@basic-forked.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +3 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
>     - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:
>     - shard-tglb:         [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb3/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb1/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2346])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1:
>     - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1635] / [i915#1982])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-apl4/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-apl8/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#2122])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([i915#1635] / [i915#2377])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-yf:
>     - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982]) +8 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@kms_plane_lowres@pipe-a-tiling-yf.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-yf.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#1542])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk5/igt@perf@polling-parameterized.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk1/igt@perf@polling-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_create@basic:
>     - shard-snb:          [FAIL][34] ([i915#1037]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-snb7/igt@gem_exec_create@basic.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-snb2/igt@gem_exec_create@basic.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [INCOMPLETE][36] ([i915#198]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@gem_softpin@noreloc-s3.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl7/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-hsw:          [FAIL][38] ([i915#1888]) -> [PASS][39] +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-hsw8/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-hsw6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [DMESG-WARN][40] ([i915#1436] / [i915#716]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@gen9_exec_parse@allowed-all.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl7/igt@gen9_exec_parse@allowed-all.html
> 
>   * {igt@kms_async_flips@alternate-sync-async-flip}:
>     - shard-tglb:         [FAIL][42] ([i915#2521]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb1/igt@kms_async_flips@alternate-sync-async-flip.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
>     - shard-skl:          [FAIL][44] ([i915#54]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
>     - shard-apl:          [DMESG-WARN][46] ([i915#1635] / [i915#1982]) -> [PASS][47] +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-apl7/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-apl7/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
>     - shard-skl:          [DMESG-WARN][48] ([i915#1982]) -> [PASS][49] +4 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][50] ([i915#2122]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - shard-glk:          [DMESG-WARN][52] ([i915#1982]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk1/igt@kms_frontbuffer_tracking@basic.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk5/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-kbl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>     - shard-tglb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [SKIP][58] ([fdo#109441]) -> [PASS][59] +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-iclb6/igt@kms_psr@psr2_dpms.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-iclb2/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_vblank@pipe-c-query-forked-busy:
>     - shard-hsw:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61] +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-hsw6/igt@kms_vblank@pipe-c-query-forked-busy.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-hsw4/igt@kms_vblank@pipe-c-query-forked-busy.html
>     - shard-iclb:         [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-iclb7/igt@kms_vblank@pipe-c-query-forked-busy.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-iclb6/igt@kms_vblank@pipe-c-query-forked-busy.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][64] ([i915#51]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl4/igt@perf@short-reads.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl1/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-tglb:         [INCOMPLETE][66] ([i915#1436] / [i915#456]) -> [DMESG-WARN][67] ([i915#1436])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb7/igt@gem_eio@in-flight-suspend.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb2/igt@gem_eio@in-flight-suspend.html
>     - shard-glk:          [DMESG-WARN][68] ([i915#2635]) -> [INCOMPLETE][69] ([i915#2635])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk4/igt@gem_eio@in-flight-suspend.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [FAIL][70] -> [FAIL][71] ([i915#1888])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-glk8/igt@gem_exec_create@forked.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-glk2/igt@gem_exec_create@forked.html
>     - shard-hsw:          [FAIL][72] -> [FAIL][73] ([i915#1888])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-hsw8/igt@gem_exec_create@forked.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-hsw6/igt@gem_exec_create@forked.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          [SKIP][74] ([fdo#109271] / [i915#658]) -> [INCOMPLETE][75] ([i915#198])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl9/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl9/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][76] ([fdo#109349]) -> [DMESG-WARN][77] ([i915#1226])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-tglb:         [DMESG-WARN][78] ([i915#2411]) -> [DMESG-WARN][79] ([i915#1982] / [i915#2411])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-tglb:         [INCOMPLETE][80] ([i915#1436] / [i915#456]) -> [INCOMPLETE][81] ([i915#1436])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][82], [FAIL][83]) ([i915#1436] / [i915#1611] / [i915#2439] / [i915#483]) -> [FAIL][84] ([i915#1611] / [i915#2439])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl5/igt@runner@aborted.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/shard-skl6/igt@runner@aborted.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/shard-skl10/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2377]: https://gitlab.freedesktop.org/drm/intel/issues/2377
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9312 -> Patchwork_18891
> 
>   CI-20190529: 20190529
>   CI_DRM_9312: 88b74d59a27aa168f7cd2dec199c33ee71fe8bb0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5847: 8cffaebec5228a5042cc6928ac582a0589e2de3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18891: 8be57882b8f8fe53a333e8d9cf72d779096b0cd1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18891/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
