Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A31549F0EA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 03:22:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6959B10ED3A;
	Fri, 28 Jan 2022 02:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4777F10ED2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 02:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643336566; x=1674872566;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/r3pcBT39eYMx3v8Y7pwBIE0N5yS5d1IY5v1F1TrKZw=;
 b=Ohxtqj/dmMzUAE+kqUysYI7y4NWJUxSs8M4jESin2PFikUZX38iH3umB
 WFxLinqIrTkfCsxP/jF9WAM6z1Sbo9ecmpWX0kHB7FgaMk0wPM4nclsz3
 +dhxc/FDMy2TLSWMETa1ev4t9stKUMIZ5LjfJfl0svEheWp3kRapOHULT
 D7DVJMHNd2m2jh9/4Br6cTqqWOtsWxnkIYOZV9zBQGfcosiYK9KFy4r4C
 aWh2iyZqjksQzp1SwITDvkepunfxtuj51SZtwDHb2vwJxmt98o01XydJm
 csm8wcHFksCpMY6UKYPxtXEns2W7awe0imMdE0XKBZQiem/0GAc38nm+V A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="333375292"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="333375292"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 18:22:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="533346725"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 18:22:45 -0800
Date: Thu, 27 Jan 2022 18:22:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YfNTdH2cCIN5itym@mdroper-desk1.amr.corp.intel.com>
References: <20220127194855.3963296-1-matthew.d.roper@intel.com>
 <164333411769.27322.5626846725821830252@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164333411769.27322.5626846725821830252@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_Wa=5F14015227452?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 28, 2022 at 01:41:57AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add Wa_14015227452
> URL   : https://patchwork.freedesktop.org/series/99446/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11152_full -> Patchwork_22130_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22130_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22130_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22130_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@reset-stress:
>     - shard-snb:          [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-snb2/igt@gem_eio@reset-stress.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-snb6/igt@gem_eio@reset-stress.html

<4> [246.887047] [IGT] Per-test timeout exceeded. Killing the current test with SIGQUIT.

Looks similar to https://gitlab.freedesktop.org/drm/intel/-/issues/3063,
although a different subtest.

Behavior on SKL isn't caused by the new DG2 workaround introduced here.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22130_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#4547]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#454])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#4281])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3886])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl8/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +103 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([i915#3701])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +17 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +82 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#2828])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#533])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-glk:          [PASS][38] -> [SKIP][39] ([fdo#109271])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][40] ([fdo#108145] / [i915#265])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([fdo#108145] / [i915#265])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#31])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk8/igt@kms_setmode@basic.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk2/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][47] ([IGT#2])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl10/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2437])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1542]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl7/igt@perf@blocking.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl10/igt@perf@blocking.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#1722])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl8/igt@perf@polling-small-buf.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl1/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl7/igt@sysfs_clients@fair-0.html
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2994])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl6/igt@sysfs_clients@fair-0.html
>     - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl4/igt@sysfs_clients@fair-0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_setmaster@master-drop-set-shared-fd:
>     - shard-iclb:         [DMESG-WARN][56] ([i915#4391]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb7/igt@core_setmaster@master-drop-set-shared-fd.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb6/igt@core_setmaster@master-drop-set-shared-fd.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][60] ([i915#4525]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][62] ([i915#2846]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][64] ([i915#2842]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][66] ([i915#2842]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-apl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [FAIL][70] ([i915#2842]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][72] ([i915#2842]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][74] ([i915#4171]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][76] ([i915#118]) -> [PASS][77] +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [FAIL][78] ([i915#2346]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [FAIL][80] ([i915#79]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [INCOMPLETE][82] ([i915#4839]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [INCOMPLETE][84] ([i915#636]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_event_leak:
>     - shard-skl:          [DMESG-WARN][86] ([i915#1982]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl6/igt@kms_flip_event_leak.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl8/igt@kms_flip_event_leak.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][88] ([i915#3701]) -> [PASS][89] +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][90] ([i915#1188]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][92] ([fdo#108145] / [i915#265]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [INCOMPLETE][96] ([i915#180]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl7/igt@perf_pmu@rc6-suspend.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl6/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][98] ([i915#3063] / [i915#3648]) -> [FAIL][99] ([i915#232])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][100] ([i915#588]) -> [SKIP][101] ([i915#658])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][102] ([i915#1804] / [i915#2684]) -> [WARN][103] ([i915#2684]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][104] ([fdo#111068] / [i915#658]) -> [SKIP][105] ([i915#2920])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][106] ([i915#2920]) -> [SKIP][107] ([fdo#111068] / [i915#658])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [FAIL][108] ([i915#4148]) -> [SKIP][109] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-iclb4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl8/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl1/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl7/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11152/shard-apl4/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl7/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl3/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl2/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/shard-apl1/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11152 -> Patchwork_22130
> 
>   CI-20190529: 20190529
>   CI_DRM_11152: d676ebd1d40b8ea2b47ca43792faa753942e4d19 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22130: 9556c21262fb17cbe863ef5f6444d715d03c0c13 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22130/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
