Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 963298143FE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 09:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE5510E213;
	Fri, 15 Dec 2023 08:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A4610E208;
 Fri, 15 Dec 2023 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702630374; x=1734166374;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ulMJJIea68LN0ucFvg0NARewGXObLTol1MQG9uf39x4=;
 b=N26yUF1ekB4noDBuijTsQ6n5j0EY4ZGzQ1A3LCw0mOJKe4pEzfQIIdoJ
 YAZhw/FEYnEvRzdvfm4G5lnF9fNJAZXSYIGd4afQOlkMcElNl7nCSyH3w
 /ysKecI+c+2TgzxFDpQBb0zXMumY95c7ZIZmBvopq2o839GOKnWS2LmaD
 6Mlh/MzzWLgsC3uXtoWaDECtmvroW4FeqVNuA/kcR83JX2AuA1zcBCRYZ
 DDhnqWDPfSaQ8fKXaMVCCaOkbT1AB8CCz3rGNgmJ9ZncMwYxDO7XVmfhN
 5gB1kL4PEePEZ0IxphbkOn4fFDDk9x145yWqNwSm1GBew8J8f8OQS9FQu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2337048"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; 
   d="scan'208";a="2337048"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 00:52:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="16220786"
Received: from eparshut-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.224])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 00:52:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/edid: prefer
 forward declarations over includes in drm_edid.h
In-Reply-To: <170239551331.31294.13996132399326470059@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231212145113.3849191-1-jani.nikula@intel.com>
 <170239551331.31294.13996132399326470059@emeril.freedesktop.org>
Date: Fri, 15 Dec 2023 10:52:49 +0200
Message-ID: <87jzpfx2xq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Dec 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/edid: prefer forward declarations over includes in drm_edid.h
> URL   : https://patchwork.freedesktop.org/series/127695/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127695v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_127695v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127695v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/index.html
>
> Participating hosts (31 -> 34)
> ------------------------------
>
>   Additional (4): bat-kbl-2 bat-dg2-9 bat-mtlp-8 fi-pnv-d510 
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_127695v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - bat-adlp-11:        [PASS][1] -> [SKIP][2] +5 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>
>   * igt@kms_pipe_crc_basic@read-crc:
>     - bat-adlp-11:        NOTRUN -> [SKIP][3] +8 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html

Unrelated, please re-report.

Also, how about putting i915-ci-infra@lists.freedesktop.org in the
Reply-to: header of the mails, so there's no need to copy-paste that
from the message body, please?

Better yet, how about adding a button next to "test revision 1 again" in
the web UI to "re-report", please?


BR,
Jani.



>
>   
> #### Warnings ####
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-adlp-11:        [SKIP][4] ([i915#3555] / [i915#3840]) -> [SKIP][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_dsc@dsc-basic.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_dsc@dsc-basic.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_127695v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][6] ([i915#9318])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
>
>   * igt@fbdev@info:
>     - bat-adlp-11:        [PASS][7] -> [SKIP][8] ([i915#1849] / [i915#2582])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@fbdev@info.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@fbdev@info.html
>     - bat-kbl-2:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1849])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-kbl-2/igt@fbdev@info.html
>
>   * igt@fbdev@nullptr:
>     - bat-adlp-11:        [PASS][10] -> [SKIP][11] ([i915#2582]) +3 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@fbdev@nullptr.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@fbdev@nullptr.html
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][12] ([fdo#109271]) +28 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][13] ([fdo#109271]) +36 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-adlp-11:        NOTRUN -> [SKIP][14] ([i915#4613]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#4613]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
>
>   * igt@gem_mmap@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#4083])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@gem_mmap@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][17] ([i915#4083])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@gem_mmap@basic.html
>
>   * igt@gem_mmap_gtt@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][18] ([i915#4077]) +2 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][19] ([i915#4077]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][20] ([i915#4079]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][21] ([i915#4079]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-9:          NOTRUN -> [SKIP][22] ([i915#6621])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][23] ([i915#6621])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@i915_pm_rps@basic-api.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][24] ([i915#6621])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
>
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-mtlp-6:         [PASS][25] -> [DMESG-WARN][26] ([i915#9715])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
>
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][27] ([i915#6645])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][28] ([i915#5190])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][29] ([i915#5190])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][30] ([i915#4215] / [i915#5190])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][31] ([i915#4212]) +8 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-9:          NOTRUN -> [SKIP][32] ([i915#4212]) +6 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - bat-dg2-9:          NOTRUN -> [SKIP][33] ([i915#4212] / [i915#5608])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][34] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][35] ([i915#4213]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][36] ([i915#3555] / [i915#3840] / [i915#9159])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-adlp-11:        NOTRUN -> [SKIP][37] ([i915#3637]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-9:          NOTRUN -> [SKIP][38] ([fdo#109285])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][39] ([fdo#109285])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-dg2-9:          NOTRUN -> [SKIP][40] ([i915#5274])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][41] ([i915#5274])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
>
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-adlp-11:        [PASS][42] -> [SKIP][43] ([i915#4342] / [i915#5354])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [PASS][44] -> [ABORT][45] ([i915#8668])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-dg2-9:          NOTRUN -> [SKIP][46] ([i915#5354])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-9:          NOTRUN -> [SKIP][47] ([i915#3555])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][48] ([i915#3555])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][49] ([i915#3555] / [i915#8809])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-9:          NOTRUN -> [SKIP][50] ([i915#3708])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][51] ([fdo#109295] / [i915#3708])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-9:          NOTRUN -> [SKIP][52] ([i915#3708] / [i915#4077]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][53] ([i915#3708] / [i915#4077]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-11:        NOTRUN -> [SKIP][54] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][55] ([i915#3708]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-dg2-9:          NOTRUN -> [SKIP][56] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-dg2-9/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-glk-j4005:       [INCOMPLETE][57] -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - bat-adlp-11:        [ABORT][59] ([i915#8668]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
>
>   
> #### Warnings ####
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adlp-11:        [SKIP][61] ([i915#4103] / [i915#5608]) -> [SKIP][62] ([i915#5608]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9715]: https://gitlab.freedesktop.org/drm/intel/issues/9715
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14010 -> Patchwork_127695v1
>
>   CI-20190529: 20190529
>   CI_DRM_14010: b4182ec1538e8cebf630083ec4296bed0061d594 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_127695v1: b4182ec1538e8cebf630083ec4296bed0061d594 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> ce50bc02dcad drm/edid: prefer forward declarations over includes in drm_edid.h
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127695v1/index.html

-- 
Jani Nikula, Intel
