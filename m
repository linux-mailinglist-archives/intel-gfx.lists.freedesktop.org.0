Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0104331A9A5
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 03:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47BE6E223;
	Sat, 13 Feb 2021 02:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8C46E223
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 02:50:29 +0000 (UTC)
IronPort-SDR: SRA/szOFg1aDPmLn+9Ca23SPn7hqHSJEKykuKomms32oQLxcGq+hRCeHVW5EFroZhm5+H1PXBg
 ghvqru1Sfg7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="243991277"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="243991277"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 18:50:28 -0800
IronPort-SDR: AxokDMwEvRfUFvH5BjuWMwXnCQ/mIC3qXwk1qHnxBNV7xm5Sjgkz5b8jZKE2APJleSM6PT2k8/
 9ptm/y6elotg==
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="381950795"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 18:50:28 -0800
Date: Fri, 12 Feb 2021 18:50:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210213025027.GM2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210212211925.3418280-1-matthew.d.roper@intel.com>
 <161318192003.28858.5721480113191561362@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161318192003.28858.5721480113191561362@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_FPGA=5FDBG_is_disp?=
 =?utf-8?q?lay-specific_=28rev2=29?=
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

On Sat, Feb 13, 2021 at 02:05:20AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915: FPGA_DBG is display-specific (rev2)
> URL   : https://patchwork.freedesktop.org/series/87054/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9772_full -> Patchwork_19676_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19676_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19676_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19676_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb3/igt@gem_ctx_persistence@many-contexts.html

Looks like the machine simply crashed while running this test; it's not
related to these patches.

Applies to din; thanks Lucas for the reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19676_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][3] ([i915#1037] / [i915#180])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][4] ([i915#2846])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#2803])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#118] / [i915#95])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][21] ([i915#2658])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
>     - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1699]) +3 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#2822])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb7/igt@gem_vm_create@destroy-race.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb2/igt@gem_vm_create@destroy-race.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][26] ([i915#454])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +26 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +62 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_selftest@live@client:
>     - shard-glk:          [PASS][29] -> [DMESG-FAIL][30] ([i915#3047])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk7/igt@i915_selftest@live@client.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk2/igt@i915_selftest@live@client.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#2521])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111304])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@kms_ccs@pipe-c-crc-primary-basic.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl4/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl5/igt@kms_color@pipe-c-ctm-0-75.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl7/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][41] ([i915#1319])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - shard-skl:          NOTRUN -> [FAIL][42] ([i915#54])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#54]) +8 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][45] ([i915#2346] / [i915#533])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2642])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +122 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#1542])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl1/igt@perf@blocking.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@perf@blocking.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl3/igt@perf_pmu@rc6-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sysfs_clients@busy@vcs0:
>     - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#3019])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk3/igt@sysfs_clients@busy@vcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk1/igt@sysfs_clients@busy@vcs0.html
> 
>   * igt@sysfs_clients@split-10@bcs0:
>     - shard-apl:          [PASS][67] -> [SKIP][68] ([fdo#109271] / [i915#3026])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl1/igt@sysfs_clients@split-10@bcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl6/igt@sysfs_clients@split-10@bcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-kbl:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl4/igt@gem_exec_fair@basic-flow@rcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [FAIL][71] ([i915#2842]) -> [PASS][72] +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][73] ([i915#2842]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][77] ([i915#2842]) -> [PASS][78] +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-many-active@rcs0:
>     - shard-glk:          [FAIL][79] ([i915#2389]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk9/igt@gem_exec_reloc@basic-many-active@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-skl:          [DMESG-WARN][81] ([i915#1610] / [i915#2803]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][83] ([i915#1436] / [i915#716]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl6/igt@gen9_exec_parse@allowed-single.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
>     - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86] +3 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [FAIL][91] ([i915#2346]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [FAIL][93] ([i915#2598]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-glk:          [FAIL][95] ([i915#2122]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][99] ([i915#198] / [i915#2405]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-tglb:         [FAIL][101] ([i915#3028]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb7/igt@sysfs_clients@recycle.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb1/igt@sysfs_clients@recycle.html
> 
>   * {igt@sysfs_clients@recycle-many}:
>     - shard-hsw:          [FAIL][103] ([i915#3028]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-hsw8/igt@sysfs_clients@recycle-many.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-hsw1/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-25@vcs0:
>     - shard-skl:          [SKIP][105] ([fdo#109271]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl10/igt@sysfs_clients@sema-25@vcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@sysfs_clients@sema-25@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-iclb:         [INCOMPLETE][107] ([i915#1895] / [i915#2295]) -> [INCOMPLETE][108] ([i915#1895] / [i915#2295] / [i915#3031])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb4/igt@gem_exec_balancer@hang.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb4/igt@gem_exec_balancer@hang.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][109] ([i915#2920]) -> [SKIP][110] ([i915#658])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][111] ([i915#658]) -> [SKIP][112] ([i915#2920]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([i915#1814] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#602] / [i915#92]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1436] / [i915#1814] / [i915#2292] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#92])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl7/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl7/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl4/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl6/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl7/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl7/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl1/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl1/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-kbl1/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl1/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl6/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl3/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl4/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#1814] / [i915#2295] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#1814] / [i915#2295] / [i915#3002])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl6/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl8/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl6/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl2/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-apl3/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl8/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl7/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-apl6/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][141], [FAIL][142], [FAIL][143]) ([i915#2295] / [i915#2667] / [i915#3002]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb2/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb2/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-tglb2/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb8/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb2/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-tglb3/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][154], [FAIL][155], [FAIL][156]) ([i915#2295] / [i915#3002])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl6/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl3/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl10/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl3/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9772/shard-skl1/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl8/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl1/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/shard-skl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2505]: https://g
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19676/index.html

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
