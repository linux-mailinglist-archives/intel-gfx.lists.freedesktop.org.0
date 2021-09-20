Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AEC4117A2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 16:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5DF6E520;
	Mon, 20 Sep 2021 14:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 375976E520
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 14:53:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="223180165"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="223180165"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 07:53:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="435549909"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 07:53:23 -0700
Date: Mon, 20 Sep 2021 07:53:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210920145322.GT3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210917170845.836358-1-matthew.d.roper@intel.com>
 <163192959909.23825.2996434222036166293@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163192959909.23825.2996434222036166293@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_wa_list_per-gt_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Sep 18, 2021 at 01:46:39AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Make wa list per-gt (rev2)
> URL   : https://patchwork.freedesktop.org/series/94811/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10605_full -> Patchwork_21091_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21091_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21091_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21091_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic@plane-invalid-params:
>     - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb6/igt@kms_atomic@plane-invalid-params.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb2/igt@kms_atomic@plane-invalid-params.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3728

> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

<0>[  148.225355] NMI watchdog: Watchdog detected hard LOCKUP on cpu 2

with some CPU(s) stuck in snd_hda_codec's azx_interrupt().  We've seen
this signature on other CI failures recently too; it seems to be
something introduced by the 5.15-rc1 backmerge, although I'm not sure if
there's a gitlab issue open for it yet.

> 
>   * igt@kms_sequence@queue-idle:
>     - shard-skl:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl8/igt@kms_sequence@queue-idle.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl3/igt@kms_sequence@queue-idle.html

Looks like https://gitlab.freedesktop.org/drm/intel/-/issues/2441 was
just closed because it couldn't be reproduced, but it seems to still be
happening.



Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21091_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_import_export@flink:
>     - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#750])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb7/igt@drm_import_export@flink.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb2/igt@drm_import_export@flink.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#146] / [i915#198])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +9 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl10/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#109283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_media_vme:
>     - shard-tglb:         NOTRUN -> [SKIP][14] ([i915#284])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@gem_media_vme.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl8/igt@gem_pread@exhaustion.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2856])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#109506] / [i915#2411])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111614]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3777])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#111615])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3689] / [i915#3886])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3689]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +129 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-negative:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-c-gamma:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl8/igt@kms_color_chamelium@pipe-c-gamma.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3116])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][29] ([i915#1319])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3359])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109279] / [i915#3359])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2346] / [i915#533])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#2411] / [i915#456]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2122]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-interruptible@a-edp1:
>     - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl10/igt@kms_flip@plain-flip-interruptible@a-edp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl4/igt@kms_flip@plain-flip-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][40] -> [SKIP][41] ([i915#3701])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111825]) +11 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +5 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#2828] / [i915#456])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3536])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658]) +4 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#2920]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2437])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#1542])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl7/igt@perf@polling-parameterized.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl5/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#2994])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl7/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-kbl:          [INCOMPLETE][61] ([i915#4130]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl3/igt@core_hotunplug@unbind-rebind.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl2/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][63] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb8/igt@gem_eio@unwedge-stress.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [SKIP][65] ([fdo#109271]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +5 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][69] ([i915#79]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [INCOMPLETE][71] ([i915#146] / [i915#198]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-tglb:         [INCOMPLETE][73] ([i915#2411] / [i915#456]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-skl:          [INCOMPLETE][75] ([i915#198] / [i915#2828]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [FAIL][81] ([i915#3343]) -> [SKIP][82] ([i915#3288])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][83] ([i915#1804] / [i915#2684]) -> [WARN][84] ([i915#2684])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][85] ([i915#3743]) -> [FAIL][86] ([i915#3722])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][87] ([i915#658]) -> [SKIP][88] ([i915#2920]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl3/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl3/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl3/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl3/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl3/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl1/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl3/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl1/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl1/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl4/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl6/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl3/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-kbl3/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][111], [FAIL][112]) ([i915#3002]) -> ([FAIL][113], [FAIL][114], [FAIL][115]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690] / [i915#456])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb3/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb2/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb8/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb8/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/shard-tglb3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3288]: https://gitlab.freedesktop.org/drm/intel/issues/3288
>   [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3722]: https://gitlab.freedesktop.org/drm/intel/issues/3722
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10605 -> Patchwork_21091
> 
>   CI-20190529: 20190529
>   CI_DRM_10605: e61e36045f57a5aaeef91f54274937843ee3d0d5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21091: 66f78983c011b9feb4c2912ebc997d3f9f19116d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21091/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
