Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB87741182A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 17:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4666E095;
	Mon, 20 Sep 2021 15:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1486E095
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 15:25:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308701128"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="308701128"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 08:25:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="612579078"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 08:25:36 -0700
Date: Mon, 20 Sep 2021 08:25:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210920152535.GU3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210916062736.1733587-1-ayaz.siddiqui@intel.com>
 <163192212924.808.10617425462633364556@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163192212924.808.10617425462633364556@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_=22intel=5F=22_as_prefix_in_set=5Fmocs=5Findex?=
 =?utf-8?b?KCkgKHJldjMp?=
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

On Fri, Sep 17, 2021 at 11:42:09PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Add "intel_" as prefix in set_mocs_index() (rev3)
> URL   : https://patchwork.freedesktop.org/series/94721/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10605_full -> Patchwork_21088_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21088_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21088_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21088_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

As seen on other CI series, a bunch of snd_hda_intel "spurious response"
errors, followed by

    <0>[  228.961637] NMI watchdog: Watchdog detected hard LOCKUP on cpu 4

with CPU cores stuck in azx_interrupt.

> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-iclb:         [PASS][2] -> [SKIP][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3701

except it's on a "ytileccs" subtest instead of just "ytile"

> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-tglb:         [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 

No clear error seen here.  But renaming a function causes no functional
change, so definitely not caused by this patch.


Applied to drm-intel-gt-next.  Thanks for the patch.

Matt

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21088_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +8 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl9/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [PASS][11] -> [SKIP][12] ([fdo#109271])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-tglb:         NOTRUN -> [SKIP][14] ([fdo#109283])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#456]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb2/igt@gem_exec_suspend@basic-s0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_media_vme:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#284])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@gem_media_vme.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl3/igt@gem_pread@exhaustion.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#2856])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +120 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109506] / [i915#2411])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#2411] / [i915#456] / [i915#750])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb5/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111614]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111615])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689] / [i915#3886])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb4/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl10/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-negative:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_color_chamelium@pipe-b-ctm-negative.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3116])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][36] ([i915#1319])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#2828] / [i915#456])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3359])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][40] ([i915#180])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109279] / [i915#3359])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#2346] / [i915#533])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>     - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2122])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][46] -> [SKIP][47] ([i915#3701])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111825]) +11 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +5 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3536])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +4 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#2920]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2437])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2530])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb7/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1722])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl1/igt@perf@polling-small-buf.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl3/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2994])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl3/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1731])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-iclb:         [INCOMPLETE][66] ([i915#4130]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb3/igt@core_hotunplug@unbind-rebind.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb7/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][68] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb8/igt@gem_eio@unwedge-stress.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [SKIP][70] ([fdo#109271]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [FAIL][72] ([i915#3343]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_color@pipe-b-ctm-green-to-red:
>     - shard-skl:          [DMESG-WARN][74] ([i915#1982]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl8/igt@kms_color@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][76] ([i915#79]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +8 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-tglb:         [INCOMPLETE][80] ([i915#2411] / [i915#456]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-skl:          [INCOMPLETE][82] ([i915#198] / [i915#2828]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][84] ([fdo#109441]) -> [PASS][85] +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][86] ([i915#1804] / [i915#2684]) -> [WARN][87] ([i915#2684])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][88] ([i915#1804] / [i915#2684]) -> [FAIL][89] ([i915#2680])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][90] ([i915#3743]) -> [FAIL][91] ([i915#3722])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][92] ([i915#658]) -> [SKIP][93] ([i915#2920]) +4 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10605/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
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
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3722]: https://gitlab.freedesktop.org/drm/intel/issues/3722
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
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
>   * Linux: CI_DRM_10605 -> Patchwork_21088
> 
>   CI-20190529: 20190529
>   CI_DRM_10605: e61e36045f57a5aaeef91f54274937843ee3d0d5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21088: d38b6fc0c7d160408643722616cb26784c1f6fc4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21088/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
