Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E1FAEA269
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 17:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5C210E2C6;
	Thu, 26 Jun 2025 15:25:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMzlfIxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B113310E2C4;
 Thu, 26 Jun 2025 15:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750951532; x=1782487532;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G0l0BV4zyiFiOHzxUDxTCeTWJTM4SJf32u5daVBN8G0=;
 b=KMzlfIxuNZcCWEDuM+DXac9GP+zkBb5qSxecwNc6Uf1L3DKrEoBlS8J0
 HFWCXEWr63D6l/XvsQoTvEQsICL8t6A7lCIP+gS0vgIzf3rSXBC80WoGU
 99b4EGPiAu/mp9Rqn20WejaWCsm/czTAvquMzOZVAOaIjiZD501HHlSQi
 V/XInEwOhBexy1t4ynX366QfVDUCiy0wUx6jL99dDAWZKvGLPPzwtk4Ls
 S79ElOP8bTi6l1SM3pAOjQTzFtYSW9VMjNBGz4ohkhb3TXf/f+SG2ucXf
 7+EZQKguZxw80d2/ti1kwGDxVPYSivSpiu81nHtWxn1WRb0g1LrsWCmnm g==;
X-CSE-ConnectionGUID: U1pfapioQ6+YeqKwIl8+ug==
X-CSE-MsgGUID: etXl89eORjymZWcOWeUL0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="57061890"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57061890"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:25:32 -0700
X-CSE-ConnectionGUID: TjAjh2w8SfiuoqJwPUyAFA==
X-CSE-MsgGUID: SMVSBb7NSBSXOeRQljI5rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="157110061"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:25:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for
 drm/i915/display: drop a number of dependencies on i915_drv.h
In-Reply-To: <175094318814.112774.3146630614017145646@1538d3639d33>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626101636.1896365-1-jani.nikula@intel.com>
 <175094318814.112774.3146630614017145646@1538d3639d33>
Date: Thu, 26 Jun 2025 18:25:28 +0300
Message-ID: <fb95dda24494df20e65c38bbd90c5bb32bc601e6@intel.com>
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

On Thu, 26 Jun 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: drop a number of dependencies on i915_drv.h
> URL   : https://patchwork.freedesktop.org/series/150813/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16760 -> Patchwork_150813v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_150813v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_150813v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/index.html
>
> Participating hosts (44 -> 44)
> ------------------------------
>
>   Additional (1): bat-arlh-2 
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_150813v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@ring_submission:
>     - bat-mtlp-9:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-mtlp-9/igt@i915_selftest@live@ring_submission.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-mtlp-9/igt@i915_selftest@live@ring_submission.html

Unrelated, please re-report.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_150813v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@eof:
>     - bat-arlh-2:         NOTRUN -> [SKIP][3] ([i915#11345] / [i915#11346]) +3 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@fbdev@eof.html
>
>   * igt@fbdev@info:
>     - bat-arlh-2:         NOTRUN -> [SKIP][4] ([i915#11346] / [i915#1849])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_mmap@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#11343] / [i915#11346])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@gem_mmap@basic.html
>
>   * igt@gem_render_tiled_blits@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][7] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725] / [i915#4079])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
>
>   * igt@gem_tiled_blits@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][8] ([i915#11346] / [i915#12637]) +4 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@gem_tiled_blits@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][9] ([i915#10206] / [i915#11346] / [i915#11724] / [i915#4079])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-arlh-2:         NOTRUN -> [SKIP][10] ([i915#10209] / [i915#11346] / [i915#11681])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-9:         [PASS][11] -> [INCOMPLETE][12] ([i915#14402])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-mtlp-9/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-mtlp-9/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-6:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arls-6/igt@i915_selftest@live@workarounds.html
>
>   * igt@intel_hwmon@hwmon-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][15] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-arlh-2:         NOTRUN -> [SKIP][16] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - bat-arlh-2:         NOTRUN -> [SKIP][18] ([i915#11190] / [i915#11346]) +16 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@kms_pipe_crc_basic@nonblocking-crc.html
>
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-arlh-2:         NOTRUN -> [SKIP][19] ([i915#11346]) +15 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-arlh-2:         NOTRUN -> [SKIP][20] ([i915#10208] / [i915#11346] / [i915#8809])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][21] ([i915#10212] / [i915#11346] / [i915#11726])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][22] ([i915#10214] / [i915#11346] / [i915#11726])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-arlh-2:         NOTRUN -> [SKIP][23] ([i915#10216] / [i915#11346] / [i915#11723])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arlh-2/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [DMESG-FAIL][24] ([i915#12061]) -> [PASS][25] +1 other test pass
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
>
>   
> #### Warnings ####
>
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][26] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][27] ([i915#12061] / [i915#14204])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-atsm-1/igt@i915_selftest@live.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-atsm-1/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][28] ([i915#13929]) -> [DMESG-FAIL][29] ([i915#14204])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16760/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/bat-atsm-1/igt@i915_selftest@live@mman.html
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
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>   [i915#14402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14402
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16760 -> Patchwork_150813v1
>
>   CI-20190529: 20190529
>   CI_DRM_16760: d76821a5677456269831568238080f923bc4bf49 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8428: 8428
>   Patchwork_150813v1: d76821a5677456269831568238080f923bc4bf49 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150813v1/index.html

-- 
Jani Nikula, Intel
