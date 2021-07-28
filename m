Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B035A3D86DA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 06:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3A86E418;
	Wed, 28 Jul 2021 04:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8236E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 04:43:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="276362962"
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; d="scan'208";a="276362962"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 21:43:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; d="scan'208";a="517271280"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 21:43:30 -0700
Date: Tue, 27 Jul 2021 21:43:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210728044329.GD1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210727060046.2040579-1-matthew.d.roper@intel.com>
 <162743935885.22806.4258913649697285771@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162743935885.22806.4258913649697285771@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Allow_underrun_recovery_when_possible_=28rev2?=
 =?utf-8?q?=29?=
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

On Wed, Jul 28, 2021 at 02:29:18AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl_p: Allow underrun recovery when possible (rev2)
> URL   : https://patchwork.freedesktop.org/series/93054/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10405_full -> Patchwork_20717_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20717_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20717_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20717_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_selftest@all@damage_iter_no_damage:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@kms_selftest@all@damage_iter_no_damage.html

This seems to be a regression on all platforms that started in
CI_DRM_10402; it's not related to this series.

Patch applied to di-next; thanks Stan for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@execlists:
>     - {shard-rkl}:        [PASS][2] -> [DMESG-FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@i915_selftest@live@execlists.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-5/igt@i915_selftest@live@execlists.html
> 
>   * igt@runner@aborted:
>     - {shard-rkl}:        ([FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#3002] / [i915#3810] / [i915#3811]) -> ([FAIL][8], [FAIL][9], [FAIL][10]) ([i915#3002] / [i915#3811])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-2/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-5/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-5/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20717_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#658])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@feature_discovery@psr2.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb4/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +3 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-snb5/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#3063] / [i915#3648])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#2849])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#1888] / [i915#307])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk1/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-glk3/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#2428])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][29] ([i915#2658])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-snb2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][30] ([i915#2724])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-snb5/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1436] / [i915#716])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@fences:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#579])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-tglb6/igt@i915_pm_rpm@fences.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118] / [i915#95]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +354 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +31 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color@pipe-b-ctm-0-75:
>     - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-25:
>     - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl10/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][43] ([i915#1319])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl3/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-apl:          NOTRUN -> [FAIL][44] ([i915#2105])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
>     - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#3444])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2346])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111825])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-tglb6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2672])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271]) +211 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-snb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][59] ([i915#265])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2733])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +7 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl10/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1542])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@perf@blocking.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@perf@blocking.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +4 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@sysfs_clients@fair-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][69] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb7/igt@gem_eio@unwedge-stress.html
>     - {shard-rkl}:        [TIMEOUT][71] ([i915#3063]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@gem_eio@unwedge-stress.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        [FAIL][73] ([i915#2842]) -> [PASS][74] +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [FAIL][75] ([i915#2842]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-iclb:         [FAIL][79] ([i915#2428]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-iclb:         [FAIL][81] ([i915#307]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][83] ([i915#118] / [i915#95]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][85] ([i915#3638]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - {shard-rkl}:        [SKIP][87] ([i915#3721]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [FAIL][89] ([i915#3678]) -> [PASS][90] +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_color@pipe-b-ctm-negative:
>     - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92] +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement:
>     - {shard-rkl}:        [SKIP][93] ([fdo#112022]) -> [PASS][94] +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - {shard-rkl}:        [SKIP][95] ([fdo#111825]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
>     - {shard-rkl}:        [SKIP][97] ([fdo#111314]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - {shard-rkl}:        [SKIP][99] ([i915#1849]) -> [PASS][100] +5 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-c-query-forked-hang:
>     - {shard-rkl}:        [SKIP][105] ([i915#1845]) -> [PASS][106] +3 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-1/igt@kms_vblank@pipe-c-query-forked-hang.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-rkl-6/igt@kms_vblank@pipe-c-query-forked-hang.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][107] ([i915#1722]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@perf@polling-small-buf.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl7/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][109] ([i915#1804] / [i915#2684]) -> [WARN][110] ([i915#2684]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][111] ([i915#3743]) -> [FAIL][112] ([i915#3722])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([i915#658]) +2 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][117], [FAIL][118]) ([i915#2426] / [i915#3002] / [i915#3363]) -> ([FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([i915#180] / [i915#1814] / [i915#2426] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl4/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl4/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl6/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-kbl1/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][125], [FAIL][126], [FAIL][127]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][128], [FAIL][129]) ([i915#2426] / [i915#3002] / [i915#3363])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl3/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl7/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl6/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-apl7/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][130], [FAIL][131]) ([i915#2426] / [i915#3002] / [i915#3363]) -> ([FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#3363])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/shard-skl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [i915#1021]: https://gitlab.freedesktop.org/drm/intel/issues/1021
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>   [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freede
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20717/index.html

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
