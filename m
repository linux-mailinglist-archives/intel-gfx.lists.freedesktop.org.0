Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362A41F575
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 21:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575BD6F40F;
	Fri,  1 Oct 2021 19:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E42C6F388
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 19:08:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="223642790"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="223642790"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 12:08:05 -0700
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="710165048"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 12:08:05 -0700
Date: Fri, 1 Oct 2021 12:08:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20211001190803.GF3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210926184545.1407-1-michal.wajdeczko@intel.com>
 <163268830659.27226.16733621767509935874@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163268830659.27226.16733621767509935874@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Improve_CTB_error_handling_=28rev3=29?=
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

On Sun, Sep 26, 2021 at 08:31:46PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/guc: Improve CTB error handling (rev3)
> URL   : https://patchwork.freedesktop.org/series/92118/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10644_full -> Patchwork_21161_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks for the patches.


Matt

>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21161_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_exec@basic-close-race:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1895])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb8/igt@gem_ctx_exec@basic-close-race.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb2/igt@gem_ctx_exec@basic-close-race.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1373])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([i915#2369] / [i915#3063] / [i915#3648])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][7] ([i915#2846])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][13] -> [SKIP][14] ([i915#2190])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#3323])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +299 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl7/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl6/igt@i915_pm_dc@dc6-psr.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][20] ([i915#1886] / [i915#2291])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +17 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +30 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-hpd-with-enabled-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb3/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][28] ([i915#1319])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][29] ([i915#1319]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3444])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +35 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2346])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#2411] / [i915#4173] / [i915#456])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([i915#155] / [i915#180] / [i915#636])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:
>     - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#2122])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk6/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-glk6/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-iclb:         [PASS][44] -> [SKIP][45] ([i915#3701])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +37 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2733])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +5 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#2920])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_sequence@queue-busy:
>     - shard-skl:          [PASS][58] -> [DMESG-WARN][59] ([i915#1982])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl3/igt@kms_sequence@queue-busy.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl5/igt@kms_sequence@queue-busy.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl3/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994]) +4 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl1/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][62] ([i915#2410]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][64] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][66] ([i915#2842]) -> [PASS][67] +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
>     - shard-iclb:         [FAIL][70] ([i915#2842]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][72] ([i915#2521]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][74] ([i915#118] / [i915#95]) -> [PASS][75] +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-glk4/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][78] ([i915#2346]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][80] ([i915#2346] / [i915#533]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [FAIL][82] ([i915#2122]) -> [PASS][83] +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-tglb:         [INCOMPLETE][84] ([i915#456]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][86] ([i915#1188]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [SKIP][88] ([fdo#109441]) -> [PASS][89] +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb5/igt@kms_psr@psr2_dpms.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb2/igt@kms_psr@psr2_dpms.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][90] ([i915#3288]) -> [FAIL][91] ([i915#3343])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [INCOMPLETE][93] ([i915#155])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][94] ([i915#2920]) -> [SKIP][95] ([i915#658]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][96], [FAIL][97], [FAIL][98]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl2/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-kbl1/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl7/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl2/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl7/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-kbl1/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][109], [FAIL][110]) ([i915#180] / [i915#3002] / [i915#3363])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl8/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl7/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl1/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10644/shard-apl3/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/shard-apl2/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3288]: https://gitlab.freedesktop.org/drm/intel/issues/3288
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3343]: https://gitlab.freedesktop.org/drm/intel/issues/3343
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3444]: https://gitlab.freedesktop.org/drm/intel/issues/3444
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4173]: https://gitlab.freedesktop.org/drm/intel/issues/4173
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
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
>   * Linux: CI_DRM_10644 -> Patchwork_21161
> 
>   CI-20190529: 20190529
>   CI_DRM_10644: ca294d706a72bd502f7e36b988c57fd634880b00 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21161: fe02b7c0835428d2b14ebbb4d5a9bea6aa9db253 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21161/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
