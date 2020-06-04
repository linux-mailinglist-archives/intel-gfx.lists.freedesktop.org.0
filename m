Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 626681EEC41
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 22:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF6B6E5BD;
	Thu,  4 Jun 2020 20:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9856E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 20:43:28 +0000 (UTC)
IronPort-SDR: Hx7fsBB+T1TxptiZrkeQr4qwUyRbz0hO+USAEfCNnMHwey9d2b2SRccWKomSIrlomAg0jWCPtb
 ssgBar/d8hCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 13:43:27 -0700
IronPort-SDR: KnizoDFUW4itvrsqdBWURan8jWGLGGfE5L99D1dmiLDd0+hqjn3xo7ecZWlKaBS0ufp1UpAty0
 LYhO2H/CExsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="269533618"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2020 13:43:26 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 13:43:26 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.185]) with mapi id 14.03.0439.000;
 Thu, 4 Jun 2020 13:43:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTUvdGdsOiBBZGQg?=
 =?utf-8?Q?HBR_and_HBR2+_voltage_swing_table?=
Thread-Index: AQHWOWuJURWBPPpLy0iObem46/qnTqjJZHmA
Date: Thu, 4 Jun 2020 20:43:25 +0000
Message-ID: <1cb4c98a3b9612158b6390ee7501b4bd7515a08e.camel@intel.com>
References: <20200602205424.138143-1-jose.souza@intel.com>
 <159116370185.12267.4347121232376396516@emeril.freedesktop.org>
In-Reply-To: <159116370185.12267.4347121232376396516@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.138.209]
Content-ID: <B978402847B5D443AB7099CF07E6F631@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_HBR_and_HBR2+_voltage_swing_table?=
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

On Wed, 2020-06-03 at 05:55 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Add HBR and HBR2+ voltage swing table
> URL   : https://patchwork.freedesktop.org/series/77934/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8573_full -> Patchwork_17847_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Thanks for the review Khaled, pushed to dinq.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17847_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
>     - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1185] / [i915#189])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl3/igt@i915_suspend@forcewake.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#70] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl8/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1525] / [i915#95])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_hdr@bpc-switch.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl8/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@kms_psr@psr2_dpms.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-iclb7/igt@kms_psr@psr2_dpms.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
>     - shard-skl:          [FAIL][21] ([i915#1528]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> 
>   * {igt@i915_selftest@perf@request}:
>     - shard-tglb:         [DMESG-FAIL][23] ([i915#1823]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-tglb5/igt@i915_selftest@perf@request.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-tglb3/igt@i915_selftest@perf@request.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - shard-glk:          [FAIL][25] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-glk:          [DMESG-FAIL][27] ([i915#1925] / [i915#1926]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * {igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2}:
>     - shard-glk:          [FAIL][29] ([i915#1928]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-glk8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
>     - shard-skl:          [FAIL][31] ([i915#79]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
>     - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +8 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1}:
>     - shard-skl:          [FAIL][35] ([i915#1928]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [INCOMPLETE][37] ([i915#123] / [i915#69]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40] +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb3/igt@kms_psr@psr2_suspend.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * {igt@perf@polling-parameterized}:
>     - shard-iclb:         [FAIL][45] ([i915#1542]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@perf@polling-parameterized.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-iclb6/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          [TIMEOUT][47] ([i915#1319] / [i915#1635]) -> [FAIL][48] ([fdo#110321] / [fdo#110336]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl1/igt@kms_content_protection@atomic-dpms.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          [FAIL][49] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][50] ([i915#1319] / [i915#1635])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl1/igt@kms_content_protection@legacy.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          [TIMEOUT][51] ([i915#1319]) -> [TIMEOUT][52] ([i915#1319] / [i915#1635])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl8/igt@kms_content_protection@lic.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-apl:          [FAIL][53] ([i915#1525] / [i915#95]) -> [FAIL][54] ([i915#1525])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl7/igt@kms_fbcon_fbt@fbc.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/shard-apl8/igt@kms_fbcon_fbt@fbc.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>   [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
>   [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
>   [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
>   [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
>   [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
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
>   * Linux: CI_DRM_8573 -> Patchwork_17847
> 
>   CI-20190529: 20190529
>   CI_DRM_8573: 7dd051b025ee88fc5e358bc7d3438e1764f68257 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17847: 6c49c456cc63e42fd77667b19ef3e88780a047dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17847/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
