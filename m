Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5197FEB3F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 09:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9D510E123;
	Thu, 30 Nov 2023 08:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1859E10E123;
 Thu, 30 Nov 2023 08:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701334634; x=1732870634;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=akxX0WzkzpZfNYNpwkUkGudJ6IaZE6eqEkh3p5UqZnE=;
 b=O2vzjGYdCrz8AoOya9tKyBWDHoYyFwJ89z0IHmrOPyo0+FWqP1mvK1f9
 r7j8wEx1jARWwK+1eTEtHvKVt2aN7vROBiWf0At4d3nsRoRghpYcRjLrw
 6JFQOyy0a79qtoFRdbzYN5qctL33EwM2XRcagv0Yzk6wVrjunvoHzdTmJ
 UC8Zr2wdLYe07+95xshYlRr7A1qoWGkWtoRSOIQZ0ug4eMH+CNEEVoJ54
 iM5mWHQVTQggrwqv2bXkSZvZDrlQVi0bjwQ6DOqmtjhP6uM+SDfWFlybP
 AJQuUmgc9pdUD/ersf7jKKqGrCbEqCQ4nCJbKlFoM+PyJQC8DEax3khTq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="390454331"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="390454331"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 00:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="17321552"
Received: from nemelina-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.150])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 00:57:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 I915-ci-infra@lists.freedesktop.org
In-Reply-To: <170131406001.15646.11523146712788253607@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231129140129.699767-1-andriy.shevchenko@linux.intel.com>
 <170131406001.15646.11523146712788253607@emeril.freedesktop.org>
Date: Thu, 30 Nov 2023 10:57:07 +0200
Message-ID: <871qc762l8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv1=2C1/1=5D_drm/i915/display=3A_Don=27t_us?=
 =?utf-8?q?e_=22proxy=22_headers_=28rev2=29?=
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

On Thu, 30 Nov 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [v1,1/1] drm/i915/display: Don't use "proxy" headers (rev2)
> URL   : https://patchwork.freedesktop.org/series/127051/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_13951 -> Patchwork_127051v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_127051v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127051v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/index.html
>
> Participating hosts (36 -> 35)
> ------------------------------
>
>   Additional (2): bat-kbl-2 bat-dg2-9 
>   Missing    (3): fi-pnv-d510 fi-snb-2520m bat-dg1-5 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_127051v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@memory_region:
>     - bat-jsl-3:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-jsl-3/igt@i915_selftest@live@memory_region.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-jsl-3/igt@i915_selftest@live@memory_region.html

An #include change can't cause this. Please re-report.

BR,
Jani.



>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_127051v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@info:
>     - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1849])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-kbl-2/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +20 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@gem_mmap@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][5] ([i915#4083])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@gem_mmap@basic.html
>
>   * igt@gem_mmap_gtt@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][6] ([i915#4077]) +2 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][7] ([i915#4079]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
>
>   * igt@i915_hangman@error-state-basic:
>     - bat-mtlp-6:         [PASS][8] -> [ABORT][9] ([i915#9414])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-9:          NOTRUN -> [SKIP][10] ([i915#6621])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][11] ([i915#5190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][12] ([i915#4215] / [i915#5190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-9:          NOTRUN -> [SKIP][13] ([i915#4212]) +6 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - bat-dg2-9:          NOTRUN -> [SKIP][14] ([i915#4212] / [i915#5608])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-9:          NOTRUN -> [SKIP][16] ([fdo#109285])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-dg2-9:          NOTRUN -> [SKIP][17] ([i915#5274])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [SKIP][18] ([i915#1845] / [i915#9197]) +3 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-kbl-2:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#1845]) +14 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-9:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#4098])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-9:          NOTRUN -> [SKIP][21] ([i915#3708])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-9:          NOTRUN -> [SKIP][22] ([i915#3708] / [i915#4077]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-dg2-9:          NOTRUN -> [SKIP][23] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-dg2-9/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][24] ([i915#5334]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [FAIL][26] ([IGT#3]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [ABORT][28] ([i915#8668]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_13951 -> Patchwork_127051v2
>
>   CI-20190529: 20190529
>   CI_DRM_13951: 7bd342323d5bd405b02fd21cd78f157f363278ac @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7610: 7610
>   Patchwork_127051v2: 7bd342323d5bd405b02fd21cd78f157f363278ac @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> ed6314692893 drm/i915/display: Don't use "proxy" headers
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127051v2/index.html

-- 
Jani Nikula, Intel
