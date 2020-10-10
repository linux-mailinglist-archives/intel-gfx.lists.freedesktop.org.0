Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B27289D51
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Oct 2020 03:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDB86EE82;
	Sat, 10 Oct 2020 01:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587566EE82
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 01:59:54 +0000 (UTC)
IronPort-SDR: WfW7Hbhwq+qZBnqI0tmJGEwMYf0eKHEbC+jioYKYsxKBgB0HHPcpr0CezIuvbUtvLfLqQVrR+S
 YgFMIJIPEpnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165668361"
X-IronPort-AV: E=Sophos;i="5.77,357,1596524400"; d="scan'208";a="165668361"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 18:59:53 -0700
IronPort-SDR: VN1PmUm+QfPytf6YccrHMXy9raaQ34UhSIxBkGJ2QpQsD8RD+1No+xSXb4fjIFWnjbxWuK0w1O
 bvN6vYUWzCdA==
X-IronPort-AV: E=Sophos;i="5.77,357,1596524400"; d="scan'208";a="519938363"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 18:59:52 -0700
Date: Fri, 9 Oct 2020 18:59:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201010015951.GH3506452@mdroper-desk1.amr.corp.intel.com>
References: <20201009194442.3668677-1-matthew.d.roper@intel.com>
 <160228840359.25004.12379753177324526726@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160228840359.25004.12379753177324526726@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgR2Vu?=
 =?utf-8?q?12_forcewake_and_multicast_updates_=28rev2=29?=
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

On Sat, Oct 10, 2020 at 12:06:43AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Gen12 forcewake and multicast updates (rev2)
> URL   : https://patchwork.freedesktop.org/series/82359/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9121_full -> Patchwork_18668_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to dinq; thanks Jose for the review.


Matt

>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18668_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#658])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb2/igt@feature_discovery@psr2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb5/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-apl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1635] / [i915#2377])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl2/igt@gem_exec_balancer@nop.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl4/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-skl:          [PASS][7] -> [TIMEOUT][8] ([i915#2424])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl10/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-kbl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
>     - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl1/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#2346])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-snb:          [PASS][19] -> [FAIL][20] ([i915#2546])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +15 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#899])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb4/igt@kms_plane_lowres@pipe-b-tiling-none.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@core_hotunplug@unbind-rebind}:
>     - shard-iclb:         [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb6/igt@core_hotunplug@unbind-rebind.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb2/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_exec_reloc@basic-many-active@vecs0:
>     - shard-glk:          [FAIL][33] ([i915#2389]) -> [PASS][34] +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-glk1/igt@gem_exec_reloc@basic-many-active@vecs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html
> 
>   * igt@kms_cursor_legacy@all-pipes-torture-move:
>     - shard-iclb:         [DMESG-WARN][35] ([i915#128]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb5/igt@kms_cursor_legacy@all-pipes-torture-move.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb7/igt@kms_cursor_legacy@all-pipes-torture-move.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-skl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40] +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl3/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl7/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +5 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
>     - shard-tglb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][49] ([i915#1635] / [i915#31]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl1/igt@kms_setmode@basic.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl2/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-apl:          [FAIL][51] ([i915#1635]) -> [FAIL][52] ([i915#1635] / [i915#2541])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl8/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          [TIMEOUT][53] ([i915#1319] / [i915#1635]) -> [FAIL][54] ([fdo#110321] / [i915#1635])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-apl2/igt@kms_content_protection@lic.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-apl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [DMESG-FAIL][55] ([i915#1982]) -> [DMESG-WARN][56] ([i915#1982])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9121/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2377]: https://gitlab.freedesktop.org/drm/intel/issues/2377
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2541]: https://gitlab.freedesktop.org/drm/intel/issues/2541
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
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
>   * Linux: CI_DRM_9121 -> Patchwork_18668
> 
>   CI-20190529: 20190529
>   CI_DRM_9121: d78555afe196c8a1329c9813ab7fe7538263ffde @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5806: 6adb80cd84310b6d90a5259768d03ebb2c30fe50 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18668: 74565d868b44da1883b376654ac2d8e8202c49af @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18668/index.html

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
