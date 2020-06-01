Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D921EA8AF
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 19:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9335E6E0D2;
	Mon,  1 Jun 2020 17:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A2689B4D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 17:54:46 +0000 (UTC)
IronPort-SDR: guZUdqdV1WQ9FFW/uDLkauVU9Xw8ZrMumh/UgXFbFfH7WvYsZiif93lhuA7QpMIRclT1eO5hFQ
 uF7SdhM3mH/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 10:54:46 -0700
IronPort-SDR: 5xp3CxHymetyW8NTvVJ3ok4+kGyY7g2alc/Vu6Iu1Z033WQx+30100p16bY7rvJ6AscX0djnS2
 YlZguaEB3brg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="272069804"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 01 Jun 2020 10:54:46 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 10:54:45 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.234]) with mapi id 14.03.0439.000;
 Mon, 1 Jun 2020 10:54:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTUvdGdsOiBVcGRh?=
 =?utf-8?Q?te_TC_DP_vswing_table?=
Thread-Index: AQHWNj67L/DTGQJdnUuwGIAcV7SVeajEhK+A
Date: Mon, 1 Jun 2020 17:54:44 +0000
Message-ID: <ff644c173130a156a6f90ad8e6fe48517b694eca.camel@intel.com>
References: <20200529232757.37832-1-jose.souza@intel.com>
 <159081460746.9483.14982003828132717008@emeril.freedesktop.org>
In-Reply-To: <159081460746.9483.14982003828132717008@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.39.108]
Content-ID: <8932E6612B11AC4AA460DD7A85A91420@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Update_TC_DP_vswing_table?=
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

On Sat, 2020-05-30 at 04:56 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Update TC DP vswing table
> URL   : https://patchwork.freedesktop.org/series/77806/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8557_full -> Patchwork_17824_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq, thanks for the review Khaled.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17824_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl1/igt@i915_suspend@debugfs-reader.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180] / [i915#93] / [i915#95])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#155])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl7/igt@i915_suspend@forcewake.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_color@pipe-c-legacy-gamma:
>     - shard-hsw:          [PASS][9] -> [INCOMPLETE][10] ([i915#61])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-hsw1/igt@kms_color@pipe-c-legacy-gamma.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-hsw6/igt@kms_color@pipe-c-legacy-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>     - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#54])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
>     - shard-skl:          [FAIL][21] ([i915#1528]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl4/igt@gem_softpin@noreloc-s3.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_vm_create@isolation:
>     - shard-apl:          [TIMEOUT][25] ([i915#1635]) -> [PASS][26] +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl7/igt@gem_vm_create@isolation.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl6/igt@gem_vm_create@isolation.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][27] ([i915#1436] / [i915#716]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_color@pipe-a-ctm-blue-to-red:
>     - shard-skl:          [FAIL][29] ([i915#129]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl4/igt@kms_color@pipe-a-ctm-blue-to-red.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl1/igt@kms_color@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
>     - shard-skl:          [FAIL][31] ([i915#54]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [INCOMPLETE][33] ([i915#69]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * {igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1}:
>     - shard-skl:          [FAIL][35] ([i915#1928]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend@b-dp1}:
>     - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +4 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +5 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][45] ([i915#588]) -> [SKIP][46] ([i915#658])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][47] ([i915#468]) -> [FAIL][48] ([i915#454])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          [FAIL][49] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][50] ([i915#1319] / [i915#1635])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl2/igt@kms_content_protection@legacy.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl8/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          [TIMEOUT][51] ([i915#1319]) -> [FAIL][52] ([fdo#110321])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl7/igt@kms_content_protection@srm.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          [FAIL][53] ([i915#357]) -> [FAIL][54] ([i915#357] / [i915#93] / [i915#95])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-kbl3/igt@kms_content_protection@uevent.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-kbl7/igt@kms_content_protection@uevent.html
>     - shard-apl:          [FAIL][55] ([i915#357]) -> [FAIL][56] ([i915#357] / [i915#95])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl7/igt@kms_content_protection@uevent.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-glk:          [DMESG-WARN][57] ([i915#1926]) -> [DMESG-FAIL][58] ([i915#1925] / [i915#1926])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-apl:          [TIMEOUT][59] ([i915#1635]) -> [SKIP][60] ([fdo#109271])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          [FAIL][61] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8557/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
>   [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
>   [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
>   * Linux: CI_DRM_8557 -> Patchwork_17824
> 
>   CI-20190529: 20190529
>   CI_DRM_8557: cd02c2938ef1c5e2ca72b8240918151060dfbf92 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17824: 345dd71a89fb0aefcf50fb1c225825ee3cf3cf76 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17824/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
