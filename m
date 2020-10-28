Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB7F29CE84
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 08:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06D076E489;
	Wed, 28 Oct 2020 07:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CB56E489
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 07:30:27 +0000 (UTC)
IronPort-SDR: L1w0RqXvO4hSfMSc9o9DbfdIz52poVzdg8kShlb75SxpUc0Y4wWmPdfEhsW89xvzVG9U7rSS4t
 Y5c8D6h6sf7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="185972997"
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="185972997"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 00:30:26 -0700
IronPort-SDR: MvsSXK8KoBSvZzR6t7+eizHin6gRQRm2X8ugSip/kKfDqsM4NgQd+ouBBkczraj1ifUySkAtmJ
 UyRdSneEX2FA==
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="424648467"
Received: from hharder-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.251.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 00:30:25 -0700
Date: Wed, 28 Oct 2020 00:30:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201028073023.f3m3ztrutuiayqbg@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <160385506550.21340.8048100475596786720@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160385506550.21340.8048100475596786720@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Guard_debugfs_against_i?=
 =?utf-8?q?nvalid_access_without_display?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 28, 2020 at 03:17:45AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [1/3] drm/i915: Guard debugfs against invalid access without display
>URL   : https://patchwork.freedesktop.org/series/83070/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_9206_full -> Patchwork_18782_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_18782_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_18782_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_18782_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

same signature as recent runs on skl, e.g.
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9202/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html#dmesg-warnings518

Lucas De Marchi

>
>
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * {igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile}:
>    - shard-skl:          NOTRUN -> [FAIL][3]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>
>
>New tests
>---------
>
>  New tests have been introduced between CI_DRM_9206_full and Patchwork_18782_full:
>
>### New CI tests (1) ###
>
>  * boot:
>    - Statuses : 175 pass(s)
>    - Exec time: [0.0] s
>
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_18782_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@drm_read@empty-block:
>    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk2/igt@drm_read@empty-block.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-glk4/igt@drm_read@empty-block.html
>
>  * igt@gem_softpin@noreloc-s3:
>    - shard-apl:          [PASS][6] -> [INCOMPLETE][7] ([i915#1635])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl2/igt@gem_softpin@noreloc-s3.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl6/igt@gem_softpin@noreloc-s3.html
>
>  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
>    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1635] / [i915#1982]) +3 similar issues
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl8/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#79])
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#2606]) +2 similar issues
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>    - shard-tglb:         [PASS][14] -> [DMESG-WARN][15] ([i915#2606])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
>    - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#2606])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#123]) +2 similar issues
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#123] / [i915#2606])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>
>  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
>    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +2 similar issues
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>    - shard-skl:          [PASS][26] -> [DMESG-FAIL][27] ([fdo#108145] / [i915#1982])
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>
>  * igt@kms_setmode@basic:
>    - shard-apl:          [PASS][28] -> [FAIL][29] ([i915#1635] / [i915#31])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl3/igt@kms_setmode@basic.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl2/igt@kms_setmode@basic.html
>
>  * igt@perf@blocking:
>    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1542])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@perf@blocking.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl6/igt@perf@blocking.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_exec_create@basic:
>    - shard-snb:          [INCOMPLETE][32] ([i915#82]) -> [PASS][33]
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@gem_exec_create@basic.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-snb2/igt@gem_exec_create@basic.html
>
>  * igt@gem_exec_gttfill@all:
>    - shard-glk:          [DMESG-WARN][34] ([i915#118] / [i915#95]) -> [PASS][35]
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk5/igt@gem_exec_gttfill@all.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-glk1/igt@gem_exec_gttfill@all.html
>
>  * igt@gem_exec_whisper@basic-contexts-priority:
>    - shard-iclb:         [INCOMPLETE][36] -> [PASS][37]
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb3/igt@gem_exec_whisper@basic-contexts-priority.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-iclb5/igt@gem_exec_whisper@basic-contexts-priority.html
>
>  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
>    - shard-kbl:          [FAIL][38] ([i915#2521]) -> [PASS][39]
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-kbl4/igt@kms_async_flips@async-flip-with-page-flip-events.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>    - shard-apl:          [INCOMPLETE][40] ([i915#1635]) -> [PASS][41] +1 similar issue
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>
>  * igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:
>    - shard-glk:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +1 similar issue
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
>    - shard-iclb:         [INCOMPLETE][44] ([i915#2606]) -> [PASS][45]
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>    - shard-tglb:         [INCOMPLETE][46] -> [PASS][47]
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>    - shard-skl:          [DMESG-WARN][48] ([i915#2606]) -> [PASS][49]
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
>    - shard-skl:          [INCOMPLETE][50] ([i915#123] / [i915#2606]) -> [PASS][51]
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>    - shard-skl:          [INCOMPLETE][52] ([i915#123]) -> [PASS][53] +2 similar issues
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>
>  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
>    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +2 similar issues
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl1/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
>
>  * igt@kms_plane_lowres@pipe-a-tiling-x:
>    - shard-kbl:          [DMESG-WARN][56] ([i915#165] / [i915#78]) -> [PASS][57]
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-kbl4/igt@kms_plane_lowres@pipe-a-tiling-x.html
>
>  * igt@kms_vblank@pipe-c-wait-forked-busy:
>    - shard-apl:          [DMESG-WARN][58] ([i915#1635] / [i915#1982]) -> [PASS][59] +2 similar issues
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@kms_vblank@pipe-c-wait-forked-busy.html
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl4/igt@kms_vblank@pipe-c-wait-forked-busy.html
>
>
>#### Warnings ####
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
>    - shard-iclb:         [DMESG-WARN][60] ([i915#2606]) -> [INCOMPLETE][61] ([i915#2606])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>    - shard-tglb:         [DMESG-WARN][62] ([i915#2606]) -> [INCOMPLETE][63] ([i915#2606])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [INCOMPLETE][65] ([i915#123])
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>
>  * igt@kms_frontbuffer_tracking@psr-slowdraw:
>    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [INCOMPLETE][67] ([i915#123] / [i915#2606])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-skl9/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>
>  * igt@runner@aborted:
>    - shard-apl:          ([FAIL][68], [FAIL][69]) ([i915#1611] / [i915#1635] / [i915#1814]) -> [FAIL][70] ([i915#1635] / [i915#2439])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@runner@aborted.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@runner@aborted.html
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-apl6/igt@runner@aborted.html
>    - shard-tglb:         ([FAIL][71], [FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([i915#1764] / [i915#1814] / [i915#456] / [k.org#205379]) -> ([FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#1764] / [i915#1814] / [i915#456])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb1/igt@runner@aborted.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb8/igt@runner@aborted.html
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb3/igt@runner@aborted.html
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb6/igt@runner@aborted.html
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb6/igt@runner@aborted.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb8/igt@runner@aborted.html
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb1/igt@runner@aborted.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb3/igt@runner@aborted.html
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb1/igt@runner@aborted.html
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb6/igt@runner@aborted.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb2/igt@runner@aborted.html
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb3/igt@runner@aborted.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb8/igt@runner@aborted.html
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb7/igt@runner@aborted.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb6/igt@runner@aborted.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb5/igt@runner@aborted.html
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb1/igt@runner@aborted.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb8/igt@runner@aborted.html
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb7/igt@runner@aborted.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb2/igt@runner@aborted.html
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb5/igt@runner@aborted.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb5/igt@runner@aborted.html
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb7/igt@runner@aborted.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb2/igt@runner@aborted.html
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/shard-tglb5/igt@runner@aborted.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
>  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
>  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
>  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
>  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
>  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_9206 -> Patchwork_18782
>
>  CI-20190529: 20190529
>  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>  Patchwork_18782: 3b45adb5c1be9eb28c4cbbcb34ec0676fcd62acc @ git://anongit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18782/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
