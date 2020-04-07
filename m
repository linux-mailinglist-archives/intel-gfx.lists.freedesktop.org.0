Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302531A178B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D43C6E16D;
	Tue,  7 Apr 2020 21:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3A96E16D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:56:55 +0000 (UTC)
IronPort-SDR: MdH97nDyGXsccil6IpuqCtjM8GPwN+rQhvqymAsApQCxXUE26L4ykDhZpM5La38CzCZR4qlLvi
 JFy85oYjkz5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:56:55 -0700
IronPort-SDR: Nd/ejAztH4mmaP+0EVVns+OX7xEYJ+GKmT4rZ276UdVISlys3hT2AheedFte9wwONpJgsP9n7j
 q2XdzWIQWdyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="297062420"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2020 14:56:55 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 14:56:54 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.106]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 14:56:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvOF0gZHJtL2k5MTUvZGlzcGxheTogTW92ZSBvdXQgY29kZSB0?=
 =?utf-8?Q?o_return_the_digital=5Fport_of_the_aux_ch?=
Thread-Index: AQHWDMdaQeKDAV+NGUa25N4mye6xuKhuqyUA
Date: Tue, 7 Apr 2020 21:56:54 +0000
Message-ID: <5c6662c691a347e546890f9ffd7cd5d432584888.camel@intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <158625533526.26328.15668411961822133188@emeril.freedesktop.org>
In-Reply-To: <158625533526.26328.15668411961822133188@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.135.56.68]
Content-ID: <38683A6C7E3E6D4B8859D2C797AE1C78@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/8=5D_drm/i915/display=3A_Move_out_c?=
 =?utf-8?q?ode_to_return_the_digital=5Fport_of_the_aux_ch?=
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

On Tue, 2020-04-07 at 10:28 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/8] drm/i915/display: Move out code
> to return the digital_port of the aux ch
> URL   : https://patchwork.freedesktop.org/series/75576/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8264_full -> Patchwork_17226_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17226_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_17226_full, please notify your bug team to
> allow them
>   to document this new failure mode, which will reduce false
> positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in
> Patchwork_17226_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
> 

Forgot to fix this one in v3, will do it.

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17226_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#1066])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl1/igt@i915_suspend@sysfs-reader.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-apl4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] /
> [i915#93] / [i915#95])
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54] /
> [i915#95])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
> +3 similar issues
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#72])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#34])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl7/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-panning-interruptible:
>     - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-hsw8/igt@kms_flip@flip-vs-panning-interruptible.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-hsw1/igt@kms_flip@flip-vs-panning-interruptible.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#1185]
> / [i915#250])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] /
> [i915#265]) +1 similar issue
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1
> similar issue
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
>     - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28]
> +4 similar issues
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-tglb:         [FAIL][29] ([i915#1277]) -> [PASS][30]
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb6/igt@gem_exec_balancer@hang.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-tglb2/igt@gem_exec_balancer@hang.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [FAIL][31] ([i915#1516]) -> [PASS][32]
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-hsw8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - shard-skl:          [FAIL][33] ([i915#138]) -> [PASS][34]
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-skl8/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@i915_selftest@live@blt:
>     - shard-snb:          [DMESG-FAIL][35] ([i915#1409]) ->
> [PASS][36]
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb4/igt@i915_selftest@live@blt.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-snb5/igt@i915_selftest@live@blt.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
> +1 similar issue
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@i915_suspend@debugfs-reader.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][41] ([i915#180] / [i915#93] /
> [i915#95]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-glk:          [FAIL][43] ([i915#34]) -> [PASS][44]
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-apl:          [FAIL][45] ([i915#79]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-apl6/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-snb:          [DMESG-WARN][47] ([i915#42]) -> [PASS][48]
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-none:
>     - shard-kbl:          [DMESG-WARN][49] ([i915#165] / [i915#78])
> -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-none.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-none.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * {igt@perf@blocking-parameterized}:
>     - shard-hsw:          [FAIL][53] ([i915#1542]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-hsw6/igt@perf@blocking-parameterized.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/shard-hsw4/igt@perf@blocking-parameterized.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
>   [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
>   [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
>   [i915#1516]: https://gitlab.freedesktop.org/drm/intel/issues/1516
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
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
>   * Linux: CI_DRM_8264 -> Patchwork_17226
> 
>   CI-20190529: 20190529
>   CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17226: ba04f3ced69643939779e78860b0d7054875c784 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17226/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
