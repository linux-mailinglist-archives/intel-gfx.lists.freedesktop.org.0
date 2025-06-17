Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BEADDC87
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 21:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBE610E12D;
	Tue, 17 Jun 2025 19:41:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Akkp1+aQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1588210E12D;
 Tue, 17 Jun 2025 19:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750189279; x=1781725279;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=egqP6pyMcqg5B8dQBWX6/I7VnXsFKftEXN3o4oDk4tA=;
 b=Akkp1+aQ4Xw4UJwA7XuHMktbgob4aOGKykoC4HwsC6EdVVBT4aruEZBt
 b41+7RDxCIWwSTRAxgOH/opmCerUeU4FDkX7AcTOctkxzwimFC2lG4DJ/
 OBjtH9eQzd4Ge3/KQq+t3iNwOmTbRAYLkGX2A9TcfwKNb6/BP5C35ekao
 gP8xaYTC0lCwAEgLFr8/N3ZIALrB9WvrQkXgt0N8Ve8NsyryxDbMclAOe
 +HYx3QImug7zXWzqd9CKB6Y4DHYkDh6P4YqP5zPvgc4MwN4HmZs9sg42/
 x2zqDdxIgiQZ+a9WIjkbC7/szUL3N/k8EhWGhT7FA2ZyMNeQJ4c91ExUl Q==;
X-CSE-ConnectionGUID: HyemgpDeSEGf5ZYDBvIyTw==
X-CSE-MsgGUID: mob97fnlSOqQk0UDU/LnqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="63420713"
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="63420713"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 12:41:18 -0700
X-CSE-ConnectionGUID: rng2kzW+RCO3I+lGHmrPrA==
X-CSE-MsgGUID: t0xfM/bsR6abQd5w859SfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="172159851"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 12:41:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/plane:
 file and function renames (rev6)
In-Reply-To: <175017363972.88187.6184435760132110232@1538d3639d33>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1750147992.git.jani.nikula@intel.com>
 <175017363972.88187.6184435760132110232@1538d3639d33>
Date: Tue, 17 Jun 2025 22:41:13 +0300
Message-ID: <ba0e4c73b826c6a0300e1f6fd359ad8ddc2f2f13@intel.com>
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

On Tue, 17 Jun 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/plane: file and function renames (rev6)
> URL   : https://patchwork.freedesktop.org/series/147416/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16712 -> Patchwork_147416v6
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_147416v6 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147416v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/index.html
>
> Participating hosts (38 -> 39)
> ------------------------------
>
>   Additional (1): bat-arlh-2 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_147416v6:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live:
>     - bat-jsl-1:          [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-jsl-1/igt@i915_selftest@live.html
>    [2]:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-jsl-1/igt@i915_selftest@live.html

Unrelated, please re-report.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_147416v6 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@eof:
>     - bat-arlh-2:         NOTRUN -> [SKIP][3] ([i915#11345] / [i915#11346]) +3 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@fbdev@eof.html
>
>   * igt@fbdev@info:
>     - bat-arlh-2:         NOTRUN -> [SKIP][4] ([i915#11346] / [i915#1849])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_mmap@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#11343] / [i915#11346])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@gem_mmap@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][7] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725] / [i915#4079])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
>
>   * igt@gem_tiled_blits@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][8] ([i915#11346] / [i915#12637]) +4 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@gem_tiled_blits@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][9] ([i915#10206] / [i915#11346] / [i915#11724] / [i915#4079])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_module_load@load:
>     - bat-mtlp-9:         [PASS][10] -> [DMESG-WARN][11] ([i915#13494])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-9/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-mtlp-9/igt@i915_module_load@load.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-arlh-2:         NOTRUN -> [SKIP][12] ([i915#10209] / [i915#11346] / [i915#11681])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@i915_pm_rps@basic-api.html
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][13] -> [DMESG-FAIL][14] ([i915#14243]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-arlh-3/igt@i915_selftest@live.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-3/igt@i915_selftest@live.html
>
>   * igt@intel_hwmon@hwmon-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][15] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@intel_hwmon@hwmon-read.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-arlh-2:         NOTRUN -> [SKIP][16] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - bat-arlh-2:         NOTRUN -> [SKIP][18] ([i915#11190] / [i915#11346]) +16 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@kms_pipe_crc_basic@nonblocking-crc.html
>
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-arlh-2:         NOTRUN -> [SKIP][19] ([i915#11346]) +15 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-arlh-2:         NOTRUN -> [SKIP][20] ([i915#10208] / [i915#11346] / [i915#8809])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][21] ([i915#10212] / [i915#11346] / [i915#11726])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][22] ([i915#10214] / [i915#11346] / [i915#11726])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-arlh-2:         NOTRUN -> [SKIP][23] ([i915#10216] / [i915#11346] / [i915#11723])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-arlh-2/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live:
>     - bat-dg2-8:          [DMESG-FAIL][24] ([i915#12061]) -> [PASS][25] +1 other test pass
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-dg2-8/igt@i915_selftest@live.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-dg2-8/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][26] ([i915#12061]) -> [PASS][27] +1 other test pass
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-11:         [DMESG-FAIL][28] ([i915#12061]) -> [PASS][29] +1 other test pass
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-14:         [DMESG-FAIL][30] ([i915#12061]) -> [PASS][31] +1 other test pass
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16712/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>
>   
>   [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
>   [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
>   [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
>   [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
>   [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
>   [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
>   [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
>   [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
>   [i915#11680]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
>   [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
>   [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
>   [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
>   [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
>   [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
>   [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16712 -> Patchwork_147416v6
>
>   CI-20190529: 20190529
>   CI_DRM_16712: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8412: 8412
>   Patchwork_147416v6: 95f0ac069cc2eee10b5d5e0ba67502ccea089de8 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v6/index.html

-- 
Jani Nikula, Intel
