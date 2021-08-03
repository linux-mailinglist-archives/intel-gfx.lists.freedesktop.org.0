Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F58B3DEF51
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 15:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FE96E131;
	Tue,  3 Aug 2021 13:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF366E131
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 13:51:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="211824570"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="211824570"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 06:51:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="667228854"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 06:51:14 -0700
Date: Tue, 3 Aug 2021 16:51:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210803135110.GD2134954@ideak-desk.fi.intel.com>
References: <20210802190148.2099625-1-imre.deak@intel.com>
 <162799248591.9818.13431437874370433399@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <162799248591.9818.13431437874370433399@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_CMTG_clock_disabling_WA_while_DPLL0_is_enabled?=
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

On Tue, Aug 03, 2021 at 12:08:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Apply CMTG clock disabling WA while DPLL0 is enabled
> URL   : https://patchwork.freedesktop.org/series/93318/
> State : failure

Pushed to -din, thanks for the review. The DPLL0 dependecy was confirmed
on the HSD, there is also some hint about this at
https://gfxspecs.intel.com/Predator/Home/Index/49262 :

"""
Programming Considerations
1. Follow the port clock programming to setup and lock the PLL.
2. Ensure PG1 (source of RM bus cycles) is enabled.
"""

and

"CMTG will run on DPLL0 clock"

Even though enabling this WA is not a CMTG "Programming" imo, but maybe
they'll also update the WA description.


This patch is ADL-P specific so the TGL failure is unrelated.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10440_full -> Patchwork_20762_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20762_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20762_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20762_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20762_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-snb6/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-iclb:         [PASS][4] -> [TIMEOUT][5] ([i915#3070]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][6] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +4 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118] / [i915#95])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3323])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl2/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#3318])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271]) +212 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-snb6/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +99 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][24] ([i915#3722])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-iclb:         [PASS][25] -> [DMESG-WARN][26] ([i915#3621])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3763])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-negative:
>     - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-c-gamma:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb7/igt@kms_color_chamelium@pipe-c-gamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][34] ([i915#1319])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([i915#2346] / [i915#533])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111825]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb7/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][37] ([i915#79])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][38] ([i915#3699])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#2587])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +235 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
>     - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#2546])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb3/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb3/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +9 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          NOTRUN -> [FAIL][44] ([i915#1188])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +7 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][48] ([fdo#108145] / [i915#265]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][49] ([i915#265])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658]) +3 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#658]) +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb6/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb6/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][56] ([i915#180])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2437])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#2530])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb7/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#1542])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk6/igt@perf@polling-parameterized.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk7/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl1/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@read:
>     - {shard-rkl}:        [SKIP][62] ([i915#2582]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@fbdev@read.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@gem_create@create-clear:
>     - shard-glk:          [FAIL][64] ([i915#1888] / [i915#3160]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk5/igt@gem_create@create-clear.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk6/igt@gem_create@create-clear.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][66] ([i915#2410]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-apl6/igt@gem_eio@in-flight-suspend.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-apl8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-rkl}:        [FAIL][70] ([i915#3115]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@gem_eio@reset-stress.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][72] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][74] ([i915#2846]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
>     - shard-glk:          [FAIL][76] ([i915#2846]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk5/igt@gem_exec_fair@basic-deadline.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [FAIL][78] ([i915#2842]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-kbl:          [SKIP][82] ([fdo#109271]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - {shard-rkl}:        [FAIL][84] ([i915#2842]) -> [PASS][85] +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [FAIL][86] ([i915#307]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@i915_pm_rpm@sysfs-read:
>     - {shard-rkl}:        [SKIP][88] ([i915#3844] / [i915#579]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html
> 
>   * igt@i915_selftest@live@execlists:
>     - {shard-rkl}:        [DMESG-FAIL][90] ([i915#1993]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-1/igt@i915_selftest@live@execlists.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-1/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-kbl1/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
>     - {shard-rkl}:        [SKIP][94] ([fdo#111614]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-1/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][96] ([i915#3638]) -> [PASS][97] +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][98] ([i915#3721]) -> [PASS][99] +4 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][100] ([i915#3678]) -> [PASS][101] +5 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - {shard-rkl}:        [SKIP][102] ([i915#1149] / [i915#1849]) -> [PASS][103] +2 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - {shard-rkl}:        [SKIP][104] ([fdo#112022]) -> [PASS][105] +9 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - {shard-rkl}:        [SKIP][106] ([fdo#111825]) -> [PASS][107] +9 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
>     - shard-iclb:         [SKIP][108] ([i915#3788]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb6/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
>     - {shard-rkl}:        [SKIP][110] ([fdo#111314]) -> [PASS][111] +6 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - {shard-rkl}:        [SKIP][112] ([fdo#110189]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
>     - {shard-rkl}:        [SKIP][114] ([i915#1849]) -> [PASS][115] +37 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - {shard-rkl}:        [SKIP][116] ([i915#1849] / [i915#3180]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-c-tiling-none:
>     - {shard-rkl}:        [SKIP][120] ([i915#3558]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html
> 
>   * igt@kms_psr@no_drrs:
>     - {shard-rkl}:        [SKIP][122] ([i915#1072]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_psr@no_drrs.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][124] ([fdo#109441]) -> [PASS][125] +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-c-wait-busy:
>     - {shard-rkl}:        [SKIP][126] ([i915#1845]) -> [PASS][127] +17 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@kms_vblank@pipe-c-wait-busy.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-6/igt@kms_vblank@pipe-c-wait-busy.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][128] ([i915#1542]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-skl9/igt@perf@polling-parameterized.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl5/igt@perf@polling-parameterized.html
>     - shard-tglb:         [FAIL][130] ([i915#1542]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-tglb1/igt@perf@polling-parameterized.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-tglb5/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [FAIL][132] ([i915#1731]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   * igt@sysfs_preempt_timeout@timeout@rcs0:
>     - {shard-rkl}:        [FAIL][134] ([i915#2821]) -> [PASS][135] +3 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-rkl-5/igt@sysfs_preempt_timeout@timeout@rcs0.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-rkl-1/igt@sysfs_preempt_timeout@timeout@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-iclb:         [FAIL][136] ([i915#2842]) -> [FAIL][137] ([i915#2849])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][138] ([i915#658]) -> [SKIP][139] ([i915#588])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][140] ([i915#658]) -> [SKIP][141] ([i915#2920]) +2 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][142] ([i915#2920]) -> [SKIP][143] ([i915#658]) +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10440/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602])
>    [144]: https://intel-gfx
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20762/index.html
