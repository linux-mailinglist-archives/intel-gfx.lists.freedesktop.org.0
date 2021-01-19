Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 212062FBE95
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 19:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B5AC6E885;
	Tue, 19 Jan 2021 18:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3CA6E885
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 18:09:32 +0000 (UTC)
IronPort-SDR: WN4y1t4SjKJmPC8ARa3Xqy34lt6ioLbkRek9YBuZdJOIKE/33kXgRvr8N17Yc2EkyLr3yb4loM
 ypbQ4es9NICw==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="166637094"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="166637094"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 10:09:32 -0800
IronPort-SDR: 8+qCeC0lOFPO0P+SpNo8ymbrMTXrUTTuINNbjhlxYRr/AUw+vGbRo1lYHcJS+XgH/ITRMjYXSN
 HflWMKoEuu2Q==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="569780899"
Received: from arielsc1-mobl.amr.corp.intel.com (HELO [10.255.229.238])
 ([10.255.229.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 10:09:31 -0800
To: intel-gfx@lists.freedesktop.org
References: <20210111193000.16738-1-aditya.swarup@intel.com>
 <161040354903.25135.12759590348421909326@emeril.freedesktop.org>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <6441d6e8-8d38-c1da-99c1-c95dee83382d@intel.com>
Date: Tue, 19 Jan 2021 10:09:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <161040354903.25135.12759590348421909326@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVXNl?=
 =?utf-8?q?_TGL_stepping_info_and_add_ADLS_platform_changes_=28rev2=29?=
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

On 1/11/21 2:19 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: Use TGL stepping info and add ADLS platform changes (rev2)
> URL   : https://patchwork.freedesktop.org/series/85639/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9581_full -> Patchwork_19317_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19317_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19317_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19317_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-kbl:          [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@sysfs_timeslice_duration@timeout@rcs0:
>     - shard-skl:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl9/igt@sysfs_timeslice_duration@timeout@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl8/igt@sysfs_timeslice_duration@timeout@rcs0.html
> 

These regressions are unrelated to the changes from the patch series posted as it only affects TGL and ADLS.

aswarup

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19317_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_import_export@prime:
>     - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([i915#2895])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl1/igt@drm_import_export@prime.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl6/igt@drm_import_export@prime.html
> 
>   * igt@gem_ctx_persistence@engines-hang:
>     - shard-hsw:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw4/igt@gem_ctx_persistence@engines-hang.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@bcs0:
>     - shard-hsw:          NOTRUN -> [FAIL][8] ([i915#2389]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw2/igt@gem_exec_reloc@basic-wide-active@bcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-glk9/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@kms_color@pipe-c-ctm-red-to-blue:
>     - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl8/igt@kms_color@pipe-c-ctm-red-to-blue.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl5/igt@kms_color@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-hsw:          NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw4/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
>     - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54]) +4 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#2370])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2346])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#79])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [PASS][22] -> [FAIL][23] ([i915#2598])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2122]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +6 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-hsw:          NOTRUN -> [DMESG-WARN][27] ([i915#2637])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
>     - shard-hsw:          NOTRUN -> [SKIP][30] ([fdo#109271]) +198 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw2/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-iclb:         [PASS][31] -> [DMESG-FAIL][32] ([i915#1226])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-iclb6/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-iclb4/igt@kms_plane_lowres@pipe-a-tiling-x.html
>     - shard-glk:          [PASS][33] -> [DMESG-FAIL][34] ([i915#118] / [i915#95])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1542])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl4/igt@perf@polling-parameterized.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl9/igt@perf@polling-parameterized.html
> 
>   * igt@runner@aborted:
>     - shard-hsw:          NOTRUN -> [FAIL][39] ([i915#2295] / [i915#2505])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-hsw4/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-iclb:         [FAIL][40] ([i915#2896]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-iclb3/igt@gem_ctx_persistence@smoketest.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-iclb5/igt@gem_ctx_persistence@smoketest.html
> 
>   * {igt@gem_exec_fair@basic-none-share@rcs0}:
>     - shard-apl:          [SKIP][42] ([fdo#109271]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-glk:          [FAIL][44] ([i915#2842]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * {igt@gem_exec_fair@basic-pace@rcs0}:
>     - shard-kbl:          [FAIL][46] ([i915#2842]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * {igt@gem_vm_create@destroy-race}:
>     - shard-tglb:         [TIMEOUT][48] ([i915#2795]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-tglb3/igt@gem_vm_create@destroy-race.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-tglb2/igt@gem_vm_create@destroy-race.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-skl:          [FAIL][50] ([i915#54]) -> [PASS][51] +6 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>     - shard-glk:          [FAIL][52] ([i915#79]) -> [PASS][53] +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [FAIL][54] ([i915#2122]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-skl:          [INCOMPLETE][56] ([i915#146] / [i915#648]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [SKIP][58] ([fdo#109642] / [fdo#111068]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-iclb7/igt@kms_psr2_su@page_flip.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-tglb:         [SKIP][60] ([i915#668]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-tglb1/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-tglb3/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * {igt@perf@non-zero-reason}:
>     - shard-skl:          [FAIL][62] -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl2/igt@perf@non-zero-reason.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl9/igt@perf@non-zero-reason.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][64] ([i915#1804] / [i915#2684]) -> [WARN][65] ([i915#2681] / [i915#2684])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][66] ([i915#1602]) -> [INCOMPLETE][67] ([i915#155])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][68], [FAIL][69]) ([i915#1814] / [i915#2295]) -> ([FAIL][70], [FAIL][71]) ([i915#2295] / [i915#2505] / [i915#2722])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl2/igt@runner@aborted.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-kbl4/igt@runner@aborted.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl6/igt@runner@aborted.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-kbl6/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][72], [FAIL][73]) ([i915#1436] / [i915#2295]) -> ([FAIL][74], [FAIL][75], [FAIL][76], [FAIL][77]) ([i915#1436] / [i915#2295] / [i915#2426])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl5/igt@runner@aborted.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9581/shard-skl4/igt@runner@aborted.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl3/igt@runner@aborted.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl5/igt@runner@aborted.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl9/igt@runner@aborted.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/shard-skl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#2637]: https://gitlab.freedesktop.org/drm/intel/issues/2637
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
>   [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2895]: https://gitlab.freedesktop.org/drm/intel/issues/2895
>   [i915#2896]: https://gitlab.freedesktop.org/drm/intel/issues/2896
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
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
>   * Linux: CI_DRM_9581 -> Patchwork_19317
> 
>   CI-20190529: 20190529
>   CI_DRM_9581: 6f3bd6b19cb6cf20481e7c275d04b54ef7539655 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19317: f919d3dd38ae363eb2e89f03660d353e4acf5d9c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19317/index.html
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
