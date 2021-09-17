Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB1040F6CD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 13:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5520F6EC2B;
	Fri, 17 Sep 2021 11:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34016EC2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 11:39:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202276505"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="202276505"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 04:39:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="554608791"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 04:39:55 -0700
Date: Fri, 17 Sep 2021 14:39:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210917113951.GA729837@ideak-desk.fi.intel.com>
References: <20210914215732.67135-1-anusha.srivatsa@intel.com>
 <163166484418.30119.14153686715121127354@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163166484418.30119.14153686715121127354@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIFVw?=
 =?utf-8?q?date_to_DMC_v2=2E12_for_ADLP?=
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

On Wed, Sep 15, 2021 at 12:14:04AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Update to DMC v2.12 for ADLP
> URL   : https://patchwork.freedesktop.org/series/94675/
> State : failure

Thanks for the patch, pushed to drm-intel-next.

The failure is on SKL, an unrelated platform.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10585_full -> Patchwork_21049_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21049_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21049_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21049_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl10/igt@i915_selftest@live.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21049_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#1839])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2896])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb6/igt@gem_ctx_persistence@smoketest.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb7/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-tglb:         NOTRUN -> [SKIP][8] ([fdo#109313])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#768])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][10] ([i915#3002])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl9/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#3297]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#456])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#2856])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1937])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][16] ([i915#180])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#2411] / [i915#456])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb3/igt@i915_suspend@forcewake.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#3722]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#111614])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +55 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#111615])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#3689] / [i915#3886]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3689]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3444])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#2411] / [i915#2828] / [i915#456])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3359]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3319])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109279])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +60 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +10 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2672])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-iclb:         [PASS][44] -> [SKIP][45] ([i915#3701])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109280]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +4 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1188]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-c:
>     - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1982])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#112054])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#658])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb2/igt@kms_psr@psr2_primary_render.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb5/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180] / [i915#295])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2437])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#2530]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#1542])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb3/igt@perf@polling-parameterized.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb7/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_self_import:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109291])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@prime_nv_api@i915_self_import.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@sysfs_clients@split-25.html
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#2994]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-skl:          [TIMEOUT][72] ([i915#3063]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl2/igt@gem_eio@in-flight-1us.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [FAIL][74] ([i915#2842]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][76] ([i915#2190]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-skl:          [INCOMPLETE][78] ([i915#198]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl5/igt@gem_workarounds@suspend-resume-context.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl10/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][80] ([i915#1436] / [i915#716]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][82] ([i915#2346] / [i915#533]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][84] ([i915#2122]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][86] ([i915#79]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [INCOMPLETE][88] ([i915#456]) -> [PASS][89] +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +7 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [SKIP][92] ([i915#3701]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][96] ([fdo#109441]) -> [PASS][97] +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [FAIL][98] ([i915#1542]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb8/igt@perf@polling-parameterized.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb8/igt@perf@polling-parameterized.html
>     - shard-skl:          [FAIL][100] ([i915#1542]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl7/igt@perf@polling-parameterized.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl6/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][102] ([i915#2842]) -> [SKIP][103] ([fdo#109271])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][104] ([i915#1804] / [i915#2684]) -> [WARN][105] ([i915#2684])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          [FAIL][106] ([i915#3743]) -> [FAIL][107] ([i915#3722])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][108] ([i915#658]) -> [SKIP][109] ([i915#2920]) +3 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][110] ([i915#2920]) -> [SKIP][111] ([i915#658]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl7/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl1/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl1/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl4/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl7/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl3/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl4/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl3/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl3/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-kbl7/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl4/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl4/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl6/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl7/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl3/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl4/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl4/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-kbl1/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2029] / [i915#3002] / [i915#402]) -> ([FAIL][138], [FAIL][139]) ([i915#3002])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb8/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb5/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-tglb7/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb2/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-tglb6/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144]) ([i915#3002] / [i915#3363])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl3/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10585/shard-skl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl8/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/shard-skl9/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/iss
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21049/index.html
