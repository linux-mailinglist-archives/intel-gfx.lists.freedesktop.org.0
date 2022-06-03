Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A880753CB86
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 16:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A0410E35E;
	Fri,  3 Jun 2022 14:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD5610E35E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 14:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654266781; x=1685802781;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=hY5Za5ZPxbe4JQNpGdZ8hyXWUdAPZcq9XwTn57KX3RM=;
 b=KplId8+dGihrrJw0s2nlaNWu6s3K9Rq5vLfgumeo2y+dyqUU/S47p40A
 PtYkArh/0kkVKBEsSXLgEI4HIkD9gYg9Dlk4MocoTrnlBKU2O+xWr1ZwG
 5Mq2ejVTwqbPZamxpda13vtuyBqj/R9P+Ln10dCEYUrw8vTPFywqUeXis
 QG5J2O542LBjkcblQxdotGVwkbL/44KtM9X7b2CMW3+c+JzFGmkawuHBv
 ZxNLfZgaz7LvLSBF3/yyThRJPvnbQ3K2ZlxLtGqylPJFpsY2S//FTdAeH
 6sbEgVCjSJ2fGeHBdSSL8xX89yxjdh/m7Mzzl4ba0eaAqPYXNtz9n99h8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263915815"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="263915815"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 07:33:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="553349346"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 07:32:53 -0700
Date: Fri, 3 Jun 2022 07:32:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ypobk2UWMa2/XJQW@mdroper-desk1.amr.corp.intel.com>
References: <20220602233019.1659283-1-matthew.d.roper@intel.com>
 <165422847611.17723.16047035136070250556@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165422847611.17723.16047035136070250556@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_GuC_depriv_applies_to_PVC?=
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

On Fri, Jun 03, 2022 at 03:54:36AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: GuC depriv applies to PVC
> URL   : https://patchwork.freedesktop.org/series/104688/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11723_full -> Patchwork_104688v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Jose for the review.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_104688v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
>     - {shard-rkl}:        NOTRUN -> [SKIP][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_setmode@basic@pipe-a-edp-1:
>     - {shard-rkl}:        NOTRUN -> [FAIL][2] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_setmode@basic@pipe-a-edp-1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11723_full and Patchwork_104688v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_atomic_interruptible@legacy-setmode@hdmi-a-3-pipe-a:
>     - Statuses : 1 pass(s)
>     - Exec time: [6.14] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104688v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +7 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#3778])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-tglb1/igt@gem_exec_endless@dispatch@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-tglb5/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@gem_pread@exhaustion.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][18] ([i915#3763])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk3/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +67 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
>     - shard-glk:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk3/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][28] ([i915#1319])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#4939])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2346])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2346] / [i915#533])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2346])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][37] -> [INCOMPLETE][38] ([i915#180] / [i915#1982])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +100 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-edp1:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl2/igt@kms_flip@plain-flip-ts-check@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][42] -> [SKIP][43] ([i915#3701])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-snb:          [PASS][44] -> [SKIP][45] ([fdo#109271]) +4 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +22 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [PASS][47] -> [DMESG-FAIL][48] ([i915#180])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
>     - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#62]) +19 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#5176]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +52 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl10/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
>     - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982] / [i915#62])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][65] ([i915#180])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-apl:          [PASS][66] -> [FAIL][67] ([i915#5639])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl7/igt@perf@polling-parameterized.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl7/igt@perf@polling-parameterized.html
> 
>   * igt@sw_sync@sync_multi_timeline_wait:
>     - shard-kbl:          NOTRUN -> [FAIL][68] ([i915#6140])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl3/igt@sw_sync@sync_multi_timeline_wait.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][71] ([i915#2582]) -> [PASS][72] +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-2/igt@fbdev@info.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - {shard-tglu}:       [TIMEOUT][75] ([i915#3063]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-tglu-6/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][77] ([i915#3070]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb1/igt@gem_eio@unwedge-stress.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb1/igt@gem_eio@unwedge-stress.html
>     - shard-tglb:         [FAIL][79] ([i915#5784]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-snb:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-apl:          [INCOMPLETE][83] ([i915#5843]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-apl1/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-apl4/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][85] ([i915#5566] / [i915#716]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-glk6/igt@gen9_exec_parse@allowed-single.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-tglu}:       [FAIL][87] ([i915#454]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][89] ([i915#454]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@fences:
>     - {shard-rkl}:        [SKIP][91] ([i915#1849]) -> [PASS][92] +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@i915_pm_rpm@fences.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@i915_pm_rpm@fences.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - {shard-dg1}:        [SKIP][93] ([i915#1397]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-dg1-13/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {shard-dg1}:        [DMESG-FAIL][95] ([i915#4494] / [i915#4957]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-dg1-13/igt@i915_selftest@live@hangcheck.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-dg1-15/igt@i915_selftest@live@hangcheck.html
>     - shard-tglb:         [DMESG-WARN][97] ([i915#5591]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-tglb1/igt@i915_selftest@live@hangcheck.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_color@pipe-a-legacy-gamma:
>     - {shard-dg1}:        [SKIP][99] ([i915#1836]) -> [PASS][100] +9 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-dg1-18/igt@kms_color@pipe-a-legacy-gamma.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-dg1-16/igt@kms_color@pipe-a-legacy-gamma.html
> 
>   * igt@kms_color@pipe-b-ctm-0-25:
>     - {shard-rkl}:        [SKIP][101] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_color@pipe-b-ctm-0-25.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
>     - {shard-rkl}:        [SKIP][103] ([i915#4070]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
>     - {shard-rkl}:        [SKIP][105] ([fdo#112022] / [i915#4070]) -> [PASS][106] +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - {shard-rkl}:        [SKIP][107] ([fdo#111825] / [i915#4070]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
>     - {shard-rkl}:        [SKIP][109] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][110] +4 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +5 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][113] ([i915#3701]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - {shard-dg1}:        [SKIP][115] -> [PASS][116] +3 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - {shard-rkl}:        [SKIP][117] ([i915#1849] / [i915#4098]) -> [PASS][118] +20 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_invalid_mode@bad-hsync-start:
>     - {shard-rkl}:        [SKIP][119] ([i915#4278]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_invalid_mode@bad-hsync-start.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - {shard-rkl}:        [SKIP][121] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][122] +3 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][123] ([i915#5235]) -> [PASS][124] +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr@cursor_mmap_cpu:
>     - {shard-rkl}:        [SKIP][125] ([i915#1072]) -> [PASS][126] +2 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-1/igt@kms_psr@cursor_mmap_cpu.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [SKIP][127] ([fdo#109441]) -> [PASS][128] +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>     - {shard-rkl}:        [SKIP][129] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> 
>   * igt@kms_vblank@pipe-b-wait-busy-hang:
>     - {shard-rkl}:        [SKIP][131] ([i915#1845] / [i915#4098]) -> [PASS][132] +21 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-rkl-2/igt@kms_vblank@pipe-b-wait-busy-hang.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-rkl-6/igt@kms_vblank@pipe-b-wait-busy-hang.html
> 
>   * igt@prime_mmap@test_errors@test_errors-smem:
>     - shard-skl:          [DMESG-WARN][133] ([i915#1982]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-skl1/igt@prime_mmap@test_errors@test_errors-smem.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-skl4/igt@prime_mmap@test_errors@test_errors-smem.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][135] ([i915#658]) -> [SKIP][136] ([i915#2920])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([i915#658]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][139] ([fdo#111068] / [i915#658]) -> [SKIP][140] ([i915#2920])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl3/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl4/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl6/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl1/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl1/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl1/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl7/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl6/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl7/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11723/shard-kbl7/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl3/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl6/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl1/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl7/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl1/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl4/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl4/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl1/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl6/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl1/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6139]: https://gitlab.freedesktop.org/drm/intel/issues/6139
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11723 -> Patchwork_104688v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11723: c7b64508e5166dd035e39ea0640f9e1ad840ca0f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104688v1: c7b64508e5166dd035e39ea0640f9e1ad840ca0f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104688v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
