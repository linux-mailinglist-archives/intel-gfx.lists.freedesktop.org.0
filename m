Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0FB1DBCE2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 20:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695D66E883;
	Wed, 20 May 2020 18:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4056E883
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 18:29:43 +0000 (UTC)
IronPort-SDR: q6aFKFbXaAR+kqLXsu7vkQAS/xLbXCkgeuWX2O/0ax3WxJs6Udm2KSRPs41coIH38XuiUGGIJI
 P8Mz9a+ssLlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 11:29:42 -0700
IronPort-SDR: o9kIceQe4D4L4olbuiOEpRWrqaFjCKEAN05xUq3Ct7qK5pP4J5IMJCu8SXTQRR+TqC/8JvR1Ej
 4FTL6gVRoKFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,414,1583222400"; d="scan'208";a="264778445"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 20 May 2020 11:29:42 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 May 2020 11:29:41 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.235]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.180]) with mapi id 14.03.0439.000;
 Wed, 20 May 2020 11:29:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?Q?15/ehl:_Wa=5F22010271021_(rev2)?=
Thread-Index: AQHWLpwrCICWsWjV8UiBiIQgTrpMJqixwgEA
Date: Wed, 20 May 2020 18:29:41 +0000
Message-ID: <55407bc4563eb94102447a1eeca3c9e727f7e797.camel@intel.com>
References: <20200519162534.10035-1-matthew.s.atwood@intel.com>
 <158997512418.30687.5853539040414881609@emeril.freedesktop.org>
In-Reply-To: <158997512418.30687.5853539040414881609@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.5.73]
Content-ID: <2D5AE0833F53C24482AC38048606300F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Wa=5F22010271021_=28rev2=29?=
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

On Wed, 2020-05-20 at 11:45 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ehl: Wa_22010271021 (rev2)
> URL   : https://patchwork.freedesktop.org/series/77428/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8506_full -> Patchwork_17716_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17716_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17716_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17716_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
> 

Not related to this changes.

Merged, thanks for the patch.

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17716_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl4/igt@gem_softpin@noreloc-s3.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-apl4/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][7] -> [FAIL][8] ([IGT#5])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#155])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#31])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl3/igt@kms_setmode@basic.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl8/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-snb:          [PASS][17] -> [DMESG-WARN][18] ([i915#42])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-snb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-snb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
>     - shard-skl:          [FAIL][19] ([i915#54]) -> [PASS][20] +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
>     - shard-skl:          [INCOMPLETE][21] ([i915#198]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
>     - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend@a-dp1}:
>     - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +4 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [SKIP][27] ([fdo#109271]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][29] ([i915#1188]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * {igt@prime_vgem@sync@rcs0}:
>     - shard-iclb:         [INCOMPLETE][35] ([i915#409]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb8/igt@prime_vgem@sync@rcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-iclb1/igt@prime_vgem@sync@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-FAIL][39] ([i915#180] / [i915#95]) -> [FAIL][40] ([i915#1121] / [i915#93] / [i915#95])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
>   [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
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
>   * Linux: CI_DRM_8506 -> Patchwork_17716
> 
>   CI-20190529: 20190529
>   CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17716: 60adbb75a3d8f272c58ce2f5dc5bded2a5b2dc79 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17716/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
