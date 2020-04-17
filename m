Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D611AE7D2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 23:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6046EC1F;
	Fri, 17 Apr 2020 21:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06906EC1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 21:52:09 +0000 (UTC)
IronPort-SDR: axFd5kxA+TKj4eU5C843RCDybvXHjaWiKyPhndwpL/W/zolLbcbHGTud4rTByxHh0LQJzDK3gw
 YKppTq6RasyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 14:52:09 -0700
IronPort-SDR: NbhD8vHurPbE61EVr+nK+Lk8plGZimfOgpw4K06qd1Bq5MOMxd2wNSv3uE0EmLh4hAmMn771A/
 DyHWeqekHZwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="299726361"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2020 14:52:09 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 14:52:09 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.191]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.121]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 14:52:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IEFkZCBtaXNz?=
 =?utf-8?B?aW5nIGRlaW5pdGlhbGl6YXRpb24gY2FzZXMgb2YgbG9hZCBmYWlsdXJlIChy?=
 =?utf-8?Q?ev2)?=
Thread-Index: AQHWFPzdI0K3CKDT3U2Q8SdKnpwMuah+UMEA
Date: Fri, 17 Apr 2020 21:52:08 +0000
Message-ID: <f2b400b308372f2b7e074078b7bb905ccab84b30.camel@intel.com>
References: <20200416185841.125686-1-jose.souza@intel.com>
 <158715792903.10465.3857374888873936831@emeril.freedesktop.org>
In-Reply-To: <158715792903.10465.3857374888873936831@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.49.43]
Content-ID: <CEBDA548C4694E4E835485ACF58D35A9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_missing_deinitialization_cases_of_load_failure_=28?=
 =?utf-8?q?rev2=29?=
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

On Fri, 2020-04-17 at 21:12 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add missing deinitialization cases of load failure
> (rev2)
> URL   : https://patchwork.freedesktop.org/series/75987/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8311_full -> Patchwork_17335_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Chris pushed it before I had a chance, thanks.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17335_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_params@invalid-bsd-ring:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
>     - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#54] /
> [i915#93] / [i915#95])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#54] /
> [i915#95])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
> 
>   * igt@kms_cursor_legacy@pipe-b-torture-bo:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#128])
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl3/igt@kms_cursor_legacy@pipe-b-torture-bo.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl6/igt@kms_cursor_legacy@pipe-b-torture-bo.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] /
> [i915#265])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#899])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +5
> similar issues
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
> +1 similar issue
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-tglb:         [FAIL][19] ([i915#1528]) -> [PASS][20]
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-tglb1/igt@gem_ctx_persistence@processes.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-tglb3/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22]
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl6/igt@gem_softpin@noreloc-s3.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-kbl:          [INCOMPLETE][23] ([i915#1423]) ->
> [PASS][24]
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-apl:          [INCOMPLETE][25] ([i915#1423]) ->
> [PASS][26]
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-apl3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][27] ([i915#454]) -> [PASS][28]
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - shard-glk:          [SKIP][29] ([fdo#109271]) -> [PASS][30]
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-glk8/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-glk9/igt@i915_pm_rpm@basic-pci-d3-state.html
>     - shard-iclb:         [SKIP][31] ([i915#1316] / [i915#579]) ->
> [PASS][32]
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb7/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb1/igt@i915_pm_rpm@basic-pci-d3-state.html
>     - shard-tglb:         [SKIP][33] ([i915#1316] / [i915#579]) ->
> [PASS][34]
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-tglb7/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-tglb8/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36]
> +2 similar issues
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
>     - shard-skl:          [FAIL][37] ([i915#46]) -> [PASS][38]
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2}:
>     - shard-glk:          [FAIL][39] ([i915#79]) -> [PASS][40]
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-skl10/igt@kms_hdr@bpc-switch.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-skl6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-iclb:         [INCOMPLETE][43] ([i915#1185] / [i915#250])
> -> [PASS][44]
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-kbl:          [FAIL][45] ([fdo#108145] / [i915#265] /
> [i915#93] / [i915#95]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) ->
> [PASS][48] +1 similar issue
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-iclb6/igt@kms_psr@psr2_dpms.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-iclb2/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][51] ([i915#31]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-apl8/igt@kms_setmode@basic.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-apl4/igt@kms_setmode@basic.html
>     - shard-kbl:          [FAIL][53] ([i915#31] / [i915#93] /
> [i915#95]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-kbl4/igt@kms_setmode@basic.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-kbl7/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][55] ([i915#468]) -> [FAIL][56]
> ([i915#454])
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
>   [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
>   [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
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
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_8311 -> Patchwork_17335
> 
>   CI-20190529: 20190529
>   CI_DRM_8311: 19367bb5e65eaf0719597b3ff244fd1c2ea12bda @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5593: 1c658f5e46598ae93345177d4981ef54704daec6 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17335: a685f486207f33975db8675f8155bc88cd8180ce @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17335/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
