Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4BD29D148
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 18:21:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155F46E1BD;
	Wed, 28 Oct 2020 17:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B696E1BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 17:21:08 +0000 (UTC)
IronPort-SDR: 9BpXUE591xhTAF7+d0jUuU9ISQUyh4xma3qd4UY8hP3YHOacJDEbZim6GyxzG9Pok7qdHyiiEv
 tFtEFudbH7rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="147583181"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="147583181"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 10:21:08 -0700
IronPort-SDR: Xyt/wLvBBzbY+YCzzWEu4Wh38HYlSNGHziSHvw0iywsbiykDj7Q513EtpbfIb0Igi9oB/PoX0O
 EUrb9t5yfufg==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536314258"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 10:21:06 -0700
Date: Wed, 28 Oct 2020 19:21:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201028172102.GC3693479@ideak-desk.fi.intel.com>
References: <20201027160928.3665377-1-imre.deak@intel.com>
 <160386421339.21341.1022659946365952045@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160386421339.21341.1022659946365952045@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_encoder_lookup_during_PSR_atomic_check?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 28, 2020 at 05:50:13AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix encoder lookup during PSR atomic check
> URL   : https://patchwork.freedesktop.org/series/83102/
> State : success

Thanks for the review, pushed to -dinq.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9206_full -> Patchwork_18787_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18787_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile}:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-double-dmat4 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@fs-op-mult-double-dmat4.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9206_full and Patchwork_18787_full:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 200 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> 
> ### New Piglit tests (4) ###
> 
>   * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat3x4-dmat3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat4-dmat3x4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-double-dmat4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3x4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18787_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@hotrebind-lateclose:
>     - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#82])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html
> 
>   * igt@drm_read@empty-block:
>     - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk2/igt@drm_read@empty-block.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-glk6/igt@drm_read@empty-block.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@gen9_exec_parse@allowed-single.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-apl7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
>     - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2346])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
>     - shard-hsw:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-hsw6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#2606]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#2606] / [i915#750])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#123] / [i915#2606]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#123]) +4 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][27] -> [DMESG-FAIL][28] ([fdo#108145] / [i915#1982])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@cursor_render:
>     - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#2606])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@kms_psr@cursor_render.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl2/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-iclb:         [PASS][31] -> [INCOMPLETE][32] ([i915#2606]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb4/igt@kms_psr@sprite_plane_onoff.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-iclb6/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@sysfs_preempt_timeout@timeout@rcs0:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2060]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@sysfs_preempt_timeout@timeout@rcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl2/igt@sysfs_preempt_timeout@timeout@rcs0.html
> 
>   * igt@sysfs_timeslice_duration@timeout@bcs0:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1732]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@sysfs_timeslice_duration@timeout@bcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@sysfs_timeslice_duration@timeout@bcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_gttfill@all:
>     - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk5/igt@gem_exec_gttfill@all.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-glk1/igt@gem_exec_gttfill@all.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - shard-iclb:         [INCOMPLETE][39] -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb3/igt@gem_exec_whisper@basic-contexts-priority.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-iclb1/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
>     - shard-skl:          [FAIL][41] ([i915#54]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [INCOMPLETE][43] ([i915#1635]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:
>     - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
>     - shard-hsw:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-hsw4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-tglb:         [INCOMPLETE][49] -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-skl:          [DMESG-WARN][51] ([i915#2606]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-skl:          [INCOMPLETE][53] ([i915#123]) -> [PASS][54] +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
>     - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-kbl:          [DMESG-WARN][57] ([i915#165] / [i915#78]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr@cursor_blt:
>     - shard-skl:          [INCOMPLETE][59] ([i915#2606]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@kms_psr@cursor_blt.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl9/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][61] ([i915#31]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk4/igt@kms_setmode@basic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-glk7/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-query-forked-busy-hang:
>     - shard-apl:          [DMESG-WARN][63] ([i915#1635] / [i915#1982]) -> [PASS][64] +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl8/igt@kms_vblank@pipe-a-query-forked-busy-hang.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-apl3/igt@kms_vblank@pipe-a-query-forked-busy-hang.html
> 
>   
> #### Warnings ####
> 
>   * igt@core_hotunplug@hotrebind-lateclose:
>     - shard-hsw:          [FAIL][65] -> [WARN][66] ([i915#2283])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-hsw6/igt@core_hotunplug@hotrebind-lateclose.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-iclb:         [DMESG-WARN][67] ([i915#2606]) -> [INCOMPLETE][68] ([i915#2606])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
>     - shard-tglb:         [DMESG-WARN][69] ([i915#2606]) -> [INCOMPLETE][70] ([i915#2606]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [INCOMPLETE][72] ([i915#123] / [i915#2606])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@kms_frontbuffer_tracking@psr-slowdraw.html
> 
>   * igt@runner@aborted:
>     - shard-tglb:         ([FAIL][73], [FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97]) ([i915#1764] / [i915#1814] / [i915#456] / [k.org#205379]) -> ([FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([i915#1764] / [i915#1814] / [i915#456])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb6/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb8/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb3/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb1/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb8/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb1/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb3/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb6/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb7/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb2/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb5/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb3/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb7/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb2/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb3/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb7/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb8/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb5/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb5/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb1/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb2/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb6/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb6/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb8/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-tglb1/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1814]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([i915#1436] / [i915#1814])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl3/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl10/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl10/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl10/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl6/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl3/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl9/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl10/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl3/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl9/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl2/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl2/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl10/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl6/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl4/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl6/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl8/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl3/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl9/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl7/igt@runner@aborted.html
> 
>   * igt@sysfs_timeslice_duration@timeout@rcs0:
>     - shard-skl:          [DMESG-WARN][168] ([i915#1982]) -> [DMESG-FAIL][169] ([i915#1982])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>   [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
>   [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
>   [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
>   [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379
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
>   * Linux: CI_DRM_9206 -> Patchwork_18787
> 
>   CI-20190529: 20190529
>   CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18787: 8e49e14f489cee113b00ffd974180e7b1cb85ca5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18787/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
