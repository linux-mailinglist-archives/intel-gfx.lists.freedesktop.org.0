Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56693D8F34
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 15:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEC26EA7C;
	Wed, 28 Jul 2021 13:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E259A6EA7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 13:34:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="192258211"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="192258211"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 06:34:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="475822393"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 06:34:26 -0700
Date: Wed, 28 Jul 2021 16:34:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210728133422.GB129487@ideak-desk.fi.intel.com>
References: <20210727134400.101290-1-imre.deak@intel.com>
 <162742628201.18664.10805502399627734855@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162742628201.18664.10805502399627734855@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_workaround_to_disable_CMTG_clock_gating?=
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

On Tue, Jul 27, 2021 at 10:51:22PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp: Add workaround to disable CMTG clock gating
> URL   : https://patchwork.freedesktop.org/series/93067/
> State : failure

Thanks for the review pushed to -din with the checkpatch errors fixed.

The failure on TGL is unrelated.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10404_full -> Patchwork_20716_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20716_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20716_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20716_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@independent@vcs1:
>     - shard-tglb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-tglb1/igt@gem_exec_schedule@independent@vcs1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb6/igt@gem_exec_schedule@independent@vcs1.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - {shard-rkl}:        [SKIP][3] ([i915#1845]) -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@runner@aborted:
>     - {shard-rkl}:        ([FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8]) ([i915#2029] / [i915#3002] / [i915#3810] / [i915#3811]) -> ([FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13]) ([i915#2029] / [i915#3002] / [i915#3621] / [i915#3810] / [i915#3811])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-6/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-5/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-2/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-1/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-2/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@runner@aborted.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20716_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([i915#155])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-kbl7/igt@gem_eio@in-flight-suspend.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl3/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2846])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-glk1/igt@gem_exec_fair@basic-deadline.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2842])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2842]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          NOTRUN -> [FAIL][25] ([i915#2842]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-all:
>     - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-glk8/igt@gem_exec_whisper@basic-fds-all.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#307])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][30] ([i915#2658])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][31] ([i915#2724])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1436] / [i915#716])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl8/igt@gen9_exec_parse@allowed-single.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@fences:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#579])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb7/igt@i915_pm_rpm@fences.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-iclb:         [PASS][36] -> [DMESG-WARN][37] ([i915#3621])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2705])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-glk:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk1/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +40 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111825])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2672])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +374 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +54 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#1188])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +50 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109289])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][57] ([i915#265])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#3536])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109441])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][68] ([i915#31])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb2/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([IGT#2])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180] / [i915#295])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109502])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +115 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@prime_vgem@shrink:
>     - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1982]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl2/igt@prime_vgem@shrink.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl7/igt@prime_vgem@shrink.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-kbl1/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl3/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][80] ([i915#2582]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@fbdev@info.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][82] ([i915#658]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb4/igt@feature_discovery@psr2.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-skl:          [INCOMPLETE][84] ([i915#146] / [i915#198]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - {shard-rkl}:        [TIMEOUT][86] ([i915#3063]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-5/igt@gem_eio@in-flight-contexts-immediate.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-5/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][88] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - shard-iclb:         [INCOMPLETE][90] -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb3/igt@gem_exec_endless@dispatch@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb8/igt@gem_exec_endless@dispatch@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][96] ([i915#2842]) -> [PASS][97] +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - {shard-rkl}:        [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-scanout@vecs0:
>     - {shard-rkl}:        [SKIP][100] ([i915#3639]) -> [PASS][101] +3 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@gem_exec_reloc@basic-scanout@vecs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][102] ([i915#1982]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][104] ([i915#454]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-rkl}:        [DMESG-FAIL][106] ([i915#1021]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][108] ([i915#2782]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][110] ([i915#3638]) -> [PASS][111] +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][112] ([i915#118] / [i915#95]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][114] ([i915#3721]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - {shard-rkl}:        [SKIP][116] ([fdo#111614]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][118] ([i915#3678]) -> [PASS][119] +6 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-c-ctm-max:
>     - {shard-rkl}:        [SKIP][120] ([i915#1149] / [i915#1849]) -> [PASS][121] +3 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-5/igt@kms_color@pipe-c-ctm-max.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_color@pipe-c-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - {shard-rkl}:        [SKIP][122] ([fdo#112022]) -> [PASS][123] +12 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
>     - {shard-rkl}:        [SKIP][124] ([fdo#111825]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
>     - shard-iclb:         [SKIP][126] ([i915#3788]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
>     - {shard-rkl}:        [SKIP][128] ([fdo#111314]) -> [PASS][129] +5 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [FAIL][132] ([i915#2122]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - {shard-rkl}:        [SKIP][134] ([i915#1849]) -> [PASS][135] +19 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][136] ([fdo#108145] / [i915#265]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>     - {shard-rkl}:        [SKIP][138] ([i915#1849] / [i915#3558]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
> 
>   * igt@kms_psr@cursor_plane_onoff:
>     - {shard-rkl}:        [SKIP][140] ([i915#1072]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-2/igt@kms_psr@cursor_plane_onoff.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][142] ([fdo#109441]) -> [PASS][143] +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          [INCOMPLETE][144] ([i915#198]) -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-skl5/igt@kms_psr@suspend.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/shard-skl2/igt@kms_psr@suspend.html
> 
>   * igt@kms_vblank@crtc-id:
>     - {shard-rkl}:        [SKIP][146] ([i915#1845]) -> [PASS][147] +16 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/shard-rkl-1/igt@kms_vblank@crtc-id.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20716/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
