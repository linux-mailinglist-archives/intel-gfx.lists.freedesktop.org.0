Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF368D1758
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F62210E182;
	Tue, 28 May 2024 09:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYBwV7Xp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9296B10E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716889131; x=1748425131;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TrtFdRj1gFx3O1D0qThio588wswN25i9+Ktl6WfKNSY=;
 b=JYBwV7XpFmk6NLUl/xwkehklbVrbtaEQZD+2LfHCo3+sqzodBy0V3Lvv
 +hRXXnHw5C9EYAabILRef+8aYMOyhvwS/U3mTsiSZyCkDZk//kP6zdb/Q
 k7LlFcOXARgHYNOAoYeevZdWhW6H5UIjzbBAW829Wxaq6Ae89orwBx3/O
 Ui6VLMpUKG0vdSnJZmfltBNjKlzDTLjMTOkMCbUdmW6R4G4veS7jMRPjg
 phNA4zlJqWsPAEcjlsgcdkmCj24Kf0bvpnaHE8rGZkkl3CEj3xy25D4Mm
 akuA1xs31VguTNpFjyR3HQns8ld464mbE37Q7dvKugeXbsSq7ss6hZT1m Q==;
X-CSE-ConnectionGUID: 9Xl6gso0RkyqoFKw0ns5FQ==
X-CSE-MsgGUID: aqx5V/O4SguFbK6jACdO4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13410054"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13410054"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:38:50 -0700
X-CSE-ConnectionGUID: rlUBmDOwSieRukXJVotyDA==
X-CSE-MsgGUID: eMdTKhmhSgS20WwGyTv3dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35632851"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:38:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for Revert "igc: fix a
 log entry using uninitialized netdev"
In-Reply-To: <171688644322.2215486.42495654057116974@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528074614.3306301-1-jani.nikula@intel.com>
 <171688644322.2215486.42495654057116974@8e613ede5ea5>
Date: Tue, 28 May 2024 12:38:45 +0300
Message-ID: <87msoal1i2.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 May 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: Revert "igc: fix a log entry using uninitialized netdev"
> URL   : https://patchwork.freedesktop.org/series/134112/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14828 -> Patchwork_134112v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_134112v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134112v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/index.html
>
> Participating hosts (37 -> 38)
> ------------------------------
>
>   Additional (4): bat-dg1-7 bat-kbl-2 fi-elk-e7500 bat-jsl-3 
>   Missing    (3): bat-mtlp-9 fi-tgl-1115g4 fi-bsw-n3050 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_134112v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14828/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live@hugepages:
>     - bat-adlp-9:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14828/bat-adlp-9/igt@i915_selftest@live@hugepages.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adlp-9/igt@i915_selftest@live@hugepages.html

Unrelated, and the trybot run with the same diff passed BAT [1].

Pushed to core-for-CI.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/134085/


>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_134112v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - bat-jsl-3:          NOTRUN -> [SKIP][5] ([i915#9318])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
>     - bat-arls-1:         NOTRUN -> [SKIP][6] ([i915#9318])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@debugfs_test@basic-hwmon.html
>     - bat-adls-6:         NOTRUN -> [SKIP][7] ([i915#9318])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@debugfs_test@basic-hwmon.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([i915#9318])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
>     - bat-arls-2:         NOTRUN -> [SKIP][9] ([i915#9318])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@debugfs_test@basic-hwmon.html
>
>   * igt@fbdev@info:
>     - bat-kbl-2:          NOTRUN -> [SKIP][10] ([i915#1849])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-kbl-2/igt@fbdev@info.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][11] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic:
>     - bat-jsl-3:          NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
>     - bat-arls-1:         NOTRUN -> [SKIP][14] ([i915#10213]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@gem_lmem_swapping@basic.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][15] ([i915#4613]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][16] +39 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-adls-6:         NOTRUN -> [SKIP][17] ([i915#4613]) +3 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-arls-2:         NOTRUN -> [SKIP][18] ([i915#10213]) +3 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@gem_lmem_swapping@verify-random.html
>
>   * igt@gem_mmap@basic:
>     - bat-arls-1:         NOTRUN -> [SKIP][19] ([i915#4083])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@gem_mmap@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][20] ([i915#4083])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@gem_mmap@basic.html
>     - bat-arls-2:         NOTRUN -> [SKIP][21] ([i915#4083])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@gem_mmap@basic.html
>
>   * igt@gem_mmap_gtt@basic:
>     - bat-arls-2:         NOTRUN -> [SKIP][22] ([i915#10196] / [i915#4077]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@gem_mmap_gtt@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-arls-2:         NOTRUN -> [SKIP][23] ([i915#10197] / [i915#10211] / [i915#4079])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@gem_render_tiled_blits@basic.html
>     - bat-arls-1:         NOTRUN -> [SKIP][24] ([i915#10197] / [i915#10211] / [i915#4079])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@gem_render_tiled_blits@basic.html
>
>   * igt@gem_tiled_blits@basic:
>     - bat-arls-1:         NOTRUN -> [SKIP][25] ([i915#10196] / [i915#4077]) +2 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@gem_tiled_blits@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][26] ([i915#4077]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@gem_tiled_blits@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][27] ([i915#3282])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][28] ([i915#4079]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@gem_tiled_pread_basic.html
>     - bat-arls-2:         NOTRUN -> [SKIP][29] ([i915#10206] / [i915#4079])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@gem_tiled_pread_basic.html
>     - bat-arls-1:         NOTRUN -> [SKIP][30] ([i915#10206] / [i915#4079])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@gem_tiled_pread_basic.html
>     - bat-adls-6:         NOTRUN -> [SKIP][31] ([i915#3282])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-arls-1:         NOTRUN -> [SKIP][32] ([i915#10209])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@i915_pm_rps@basic-api.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][33] ([i915#6621])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
>     - bat-arls-2:         NOTRUN -> [SKIP][34] ([i915#10209])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@i915_pm_rps@basic-api.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-arls-2:         NOTRUN -> [SKIP][35] ([i915#10200]) +9 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-arls-1:         NOTRUN -> [SKIP][36] ([i915#10200]) +9 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][37] ([i915#4215])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - bat-dg1-7:          NOTRUN -> [SKIP][38] ([i915#4212]) +7 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][39] ([i915#4103]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-adls-6:         NOTRUN -> [SKIP][40] ([i915#4103]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-arls-1:         NOTRUN -> [SKIP][41] ([i915#10202]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][42] ([i915#4103] / [i915#4213]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][43] ([i915#4103]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-arls-2:         NOTRUN -> [SKIP][44] ([i915#10202]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_dsc@dsc-basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][45] ([i915#3555] / [i915#3840])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
>     - bat-arls-2:         NOTRUN -> [SKIP][46] ([i915#9886])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_dsc@dsc-basic.html
>     - bat-jsl-3:          NOTRUN -> [SKIP][47] ([i915#3555] / [i915#9886])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html
>     - bat-adls-6:         NOTRUN -> [SKIP][48] ([i915#3555] / [i915#3840])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_dsc@dsc-basic.html
>     - bat-arls-1:         NOTRUN -> [SKIP][49] ([i915#9886])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_dsc@dsc-basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][50] ([i915#3555] / [i915#3840])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-jsl-3:          NOTRUN -> [SKIP][51]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-adls-6:         NOTRUN -> [SKIP][52]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-arls-1:         NOTRUN -> [SKIP][53] ([i915#10207])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][54]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][55]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-arls-2:         NOTRUN -> [SKIP][56] ([i915#10207])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_hdmi_inject@inject-audio:
>     - bat-dg1-7:          NOTRUN -> [SKIP][57] ([i915#433])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
>     - fi-elk-e7500:       NOTRUN -> [SKIP][58] +24 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-arls-1:         NOTRUN -> [SKIP][59] ([i915#9812])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html
>     - bat-adls-6:         NOTRUN -> [SKIP][60] ([i915#5354])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][61] ([i915#5354])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][62] ([i915#5354])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - bat-arls-1:         NOTRUN -> [SKIP][63] ([i915#9732]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_psr@psr-primary-mmap-gtt.html
>     - bat-adls-6:         NOTRUN -> [SKIP][64] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html
>
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - bat-arls-2:         NOTRUN -> [SKIP][65] ([i915#10196] / [i915#4077] / [i915#9688])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
>
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-dg1-7:          NOTRUN -> [SKIP][66] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][67] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_psr@psr-primary-page-flip.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][68] ([i915#3555])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arls-2:         NOTRUN -> [SKIP][69] ([i915#10208] / [i915#8809])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-jsl-3:          NOTRUN -> [SKIP][70] ([i915#3555])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adls-6:         NOTRUN -> [SKIP][71] ([i915#3555])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arls-1:         NOTRUN -> [SKIP][72] ([i915#10208] / [i915#8809])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][73] ([i915#3555])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg1-7:          NOTRUN -> [SKIP][74] ([i915#3708] / [i915#4077]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
>     - bat-arls-2:         NOTRUN -> [SKIP][75] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adls-6:         NOTRUN -> [SKIP][76] ([i915#3291]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-adls-6/igt@prime_vgem@basic-fence-read.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][77] ([i915#3708]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html
>     - bat-arls-2:         NOTRUN -> [SKIP][78] ([i915#10212] / [i915#3708])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@prime_vgem@basic-fence-read.html
>     - bat-arls-1:         NOTRUN -> [SKIP][79] ([i915#10212] / [i915#3708])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-gtt:
>     - bat-arls-1:         NOTRUN -> [SKIP][80] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@prime_vgem@basic-gtt.html
>
>   * igt@prime_vgem@basic-read:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][81] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/fi-rkl-11600/igt@prime_vgem@basic-read.html
>     - bat-arls-2:         NOTRUN -> [SKIP][82] ([i915#10214] / [i915#3708])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@prime_vgem@basic-read.html
>     - bat-arls-1:         NOTRUN -> [SKIP][83] ([i915#10214] / [i915#3708])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-arls-2:         NOTRUN -> [SKIP][84] ([i915#10216] / [i915#3708])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-2/igt@prime_vgem@basic-write.html
>     - bat-arls-1:         NOTRUN -> [SKIP][85] ([i915#10216] / [i915#3708])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/bat-arls-1/igt@prime_vgem@basic-write.html
>
>   
>   [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
>   [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
>   [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
>   [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
>   [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
>   [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
>   [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14828 -> Patchwork_134112v1
>
>   CI-20190529: 20190529
>   CI_DRM_14828: abaeae202dfb4e361edd660a124e22178340725d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7871: 1d7b961235e345db20933c057f265898e2e96fd2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134112v1: abaeae202dfb4e361edd660a124e22178340725d @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134112v1/index.html

-- 
Jani Nikula, Intel
