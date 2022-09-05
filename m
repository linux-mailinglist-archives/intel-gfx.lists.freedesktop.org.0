Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C05D5AD3CA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 15:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1355010E37D;
	Mon,  5 Sep 2022 13:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E17510E37D
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 13:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662384328; x=1693920328;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=fF9U7z7YlhQjVscJX7bhxcSGIU3aB6Ra9V2BTq1UJLA=;
 b=IwL47spJQpHw/9ygioQggfy1zpnF4Lbw8GfRcDFzwtOTL9wcC1W5W5F6
 yBOC2uFnD5prtVniYbnGJ9uvasmyhf0/ebXuHyQ28L34PNLx0CqGFHfaQ
 vfDm4E3527LU8kMEa/mCJ+yof5ONlmDnU64DiifK/DMeZVqIK6xJufGU/
 hM7icpUTIi/8bYZs4JRu6SYaKGxCX356PRdIdV01Jsv7Ls/Qj3ZgDPUuD
 xmTh15NNBsoGmhF3DfOqg7QSXWLp5Z8MRt3i/u934rwK2T/Y+HDVzohzm
 E8s9B3HWRmD+JJsSFUlWFUMtgaD0Is96CcK1UgXnCKJY3Ibya5GwYuW+0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="283383205"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="283383205"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 06:25:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="564767787"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 06:25:26 -0700
Date: Mon, 5 Sep 2022 16:25:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YxX4wlpU8/hcY3zA@ideak-desk.fi.intel.com>
References: <20220826141929.189681-1-andrzej.hajda@intel.com>
 <166187676633.27287.11182807847176002616@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166187676633.27287.11182807847176002616@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_stop_HPD_workers_before_display_driver_unregis?=
 =?utf-8?q?ter_=28rev15=29?=
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 30, 2022 at 04:26:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: stop HPD workers before display driver unregister (rev15)
> URL   : https://patchwork.freedesktop.org/series/105557/
> State : success

Thanks for the patchset, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12034_full -> Patchwork_105557v15_full
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
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105557v15_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#4525]) +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][3] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][4] -> [FAIL][5] ([i915#2842]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +4 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl4/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-apl:          NOTRUN -> [FAIL][11] ([i915#4171])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#3323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#4281])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1937])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-apl2/igt@i915_suspend@sysfs-reader.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl2/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3886]) +11 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-with-enabled-mode:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][22] ([i915#1319] / [i915#6637])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][23] ([i915#2105])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#2346])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>     - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2672] / [i915#3555]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2672]) +7 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3555])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +248 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +83 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][36] ([i915#265])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([i915#5235]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#658])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#658]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([i915#5519])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2437])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#5639])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb5/igt@perf@polling-parameterized.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb5/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2994])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl4/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl6/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][52] ([i915#3070]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb3/igt@gem_eio@unwedge-stress.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][54] ([i915#2842]) -> [PASS][55] +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-tglu}:       [FAIL][56] ([i915#2842]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][58] ([i915#454]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61] +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>     - shard-iclb:         [FAIL][62] ([i915#5072]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][64] ([i915#2122]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [FAIL][66] ([i915#79]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][70] ([i915#5176]) -> [PASS][71] +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][74] ([i915#6117]) -> [SKIP][75] ([i915#4525])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][76] ([i915#658]) -> [SKIP][77] ([i915#2920])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][78] ([i915#5939]) -> [SKIP][79] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98]) ([i915#180] / [i915#4312] / [i915#5257]) -> ([FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl4/igt@runner@aborted.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl4/igt@runner@aborted.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl7/igt@runner@aborted.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl7/igt@runner@aborted.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl1/igt@runner@aborted.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl7/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12034/shard-kbl6/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl1/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl6/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/shard-kbl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12034 -> Patchwork_105557v15
> 
>   CI-20190529: 20190529
>   CI_DRM_12034: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105557v15: b34ca8196b34f318d0d46cb282fd44fc748d5bbf @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v15/index.html
