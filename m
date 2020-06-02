Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 992201EBF23
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13F56E420;
	Tue,  2 Jun 2020 15:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DD46E420
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 15:36:15 +0000 (UTC)
IronPort-SDR: 5RBIqYhwASYm4zuXP9NRpSfh8avz3Xv/go0DBHNORnS8rSjZ/GWZ3Ve+omEOgE4Aqyo1qXIPnq
 +r5szubH0+8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:36:14 -0700
IronPort-SDR: 4Mbpm0cC2IUauyPUQxFu3zSrpKfvyQ+HAlK9sTkUqQXuOM7YP9Cg60/RVomVuWh4bhJ+f4R02b
 JNMvoT0tkvTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,465,1583222400"; d="scan'208";a="304270380"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 02 Jun 2020 08:36:14 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 08:36:14 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.75]) with mapi id 14.03.0439.000;
 Tue, 2 Jun 2020 08:35:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvZHNpOiBEb250IGZvcmdldCB0byBjbGVhbiB1cCB0aGUgY29ubmVjdG9y?=
 =?utf-8?Q?_on_error_(rev3)?=
Thread-Index: AQHWONAV7i/F6E/nZkqrnJ6eqsruMqjF6uiA
Date: Tue, 2 Jun 2020 15:35:12 +0000
Message-ID: <daf59c43f1a1b8c11bb53e2fd4a3583cd52b6cfc.camel@intel.com>
References: <20200507010103.16040-1-vivek.kasireddy@intel.com>
 <159109693008.21427.10089451260181328056@emeril.freedesktop.org>
In-Reply-To: <159109693008.21427.10089451260181328056@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.40.145]
Content-ID: <B621FE8F7A6D19429FE34E52AC2EBD79@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Dont_forget_to_clean_up_the_connector_on_error_=28?=
 =?utf-8?q?rev3=29?=
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

On Tue, 2020-06-02 at 11:22 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dsi: Dont forget to clean up the connector on error (rev3)
> URL   : https://patchwork.freedesktop.org/series/77011/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8568_full -> Patchwork_17838_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17838_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17838_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17838_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-skl:          [PASS][1] -> [TIMEOUT][2] +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl5/igt@gem_exec_reloc@basic-cpu-read.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl9/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
>     - shard-iclb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb6/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-iclb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
> 
> 

Not related to this changes.
Pushed to dinq, thanks for the patch.

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17838_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>     - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#648] / [i915#69])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_vblank@pipe-c-wait-idle-hang:
>     - shard-apl:          [PASS][13] -> [TIMEOUT][14] ([i915#1635]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@kms_vblank@pipe-c-wait-idle-hang.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl6/igt@kms_vblank@pipe-c-wait-idle-hang.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
>     - shard-snb:          [INCOMPLETE][15] ([i915#82]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-snb6/igt@gem_exec_schedule@implicit-write-read@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-apl:          [INCOMPLETE][17] -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@gem_workarounds@suspend-resume-fd.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * {igt@kms_flip@flip-vs-suspend@a-dp1}:
>     - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
>     - shard-skl:          [FAIL][21] ([i915#1928]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][23] ([i915#1188]) -> [PASS][24] +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][27] ([i915#173]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb1/igt@kms_psr@no_drrs.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-iclb8/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30] +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     - shard-skl:          [INCOMPLETE][33] ([i915#69]) -> [PASS][34] +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [SKIP][35] ([i915#468]) -> [FAIL][36] ([i915#1899])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          [TIMEOUT][37] ([i915#1319] / [i915#1635]) -> [TIMEOUT][38] ([i915#1319])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl8/igt@kms_content_protection@atomic-dpms.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          [FAIL][39] ([fdo#110321]) -> [TIMEOUT][40] ([i915#1319] / [i915#1635])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl4/igt@kms_content_protection@srm.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-glk:          [DMESG-WARN][41] ([i915#1926]) -> [DMESG-FAIL][42] ([i915#1925] / [i915#1926])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-glk:          [DMESG-WARN][43] ([i915#1926]) -> [DMESG-WARN][44] ([i915#1927])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-apl:          [FAIL][45] ([i915#1525] / [i915#95]) -> [FAIL][46] ([i915#1525])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8568/shard-apl6/igt@kms_fbcon_fbt@fbc.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/shard-apl8/igt@kms_fbcon_fbt@fbc.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
>   [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
>   [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
>   [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
>   [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
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
>   * Linux: CI_DRM_8568 -> Patchwork_17838
> 
>   CI-20190529: 20190529
>   CI_DRM_8568: 124bafc80c3ce62fc61b8eabb2657c87424b999b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17838: a30b3a0e479eb9f2f48cf8a737656c9bbb64c15a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17838/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
