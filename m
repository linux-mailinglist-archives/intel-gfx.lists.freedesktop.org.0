Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FA780F3B6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 17:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E0F10E616;
	Tue, 12 Dec 2023 16:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA09510E60E;
 Tue, 12 Dec 2023 16:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702400194; x=1733936194;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=b1GuQ8K+Rc1jqkrVzszjpsLV6uR8NGdFFBvfp0SRR2U=;
 b=X98hTGj+MPAn/H5wZUTmtdYUmUWz5AKYWZVVMjPhCLm7paRkp7ORTSi2
 SHMpgZkjTN3vH0knsX0xyiqLeZpdyvMVu6UxBXmG1qI8cqD/YwFQc0lrI
 Ker4f2dbTsp7ZBmndiIL7GExrrW7j4FMJJvogxklZZ00twQP4ltZbwCxt
 NpqeQKldLnfoBPaB9YSa1AtPi7YIVaitqwEKkP9FUUmHL8V/z74F+aJGz
 t5I369uV7mEhejga3Scx3Eu2FLv8uAOPXnPfxmxZV3FhL2Vj//P9xBWg5
 1Z5NqHY6ynooNOWXhi3UVtLwtwNu5Naho9fZuAndh3MeY4Ff1weTyxx+e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="392011415"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="392011415"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 08:56:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="917336096"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="917336096"
Received: from ggilardi-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.49.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 08:56:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for series starting
 with [1/2] drm/edid:
 replace __attribute__((packed)) with __packed (rev2)
In-Reply-To: <170239981299.31292.13526141988416427315@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231212132557.3777281-1-jani.nikula@intel.com>
 <170239981299.31292.13526141988416427315@emeril.freedesktop.org>
Date: Tue, 12 Dec 2023 18:56:30 +0200
Message-ID: <87v893we9t.fsf@intel.com>
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
> Series: series starting with [1/2] drm/edid: replace __attribute__((packed)) with __packed (rev2)
> URL   : https://patchwork.freedesktop.org/series/127680/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127680v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_127680v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127680v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/index.html
>
> Participating hosts (31 -> 34)
> ------------------------------
>
>   Additional (4): bat-dg2-8 bat-kbl-2 bat-dg2-9 fi-pnv-d510 
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_127680v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - bat-adlp-11:        [PASS][1] -> [SKIP][2] +5 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>
>   * igt@kms_pipe_crc_basic@read-crc:
>     - bat-adlp-11:        NOTRUN -> [SKIP][3] +8 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html

Unrelated, please re-report.

BR,
Jani.

>
>   
> #### Warnings ####
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-adlp-11:        [SKIP][4] ([i915#3555] / [i915#3840]) -> [SKIP][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_dsc@dsc-basic.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_dsc@dsc-basic.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_127680v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@info:
>     - bat-adlp-11:        [PASS][6] -> [SKIP][7] ([i915#1849] / [i915#2582])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@fbdev@info.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@fbdev@info.html
>     - bat-kbl-2:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1849])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-kbl-2/igt@fbdev@info.html
>
>   * igt@fbdev@nullptr:
>     - bat-adlp-11:        [PASS][9] -> [SKIP][10] ([i915#2582]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@fbdev@nullptr.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@fbdev@nullptr.html
>
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - bat-dg2-8:          NOTRUN -> [INCOMPLETE][11] ([i915#9275])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][12] ([fdo#109271]) +28 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][13] ([fdo#109271]) +36 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-adlp-11:        NOTRUN -> [SKIP][14] ([i915#4613]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
>
>   * igt@gem_mmap@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#4083])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@gem_mmap@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][16] ([i915#4083])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@gem_mmap@basic.html
>
>   * igt@gem_mmap_gtt@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][17] ([i915#4077]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][18] ([i915#4077]) +2 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@gem_mmap_gtt@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][19] ([i915#4079]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-dg2-8:          NOTRUN -> [SKIP][20] ([i915#4079]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-9:          NOTRUN -> [SKIP][21] ([i915#6621])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][22] ([i915#6621])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@i915_pm_rps@basic-api.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][23] ([i915#6621])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html
>
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-dg2-8:          NOTRUN -> [SKIP][24] ([i915#6645])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][25] ([i915#5190])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][26] ([i915#5190])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][27] ([i915#4215] / [i915#5190])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][28] ([i915#4215] / [i915#5190])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-9:          NOTRUN -> [SKIP][29] ([i915#4212]) +6 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][30] ([i915#4212]) +6 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - bat-dg2-9:          NOTRUN -> [SKIP][31] ([i915#4212] / [i915#5608])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][32] ([i915#4212] / [i915#5608])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][33] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][34] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-adlp-11:        NOTRUN -> [SKIP][35] ([i915#3637]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-9:          NOTRUN -> [SKIP][36] ([fdo#109285])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][37] ([fdo#109285])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-dg2-9:          NOTRUN -> [SKIP][38] ([i915#5274])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][39] ([i915#5274])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
>
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-adlp-11:        [PASS][40] -> [SKIP][41] ([i915#4342] / [i915#5354])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [PASS][42] -> [ABORT][43] ([i915#8668])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-dg2-8:          NOTRUN -> [SKIP][44] ([i915#5354])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][45] ([i915#5354])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-9:          NOTRUN -> [SKIP][46] ([i915#3555])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][47] ([i915#3555])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][48] ([i915#3555])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-9:          NOTRUN -> [SKIP][49] ([i915#3708])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][50] ([i915#3708])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][51] ([fdo#109295] / [i915#3708])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-8:          NOTRUN -> [SKIP][52] ([i915#3708] / [i915#4077]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][53] ([i915#3708] / [i915#4077]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-11:        NOTRUN -> [SKIP][54] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-dg2-9:          NOTRUN -> [SKIP][55] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-9/igt@prime_vgem@basic-write.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][56] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-dg2-8/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-glk-j4005:       [INCOMPLETE][57] -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - bat-adlp-11:        [ABORT][59] ([i915#8668]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
>
>   
> #### Warnings ####
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adlp-11:        [SKIP][61] ([i915#4103] / [i915#5608]) -> [SKIP][62] ([i915#5608]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
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
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14010 -> Patchwork_127680v2
>
>   CI-20190529: 20190529
>   CI_DRM_14010: b4182ec1538e8cebf630083ec4296bed0061d594 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_127680v2: b4182ec1538e8cebf630083ec4296bed0061d594 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> 6b0cddbdca04 drm/ioc32: replace __attribute__((packed)) with __packed
> 17cb391a7c00 drm/edid: replace __attribute__((packed)) with __packed
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127680v2/index.html

-- 
Jani Nikula, Intel
