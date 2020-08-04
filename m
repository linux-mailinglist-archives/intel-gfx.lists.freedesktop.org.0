Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E9423BEB2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 19:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5146E499;
	Tue,  4 Aug 2020 17:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716DE6E499
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 17:15:07 +0000 (UTC)
IronPort-SDR: HGE/np7dS5juJB56SdNueLDN8zEOAy2gi2m2SrV4OENjL08DJUVszajnpL6Tn++YKgoQJPFBMP
 G9xZXgx09ogQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="216747589"
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="216747589"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 10:15:06 -0700
IronPort-SDR: 8LsiB6gktooEjOP/UXKGYUrJNCPFwdYH3C+7Rp5oZKyJmHcHdV3p17o9p6iVTItmeXAfjpy9cK
 ZpHjbx/dFj5w==
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="332568030"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 10:15:06 -0700
Date: Tue, 4 Aug 2020 10:15:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200804171504.GC1953231@mdroper-desk1.amr.corp.intel.com>
References: <20200804044024.1931170-1-matthew.d.roper@intel.com>
 <159652344750.12580.15550529958596560625@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159652344750.12580.15550529958596560625@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/rkl=3A_Add_Wa=5F14011224835_for_PHY_B_initializ?=
 =?utf-8?q?ation=22?=
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

On Tue, Aug 04, 2020 at 06:44:07AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Revert "drm/i915/rkl: Add Wa_14011224835 for PHY B initialization"
> URL   : https://patchwork.freedesktop.org/series/80235/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8836_full -> Patchwork_18305_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18305_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18305_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18305_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_mmap_write_crc@main:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-glk6/igt@kms_mmap_write_crc@main.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-glk6/igt@kms_mmap_write_crc@main.html

<3> [425.622060] DMAR: DRHD: handling fault status reg 3
<3> [425.622072] DMAR: [DMA Read] Request device [00:02.0] PASID ffffffff fault addr fa700000 [fault reason 06] PTE Read access is not set
<3> [425.622562] DMAR: DRHD: handling fault status reg 3
<3> [425.622571] DMAR: [DMA Read] Request device [00:02.0] PASID ffffffff fault addr fa70e000 [fault reason 06] PTE Read access is not set
...
<3> [425.672060] DMAR: DRHD: handling fault status reg 3
<3> [425.672072] DMAR: [DMA Read] Request device [00:02.0] PASID ffffffff fault addr fa700000 [fault reason 06] PTE Read access is not set
<3> [425.672565] DMAR: DRHD: handling fault status reg 3

Not related to the changes in this patch (plus the combo PHY code
modified here isn't used on GLK).

Applying to dinq.  Thanks Jose for the review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18305_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#1635] / [i915#716])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-apl2/igt@gen9_exec_parse@allowed-all.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-apl8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1635])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
>     - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +10 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl9/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#407])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
>     - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#2055])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-hsw1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-hsw1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb1/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-kbl6/igt@kms_setmode@basic.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-kbl7/igt@kms_setmode@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][29] ([i915#2190]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent:
>     - shard-iclb:         [INCOMPLETE][31] -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb8/igt@gem_mmap_gtt@fault-concurrent.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb6/igt@gem_mmap_gtt@fault-concurrent.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [WARN][33] ([i915#1519]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_addfb_basic@small-bo:
>     - shard-snb:          [TIMEOUT][35] ([i915#1958]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-snb1/igt@kms_addfb_basic@small-bo.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-snb4/igt@kms_addfb_basic@small-bo.html
> 
>   * igt@kms_available_modes_crc@available_mode_test_crc:
>     - shard-iclb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb3/igt@kms_available_modes_crc@available_mode_test_crc.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb1/igt@kms_available_modes_crc@available_mode_test_crc.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - shard-glk:          [DMESG-FAIL][39] ([i915#118] / [i915#95]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][41] ([i915#79]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
>     - shard-kbl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +13 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a:
>     - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-tglb7/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-tglb5/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_vblank@pipe-a-query-forked-busy-hang:
>     - shard-apl:          [DMESG-WARN][53] ([i915#1635] / [i915#1982]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-apl7/igt@kms_vblank@pipe-a-query-forked-busy-hang.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-apl2/igt@kms_vblank@pipe-a-query-forked-busy-hang.html
> 
>   * igt@prime_busy@hang-wait@vecs0:
>     - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +4 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl10/igt@prime_busy@hang-wait@vecs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl2/igt@prime_busy@hang-wait@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [TIMEOUT][57] ([i915#1958]) -> [FAIL][58] ([i915#1930])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_exec_reloc@basic-spin-others@vcs0:
>     - shard-snb:          [WARN][59] ([i915#2021]) -> [WARN][60] ([i915#2036])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [FAIL][61] ([i915#1515]) -> [WARN][62] ([i915#1515])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-kbl:          [TIMEOUT][63] ([i915#1319] / [i915#1958]) -> [TIMEOUT][64] ([i915#1319])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-kbl6/igt@kms_content_protection@lic.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-kbl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-snb:          [TIMEOUT][65] ([i915#1958]) -> [SKIP][66] ([fdo#109271])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [DMESG-FAIL][67] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][68] ([i915#1982])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8836/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
>   [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
>   [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
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
>   * Linux: CI_DRM_8836 -> Patchwork_18305
> 
>   CI-20190529: 20190529
>   CI_DRM_8836: b0c86af167651919dbe066f133cb228a000e01cc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18305: a906378672e72df84be7630fce49cd761576d8ac @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18305/index.html

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
