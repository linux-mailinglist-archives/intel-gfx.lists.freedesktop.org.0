Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D122401D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 18:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38366EDEF;
	Fri, 17 Jul 2020 16:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F69C6EDEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 16:02:20 +0000 (UTC)
IronPort-SDR: bfbxG+agMdW8MMhIVOwWNq7zhxsiyf5lpC+tGVvvOz1JK+39J+4TGYm22aNqVzFvt+5Pi3Of1x
 wPGfWP3w05ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="211160344"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="211160344"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 09:02:10 -0700
IronPort-SDR: 3XC1Cej2mHNT2SPjXEqSpiZfeH00VvGtR2uL4BFN4h7NeSgxcOwgkNCNQeTEFTmA4JwIDv9Urc
 kpjBoEVrlSpQ==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="326881356"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 09:02:10 -0700
Date: Fri, 17 Jul 2020 09:02:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200717160208.GT2588642@mdroper-desk1.amr.corp.intel.com>
References: <20200716220551.2730644-1-matthew.d.roper@intel.com>
 <159495079861.14919.285760047946681816@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159495079861.14919.285760047946681816@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?aining_RKL_patches_=28rev7=29?=
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

On Fri, Jul 17, 2020 at 01:53:18AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Remaining RKL patches (rev7)
> URL   : https://patchwork.freedesktop.org/series/77971/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8758_full -> Patchwork_18197_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18197_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18197_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18197_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl6/igt@gem_exec_suspend@basic-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl2/igt@gem_exec_suspend@basic-s3.html

It looks like this gen9 system just never came out of S3; that wouldn't
have been caused by this series.

Patches applied to dinq.  Thanks Jose and Lucas for the reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18197_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt:
>     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#2119])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-iclb8/igt@gem_userptr_blits@invalid-mmap-offset-unsync@gtt.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [PASS][5] -> [WARN][6] ([i915#1519])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-hsw:          [PASS][7] -> [INCOMPLETE][8] ([i915#2110])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-hsw7/igt@i915_selftest@mock@requests.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-hsw6/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-glk4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#177] / [i915#52] / [i915#54])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
>     - shard-hsw:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-hsw1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-hsw6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#2122])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#53])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-iclb7/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_vblank@crtc-id:
>     - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl8/igt@kms_vblank@crtc-id.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl1/igt@kms_vblank@crtc-id.html
> 
>   * igt@kms_vblank@pipe-a-query-forked-busy:
>     - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#402]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-tglb1/igt@kms_vblank@pipe-a-query-forked-busy.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-tglb5/igt@kms_vblank@pipe-a-query-forked-busy.html
> 
>   * igt@kms_vblank@pipe-c-wait-busy-hang:
>     - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1635] / [i915#1982]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-apl7/igt@kms_vblank@pipe-c-wait-busy-hang.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-apl4/igt@kms_vblank@pipe-c-wait-busy-hang.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +8 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl9/igt@i915_pm_rpm@i2c.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl5/igt@i915_pm_rpm@i2c.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
>     - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][43] ([i915#300]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-snb:          [TIMEOUT][45] ([i915#1958] / [i915#2119]) -> [PASS][46] +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
>     - shard-kbl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-kbl4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-kbl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#1982]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-tglb5/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-tglb2/igt@kms_frontbuffer_tracking@psr-slowdraw.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [FAIL][55] ([i915#31]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-kbl3/igt@kms_setmode@basic.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-kbl1/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +4 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@blocking-parameterized:
>     - shard-tglb:         [FAIL][59] ([i915#1542]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-tglb3/igt@perf@blocking-parameterized.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-tglb2/igt@perf@blocking-parameterized.html
> 
>   * igt@perf_pmu@busy-idle@rcs0:
>     - shard-snb:          [FAIL][61] ([i915#1958]) -> [PASS][62] +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-snb5/igt@perf_pmu@busy-idle@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-snb5/igt@perf_pmu@busy-idle@rcs0.html
> 
>   * igt@perf_pmu@busy-idle@vcs0:
>     - shard-snb:          [INCOMPLETE][63] ([i915#2119] / [i915#82]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-snb5/igt@perf_pmu@busy-idle@vcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-snb5/igt@perf_pmu@busy-idle@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [TIMEOUT][65] ([i915#1958] / [i915#2119]) -> [FAIL][66] ([i915#1930])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo:
>     - shard-snb:          [TIMEOUT][67] ([i915#1958] / [i915#2119]) -> [SKIP][68] ([fdo#109271]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-snb5/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-snb5/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
> 
>   * igt@runner@aborted:
>     - shard-hsw:          [FAIL][69] ([i915#2110]) -> [FAIL][70] ([i915#1436] / [i915#2110])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-hsw1/igt@runner@aborted.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-hsw6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][71], [FAIL][72], [FAIL][73]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> [FAIL][74] ([i915#1635] / [i915#2110])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-apl8/igt@runner@aborted.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-apl1/igt@runner@aborted.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8758/shard-apl8/igt@runner@aborted.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/shard-apl7/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
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
>   * Linux: CI_DRM_8758 -> Patchwork_18197
> 
>   CI-20190529: 20190529
>   CI_DRM_8758: b6738761bde03de00a1c84c6a85f9379f53f585c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18197: dfcce2d96955e0636baa8270decdc53ec3519ab2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18197/index.html

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
