Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 799FA2D655D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 19:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46346EACD;
	Thu, 10 Dec 2020 18:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FAB6EACD
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 18:46:07 +0000 (UTC)
IronPort-SDR: xWmjjsTz0tH/8J209WVY/lPwqasssPiHs3+0VY+kZeHTJollM8TaxBvpTokU04gHnLy0FKOW7+
 R43EG6oqAf8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="171744543"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="171744543"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:46:03 -0800
IronPort-SDR: nDNsstLXCS/gCtdWvFDxDLCVJuy86NEiaTPFmDID4mKhs8mfG+49h/sBJjIIAYWjHho7hE4ylR
 GP1OWazqbwmw==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="408671962"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:46:02 -0800
Date: Thu, 10 Dec 2020 20:45:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201210184559.GA3411827@ideak-desk.fi.intel.com>
References: <20201209153952.3397959-1-imre.deak@intel.com>
 <160753861636.4258.10215115797003397869@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160753861636.4258.10215115797003397869@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl=3A_Fix_initing_the_DSI_DSC_power_refcount_during_HW_r?=
 =?utf-8?q?eadout?=
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

On Wed, Dec 09, 2020 at 06:30:16PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/icl: Fix initing the DSI DSC power refcount during HW readout
> URL   : https://patchwork.freedesktop.org/series/84735/
> State : success

Thanks for the review, pushed to din.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9464_full -> Patchwork_19093_full
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
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19093_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-skl:          NOTRUN -> [SKIP][1] ([fdo#109271]) +38 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_exec_reloc@basic-many-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][2] ([i915#2389])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [PASS][3] -> [WARN][4] ([i915#1519])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
>     - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#54]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#2346] / [i915#533])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2346])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#533])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2598])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([fdo#108145] / [i915#265]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][20] -> [FAIL][21] ([fdo#108145] / [i915#265]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109441]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_gttfill@engines@rcs0:
>     - shard-glk:          [DMESG-WARN][24] ([i915#118] / [i915#95]) -> [PASS][25] +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-glk4/igt@gem_exec_gttfill@engines@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-glk9/igt@gem_exec_gttfill@engines@rcs0.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl4/igt@kms_color@pipe-c-ctm-0-75.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - shard-skl:          [FAIL][28] ([i915#54]) -> [PASS][29] +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][30] ([i915#300]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-skl:          [FAIL][32] ([i915#2346]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [FAIL][34] ([i915#2122]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][36] ([fdo#109441]) -> [PASS][37] +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-apl:          [FAIL][38] ([i915#1542]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-apl4/igt@perf@polling-parameterized.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-apl1/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][40] ([i915#2684]) -> [WARN][41] ([i915#1804] / [i915#2684])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [DMESG-WARN][43] ([i915#1602])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-iclb1/igt@kms_psr@psr2_suspend.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-kbl:          [INCOMPLETE][44] ([i915#155] / [i915#2405]) -> [DMESG-WARN][45] ([i915#1602])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          [FAIL][46] ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][47], [FAIL][48]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-kbl1/igt@runner@aborted.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-kbl2/igt@runner@aborted.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-kbl7/igt@runner@aborted.html
>     - shard-glk:          ([FAIL][49], [FAIL][50]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][51], [FAIL][52]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-glk7/igt@runner@aborted.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9464/shard-glk4/igt@runner@aborted.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-glk4/igt@runner@aborted.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/shard-glk1/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
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
>   * Linux: CI_DRM_9464 -> Patchwork_19093
> 
>   CI-20190529: 20190529
>   CI_DRM_9464: a2561d7ce07920c1fc05013c87d21d3c8b05149f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19093: 65ab8dd2be36c0b2e2fdc112cdfe1bbcd7e6f09c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19093/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
