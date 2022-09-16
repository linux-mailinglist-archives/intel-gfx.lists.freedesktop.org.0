Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBFA5BB14F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 18:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB87A10E4E4;
	Fri, 16 Sep 2022 16:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470E810E4E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 16:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663347154; x=1694883154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XI99W6jsAUGiTV/p3XMa+sk+2/aeAKkdATVweT1Xlo4=;
 b=kk0PwnnW1+fHpw01wrzQO6JtTCX+EEipqrjXPVvgXm+sWP7ONwDVUFTW
 ady+uls8oVWT3a9sZOVEXC4uIG1sXhAZ6PnEQoxr+NCe9yJUS154TtYGO
 zbPravrvHFyibY/rp1DV0tkALjcuDpmqEKyeT76PPEDF6KGV6q7vDb/DV
 EspS1/v8W9bBjkPagMuOuNLsYr9MR02KQXT2vXw9tLuE/z4XLEyeWPcC2
 IlTu/VwGQDyu7dWcoiUT7YDyz7IyuCArswvKjOk7SiUv4r61bQ0ohND1t
 t0UFRrlHO0sS11w4DdZJ7sc5R33WqI+Rb1uCreSaWpKyLs01uqslGcdyb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="385324400"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="385324400"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:52:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="706810113"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.25.54])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:52:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 18:52:29 +0200
Message-ID: <1961861.fIoEIV5pvu@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <166334115044.18049.790247804815333766@emeril.freedesktop.org>
References: <20220916092403.201355-1-janusz.krzysztofik@linux.intel.com>
 <166334115044.18049.790247804815333766@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Really_move_i915=5Fgem=5Fcontext=2Elink_under_ref_?=
 =?utf-8?q?protection_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 16 September 2022 17:12:30 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gem: Really move i915_gem_context.link under ref protection (rev4)
> URL   : https://patchwork.freedesktop.org/series/105975/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12145_full -> Patchwork_105975v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105975v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105975v4_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_105975v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl1/igt@i915_selftest@mock@requests.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl1/igt@i915_selftest@mock@requests.html

Looks like https://gitlab.freedesktop.org/drm/intel/issues/6656, will be 
re-reported after CI filters are updated.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105975v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#6268])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-tglb6/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#2190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-tglb8/igt@gem_huc_copy@huc-copy.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-iclb:         NOTRUN -> [WARN][12] ([i915#2658])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#768]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#5286]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#110723])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3886])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109278]) +6 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl8/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109300] / [fdo#111066])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109274])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#79])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#2672]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#3555]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2587] / [i915#2672]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2672] / [i915#3555]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109280]) +6 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +46 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl6/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#3536]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_plane_lowres@tiling-x@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][33] -> [SKIP][34] ([i915#5176]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][35] -> [SKIP][36] ([i915#5235]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#111068] / [i915#658]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb4/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2437])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278] / [i915#2530])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][45] -> [FAIL][46] ([i915#5639])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb8/igt@perf@polling-parameterized.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb4/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109291])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109295])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#2994])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb6/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][50] ([i915#658]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb8/igt@feature_discovery@psr2.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][52] ([i915#4525]) -> [PASS][53] +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][54] ([i915#2842]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][56] ([i915#2842]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - {shard-tglu}:       [FAIL][60] ([i915#4171]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-tglu-4/igt@gem_softpin@evict-single-offset.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-tglu-3/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][62] ([i915#3989] / [i915#454]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][64] ([i915#6537]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl2/igt@i915_pm_rps@engine-order.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl3/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:
>     - {shard-tglu}:       [FAIL][66] ([i915#1888]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-glk:          [DMESG-FAIL][68] ([i915#118] / [i915#1888]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>     - shard-glk:          [FAIL][70] ([i915#1888]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][72] ([i915#5235]) -> [PASS][73] +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][74] ([fdo#109441]) -> [PASS][75] +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][76] ([i915#5519]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-iclb:         [SKIP][78] ([i915#5519]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][80] ([i915#6117]) -> [SKIP][81] ([i915#4525])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][82] ([i915#658]) -> [SKIP][83] ([i915#588])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][84] ([i915#658]) -> [SKIP][85] ([i915#2920]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][86] ([i915#5939]) -> [SKIP][87] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][88] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][89] ([i915#5939])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-iclb1/igt@kms_psr2_su@page_flip-p010.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][95], [FAIL][96], [FAIL][97]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl2/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl2/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl2/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl8/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/shard-apl3/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl1/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl7/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/shard-apl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12145 -> Patchwork_105975v4
> 
>   CI-20190529: 20190529
>   CI_DRM_12145: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105975v4: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html
> 




