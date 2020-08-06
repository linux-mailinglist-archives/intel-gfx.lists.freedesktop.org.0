Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E2623E040
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 20:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D2F89C63;
	Thu,  6 Aug 2020 18:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2944789C63
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 18:20:19 +0000 (UTC)
IronPort-SDR: Z3GbtXwHeqPZy1YDQyaneDMkiFg01JdDcDSXUCdjZjnywBDkePZHXnjScX4se4WFXl1yWAQlbI
 B5WXCa4fwaTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="140489841"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="140489841"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 11:20:18 -0700
IronPort-SDR: XsyMfmJtnyxldxhv4NBYawTP4XhtAjLhbwBKzW61ykhDsrBD6g0uSdijc0kel1vEpQ5owG7XE3
 XcOJA+HVercA==
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="467947976"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 11:20:17 -0700
Date: Thu, 6 Aug 2020 21:20:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>
Message-ID: <20200806182003.GB4241@ideak-desk.fi.intel.com>
References: <20200720232952.16228-1-imre.deak@intel.com>
 <159529420097.6962.15694527046325817988@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159529420097.6962.15694527046325817988@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Make_sure_TC-cold_is_blocked_before_enabling_TC_AU?=
 =?utf-8?q?X_power_wells?=
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

On Tue, Jul 21, 2020 at 01:16:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Make sure TC-cold is blocked before enabling TC AUX power wells
> URL   : https://patchwork.freedesktop.org/series/79691/
> State : failure

Pushed to -dinq, thanks for the review.

The failure happened on an unrelated platform.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8767_full -> Patchwork_18215_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18215_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18215_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18215_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
>     - shard-hsw:          NOTRUN -> [INCOMPLETE][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-hsw4/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18215_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
>     - shard-apl:          [PASS][2] -> [FAIL][3] ([i915#1528] / [i915#1635])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-apl6/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-apl2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
> 
>   * igt@gem_exec_schedule@smoketest-all:
>     - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-glk3/igt@gem_exec_schedule@smoketest-all.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-glk3/igt@gem_exec_schedule@smoketest-all.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-hsw:          [PASS][6] -> [WARN][7] ([i915#1519])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1635] / [i915#1982])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1:
>     - shard-hsw:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-hsw1/igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-hsw6/igt@kms_flip@2x-nonexisting-fb-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +8 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#1188])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +9 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109642] / [fdo#111068])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb8/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +4 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb8/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf@blocking-parameterized:
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#1542])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb6/igt@perf@blocking-parameterized.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb7/igt@perf@blocking-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_whisper@basic-queues:
>     - shard-glk:          [DMESG-WARN][24] ([i915#118] / [i915#95]) -> [PASS][25] +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-glk3/igt@gem_exec_whisper@basic-queues.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-glk3/igt@gem_exec_whisper@basic-queues.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglb:         [DMESG-WARN][26] ([i915#402]) -> [PASS][27] +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-tglb8/igt@i915_module_load@reload.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-tglb8/igt@i915_module_load@reload.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-apl:          [DMESG-WARN][28] ([i915#1635] / [i915#1982]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-apl8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-apl6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-glk:          [DMESG-FAIL][30] ([i915#118] / [i915#95]) -> [PASS][31] +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_color@pipe-c-ctm-0-25:
>     - shard-skl:          [DMESG-WARN][32] ([i915#1982]) -> [PASS][33] +13 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +7 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-iclb:         [DMESG-WARN][36] ([i915#1982]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][38] ([i915#1188]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_lease@multimaster-lease:
>     - shard-snb:          [TIMEOUT][40] ([i915#1958] / [i915#2119]) -> [PASS][41] +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-snb5/igt@kms_lease@multimaster-lease.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-snb6/igt@kms_lease@multimaster-lease.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][42] ([fdo#108145] / [i915#265]) -> [PASS][43] +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][44] ([fdo#109441]) -> [PASS][45] +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][46] -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglb:         [DMESG-WARN][48] ([i915#1982]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-tglb3/igt@perf_pmu@module-unload.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-tglb7/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [TIMEOUT][50] ([i915#1958] / [i915#2119]) -> [FAIL][51] ([i915#1930])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_exec_reloc@basic-spin-others@vcs0:
>     - shard-snb:          [WARN][52] ([i915#2036]) -> [WARN][53] ([i915#2021])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          [TIMEOUT][54] ([i915#1319] / [i915#2119]) -> [TIMEOUT][55] ([i915#1319] / [i915#1958] / [i915#2119])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-kbl7/igt@kms_content_protection@atomic.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-kbl1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [DMESG-WARN][56] ([i915#1226]) -> [SKIP][57] ([fdo#109349])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-snb:          [TIMEOUT][58] ([i915#1958] / [i915#2119]) -> [SKIP][59] ([fdo#109271])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8767/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
>   [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
>   [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
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
>   * Linux: CI_DRM_8767 -> Patchwork_18215
> 
>   CI-20190529: 20190529
>   CI_DRM_8767: 4b665377a8730e8882d976dce641ff7d8391dd98 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5741: 96a8c8c1371995b73916989880b29b01f5657ba3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18215: 27df1f07ebe1d87a4ca409c2cc6c37ec7aae7c75 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18215/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
