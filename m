Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAC8584073
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 15:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39AD10E4F9;
	Thu, 28 Jul 2022 13:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1787410E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659016722; x=1690552722;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ICyHB+ZjQnIOzO6oFuSfIVZn4bpCZ2C6o3MUh+sndWE=;
 b=VllEL7csayUnwV9Pp9H7DeWKx5yHWUkT5LZKONl+kPiEQQS4WLnuqrVZ
 dL/GC0Y6sEUh/bToW1O7Xu72R2PTvBLxDP5sKGEvM6amMSpYC4NLPqR0/
 t4TBaHwhl77dC/mKUnOs65TP9Eah2BJG1L2COMPqosdtntMdnQfSVqsAA
 TRa2SMX+MWoaC/Yg4/YhLo0cCHAWqSJbYMnJdsT7DQLghvIZdt3/L9bVY
 QSJdpUyMM9Q81zwUETARgXbhXdiAnjSVNx5kpK/fVXnOEwC1AIcSE6Mnw
 P99XvVVCnvI9IxFC6n/OYxwL0wkK3YTA9jEvoJuJTsvxweylR1mo3xVOu g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="352513533"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="352513533"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 06:58:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="690323362"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 06:58:39 -0700
Date: Thu, 28 Jul 2022 16:58:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Uma Shankar <uma.shankar@intel.com>
Message-ID: <YuKWDDcO4hOyJSqb@ideak-desk.fi.intel.com>
References: <20220727164523.1621361-1-imre.deak@intel.com>
 <165901186884.21236.17558347971450289374@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165901186884.21236.17558347971450289374@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/d12+=3A_Disable_DMC_h?=
 =?utf-8?q?andlers_during_loading/disabling_the_firmware_=28rev3=29?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 28, 2022 at 12:37:48PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915/d12+: Disable DMC handlers during loading/disabling the firmware (rev3)
> URL   : https://patchwork.freedesktop.org/series/106767/
> State : success

Thanks for the review, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11946_full -> Patchwork_106767v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_106767v3_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_106767v3_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_106767v3_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>     - shard-skl:          [INCOMPLETE][1] ([i915#6327]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl5/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - {shard-dg1}:        NOTRUN -> [DMESG-FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11946_full and Patchwork_106767v3_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.90] s
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.77] s
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.75] s
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.75] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_106767v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@feature_discovery@psr2.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_create@create-massive:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][6] ([i915#4991])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk9/igt@gem_create@create-massive.html
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][7] ([i915#4991])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl4/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#5784])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#4525]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb2/igt@gem_huc_copy@huc-copy.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl4/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][15] ([i915#4991])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl2/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>     - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@legacy:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#2346])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor@legacy.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#2122])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk8/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#5864])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][34] ([i915#180]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2122]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +5 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#2672]) +7 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#2672] / [i915#3555])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +24 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +62 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          NOTRUN -> [FAIL][42] ([i915#1188])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#1188]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][47] -> [SKIP][48] ([i915#5519])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#5519])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        [SKIP][51] ([i915#2582]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@fbdev@nullptr.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - {shard-rkl}:        [SKIP][53] ([i915#3281]) -> [PASS][54] +15 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][55] ([i915#6268]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
>     - {shard-rkl}:        [FAIL][57] ([i915#6268]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@vebox:
>     - {shard-dg1}:        [FAIL][59] ([i915#4883]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-17/igt@gem_ctx_persistence@legacy-engines-hang@vebox.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@vebox.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-tglu}:       [TIMEOUT][61] ([i915#3063]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-6/igt@gem_eio@unwedge-stress.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglu-1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][63] ([i915#6259]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][65] ([i915#4525]) -> [PASS][66] +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][67] ([i915#2842]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-glk:          [FAIL][69] ([i915#2842]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - {shard-rkl}:        [FAIL][71] ([i915#2842]) -> [PASS][72] +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@gem_exec_fair@basic-none@rcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][73] ([i915#2842]) -> [PASS][74] +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][75] ([i915#2849]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - {shard-rkl}:        [SKIP][77] ([i915#3282]) -> [PASS][78] +8 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][79] ([i915#5566] / [i915#716]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - {shard-rkl}:        [SKIP][81] ([i915#2527]) -> [PASS][82] +3 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_backlight@fade:
>     - {shard-rkl}:        [SKIP][83] ([i915#3012]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_backlight@fade.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-tglu}:       [FAIL][85] ([i915#3989] / [i915#454]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglb:         [WARN][87] ([i915#2681]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb1/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - {shard-rkl}:        [WARN][89] ([i915#6405]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-dg1}:        [SKIP][91] ([i915#1397]) -> [PASS][92] +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [INCOMPLETE][93] ([i915#3614] / [i915#4939]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl1/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@i915_suspend@forcewake.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-skl:          [TIMEOUT][97] ([i915#6371]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][99] ([i915#2346]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
>     - {shard-rkl}:        [SKIP][101] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][102] +6 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>     - shard-apl:          [FAIL][103] ([i915#79]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][105] ([i915#79]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [FAIL][107] ([i915#2122]) -> [PASS][108] +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][109] ([i915#1849] / [i915#4098]) -> [PASS][110] +11 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>     - shard-skl:          [DMESG-WARN][111] ([i915#1982]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl9/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - {shard-rkl}:        [SKIP][113] ([i915#1849] / [i915#3546] / [i915#4098]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_psr@cursor_render:
>     - {shard-rkl}:        [SKIP][115] ([i915#1072]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_psr@cursor_render.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][119] ([i915#1845] / [i915#4098]) -> [PASS][120] +21 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@perf@gen12-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][121] ([fdo#109289]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][123] ([i915#5639]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl10/igt@perf@polling-parameterized.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl7/igt@perf@polling-parameterized.html
>     - shard-tglb:         [FAIL][125] ([i915#5639]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-tglb1/igt@perf@polling-parameterized.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-tglb8/igt@perf@polling-parameterized.html
> 
>   * igt@perf@polling-small-buf:
>     - {shard-rkl}:        [FAIL][127] ([i915#1722]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-1/igt@perf@polling-small-buf.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@perf@polling-small-buf.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][129] ([i915#51]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl6/igt@perf@short-reads.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl7/igt@perf@short-reads.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@perf_pmu@rc6-suspend.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl8/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][133] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-rkl-6/igt@prime_vgem@basic-write.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][135] ([i915#6117]) -> [SKIP][136] ([i915#4525])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][137] ([i915#2842]) -> [FAIL][138] ([i915#2852])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][139] ([i915#658]) -> [SKIP][140] ([i915#588])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][141] ([i915#180] / [i915#4939]) -> [FAIL][142] ([i915#4767])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-skl:          [SKIP][143] ([fdo#109271] / [i915#1888]) -> [SKIP][144] ([fdo#109271])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][145] ([i915#2920]) -> [SKIP][146] ([i915#658])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][147] ([i915#658]) -> [SKIP][148] ([i915#2920])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][149], [FAIL][150], [FAIL][151]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][152], [FAIL][153], [FAIL][154]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl1/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-apl3/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl7/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl3/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-apl2/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl6/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl4/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11946/shard-kbl1/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl6/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl7/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl4/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5864]: https://gitlab.freedesktop.org/drm/intel/issues/5864
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6327]: https://gitlab.freedesktop.org/drm/intel/issues/6327
>   [i915#6371]: https://gitlab.freedesktop.org/drm/intel/issues/6371
>   [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11946 -> Patchwork_106767v3
> 
>   CI-20190529: 20190529
>   CI_DRM_11946: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_106767v3: 0e9c43d76a145712da46e935d429ce2a3eea80e8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106767v3/index.html
