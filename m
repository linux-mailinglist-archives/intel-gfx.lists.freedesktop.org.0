Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBDA300161
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 12:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71EE6E323;
	Fri, 22 Jan 2021 11:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3936B6E323
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 11:23:19 +0000 (UTC)
IronPort-SDR: jrNnW+vMdgtXFv6u7dwXeUG30W9e4Sn2DkAeCfA1laEtgUQ1H1EcPDaIWpu/DoDx7BMBK2W47T
 fP02PyFcrSfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="176858309"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="176858309"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 03:23:18 -0800
IronPort-SDR: XALyoxgXLZpeLo+7pmZqdqWXOzxoEsxUQt/NmycjRisOj8+l0MK+dwol/Rin1xjHvwcYYIeSLm
 sfFUp1HOWQrw==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="574596107"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 03:23:17 -0800
Date: Fri, 22 Jan 2021 16:34:50 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210122110449.GA15835@intel.com>
References: <20210119064655.1605-1-anshuman.gupta@intel.com>
 <161116841080.8788.5294966811685878528@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161116841080.8788.5294966811685878528@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSERD?=
 =?utf-8?q?P_misc_fixes_=28rev2=29?=
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

On 2021-01-20 at 18:46:50 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: HDCP misc fixes (rev2)
> URL   : https://patchwork.freedesktop.org/series/86025/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9650_full -> Patchwork_19422_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19422_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19422_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19422_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@sysfs_timeslice_duration@timeout@rcs0:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html
	These failures are not realted HDCP, Rev2 just has some cosmetics changes.
	Rev1 CI results were passing. https://patchwork.freedesktop.org/series/86025/#rev1
	Pushed to drm-intel-next.
	Thanks for review.
BR,
Anshuman 	
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19422_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-glk:          [PASS][2] -> [TIMEOUT][3] ([i915#2918])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk5/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process:
>     - shard-hsw:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-hsw8/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2846])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-many-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2389])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-hsw:          NOTRUN -> [SKIP][12] ([fdo#109271]) +222 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-hsw8/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +29 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl3/igt@gen3_mixed_blits.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#658])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl3/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl3/igt@i915_suspend@debugfs-reader.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl5/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#2521])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_async_flips@test-time-stamp:
>     - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2597])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111304])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - shard-hsw:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-hsw8/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl3/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-snb5/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl3/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +6 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#54])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#2598])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2122])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2672])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +60 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271]) +11 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1188])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl7/igt@kms_hdr@bpc-switch.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#533])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][42] ([fdo#108145] / [i915#265])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#658])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_import_export@prime:
>     - shard-kbl:          [INCOMPLETE][47] -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl7/igt@drm_import_export@prime.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl3/igt@drm_import_export@prime.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][49] ([i915#658]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb5/igt@feature_discovery@psr2.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-skl:          [INCOMPLETE][51] ([i915#198] / [i915#2624]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl3/igt@gem_exec_capture@pi@vecs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl5/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][53] ([i915#2842]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][55] ([i915#2842]) -> [PASS][56] +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][57] ([i915#2842]) -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][59] ([i915#2842]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-glk:          [DMESG-WARN][61] ([i915#1610]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk4/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt:
>     - shard-hsw:          [INCOMPLETE][63] -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-hsw8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][65] ([i915#1436] / [i915#1982] / [i915#716]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][67] ([i915#2880]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][69] ([i915#454]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-skl:          [INCOMPLETE][71] ([i915#146] / [i915#198]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl2/igt@i915_suspend@sysfs-reader.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl3/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74] +6 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-hsw:          [FAIL][75] ([i915#96]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [FAIL][77] ([i915#2346]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][79] ([i915#79]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [FAIL][81] ([i915#2122]) -> [PASS][82] +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-skl:          [DMESG-WARN][83] ([i915#1982]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][89] ([i915#2684]) -> [WARN][90] ([i915#1804] / [i915#2684])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][91] ([i915#1804] / [i915#2684]) -> [WARN][92] ([i915#2681] / [i915#2684])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][93] ([i915#658]) -> [SKIP][94] ([i915#2920]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][95] ([i915#2920]) -> [SKIP][96] ([i915#658])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][97], [FAIL][98]) ([i915#2295] / [i915#2505] / [i915#2722]) -> [FAIL][99] ([i915#2295])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl6/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl7/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-kbl7/igt@runner@aborted.html
>     - shard-glk:          ([FAIL][100], [FAIL][101]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> [FAIL][102] ([i915#2295] / [k.org#202321])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk4/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-glk2/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][103], [FAIL][104]) ([i915#1436] / [i915#2295]) -> [FAIL][105] ([i915#2295])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl9/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl4/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/shard-skl10/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2880]: https://gitlab.freedesktop.org/drm/intel/issues/2880
>   [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
>   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
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
>   * Linux: CI_DRM_9650 -> Patchwork_19422
> 
>   CI-20190529: 20190529
>   CI_DRM_9650: 3f989d1bb4cfd91e25549f9fd7a750412581dcc4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19422: e03462940f0c1769c2f0adaf2e31a5d71667ecbe @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19422/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
