Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36D441B08
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 13:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510E89FC8;
	Mon,  1 Nov 2021 12:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1784689FC8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 12:15:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="230953009"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="230953009"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 05:15:58 -0700
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="500019015"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 05:15:57 -0700
Date: Mon, 1 Nov 2021 14:15:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211101121553.GA3367933@ideak-desk.fi.intel.com>
References: <20211006204547.669464-1-anusha.srivatsa@intel.com>
 <163546034594.4342.15802191645879463581@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163546034594.4342.15802191645879463581@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/display/dmc=3A_Add_Support_for_PipeC_and_PipeD_DMC_=28rev2=29?=
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

On Thu, Oct 28, 2021 at 10:32:25PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915/display/dmc: Add Support for PipeC and PipeD DMC (rev2)
> URL   : https://patchwork.freedesktop.org/series/95532/
> State : success

Thanks for the patch, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10807_full -> Patchwork_21477_full
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
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21477_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][3] ([i915#2846])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][6] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-apl:          [PASS][9] -> [SKIP][10] ([fdo#109271])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1436] / [i915#716])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#456])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-tglb5/igt@i915_suspend@debugfs-reader.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-tglb7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][20] ([i915#4272])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_async_flips@crc.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +114 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +195 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271]) +39 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-snb5/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][34] ([i915#1319]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#533]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl3/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
>     - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#118])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109274])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([i915#3701])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +51 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-skl:          [PASS][49] -> [INCOMPLETE][50] ([i915#198] / [i915#2828])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#4184] / [i915#456])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][53] ([i915#180]) +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][58] ([i915#265])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#265])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#3536])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#658])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109441])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([IGT#2])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@universal-plane-gen9-features-pipe-d:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-d.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2437])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1542])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl6/igt@perf@polling-parameterized.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl9/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_test@i915_import_gtt_mmap:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109291])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb7/igt@prime_nv_test@i915_import_gtt_mmap.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl7/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl3/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][77] ([i915#658]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb5/igt@feature_discovery@psr2.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +7 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][83] ([i915#2842]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][85] ([i915#2842]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-kbl:          [SKIP][87] ([fdo#109271]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][89] ([i915#454]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][91] ([i915#3921]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-snb2/igt@i915_selftest@live@hangcheck.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +8 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_color@pipe-b-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][95] ([i915#1982]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          [INCOMPLETE][97] ([i915#2828]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>     - shard-kbl:          [INCOMPLETE][99] ([i915#4393]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-iclb:         [SKIP][103] ([i915#3701]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][105] ([i915#1188]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][107] ([fdo#108145] / [i915#265]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +3 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][111] ([i915#4281]) -> [FAIL][112] ([i915#4275])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([i915#658]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920]) +2 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602] / [i915#92]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#92])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl3/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl1/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl3/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl1/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-kbl7/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl6/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][148], [FAIL][149], [FAIL][150]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl4/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl8/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl2/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl8/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl8/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-apl4/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl4/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl6/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-apl8/igt@runner@aborted.html
>     - shard-skl:          [FAIL][151] ([i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][152], [FAIL][153]) ([i915#1436] / [i915#3002] / [i915#3363] / [i915#4312])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10807/shard-skl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl7/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/shard-skl10/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21477/index.html
