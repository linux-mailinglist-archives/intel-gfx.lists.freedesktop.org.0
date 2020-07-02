Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3E5211EF7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784FA6EA99;
	Thu,  2 Jul 2020 08:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA31F6EA99
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 08:37:33 +0000 (UTC)
IronPort-SDR: pNJnC+txH4LdXDG5IMXZcbv4XPFOCejMGWYn+dDcWvMpzwBi663TYPn7vl2WIJjTjkKW0WVHkh
 Dp/4QszcDnRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144351864"
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="144351864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 01:37:33 -0700
IronPort-SDR: Z2YQCDy4i1A8jFpmglYJFhPHdk07wNUZVVbDNZTkCtR9YQYeHnf4dR2ncCo2jHuknK2q56k/0h
 zD6mIVMtW60Q==
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="455441483"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 01:37:31 -0700
Date: Thu, 2 Jul 2020 11:37:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20200702083726.GA10329@ideak-desk.fi.intel.com>
References: <20200701180001.15857-1-imre.deak@intel.com>
 <159367624715.5657.1453559977364047600@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159367624715.5657.1453559977364047600@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_old_vs=2E_new_epoch_counter_check_during_hotpl?=
 =?utf-8?q?ug_detect?=
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

On Thu, Jul 02, 2020 at 07:50:47AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix the old vs. new epoch counter check during hotplug detect
> URL   : https://patchwork.freedesktop.org/series/79006/
> State : success

Thanks for the review and re-reporting, merged to drm-misc-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8688_full -> Patchwork_18060_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_18060_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18060_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18060_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-hsw:          [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-hsw1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-hsw8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18060_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl1/igt@gem_eio@in-flight-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl7/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +26 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl8/igt@gem_exec_reloc@basic-wc-read.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-apl1/igt@gem_exec_reloc@basic-wc-read.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-snb:          [PASS][7] -> [TIMEOUT][8] ([i915#1958] / [i915#2119])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl4/igt@i915_suspend@fence-restore-untiled.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl8/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-b-ctm-negative:
>     - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +13 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#93] / [i915#95])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#52] / [i915#54])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>     - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-snb:          [PASS][33] -> [FAIL][34] ([i915#1958]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@rcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb4/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-snb:          [PASS][35] -> [INCOMPLETE][36] ([i915#2119] / [i915#82])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@vcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb4/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb4/igt@perf_pmu@module-unload.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-iclb8/igt@perf_pmu@module-unload.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#95]) -> [PASS][40] +17 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl6/igt@gem_ctx_persistence@hostile.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-apl8/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@gem_exec_create@forked.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-glk5/igt@gem_exec_create@forked.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][43] ([i915#454]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [WARN][45] ([i915#1519]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [INCOMPLETE][47] ([i915#198] / [i915#2110]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl5/igt@i915_selftest@mock@requests.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl9/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +6 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_flip@dpms-vs-vblank-race@a-dp1:
>     - shard-kbl:          [FAIL][51] ([i915#407]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +11 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_plane@plane-position-covered-pipe-a-planes:
>     - shard-snb:          [SKIP][59] ([fdo#109271]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb1/igt@kms_plane@plane-position-covered-pipe-a-planes.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb2/igt@kms_plane@plane-position-covered-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-iclb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-modeset:
>     - shard-kbl:          [DMESG-WARN][67] ([i915#62] / [i915#92]) -> [PASS][68] +5 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-modeset.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-modeset.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-apl:          [FAIL][69] ([i915#1732]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@bonded-early:
>     - shard-kbl:          [DMESG-WARN][71] ([i915#93] / [i915#95]) -> [DMESG-FAIL][72] ([i915#95])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@gem_exec_balancer@bonded-early.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [FAIL][73] ([i915#1930]) -> [TIMEOUT][74] ([i915#1958] / [i915#2119])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-snb:          [SKIP][75] ([fdo#109271]) -> [INCOMPLETE][76] ([i915#82])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb6/igt@i915_pm_dc@dc5-dpms.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb5/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-snb:          [SKIP][77] ([fdo#109271]) -> [TIMEOUT][78] ([i915#1958] / [i915#2119]) +3 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-apl:          [SKIP][79] ([fdo#109271]) -> [SKIP][80] ([fdo#109271] / [i915#1635]) +11 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence:
>     - shard-apl:          [SKIP][81] ([fdo#109271] / [i915#1635]) -> [SKIP][82] ([fdo#109271]) +4 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][84] ([fdo#108145] / [i915#1982])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
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
>   * Linux: CI_DRM_8688 -> Patchwork_18060
> 
>   CI-20190529: 20190529
>   CI_DRM_8688: e732088e2eb2bbb1ca72c1f68d0405f17477d446 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18060: 8db00a8b1f2f5b1bf1fee91b6513a8a35d121df4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18060/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
