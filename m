Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30DEA5D952
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 10:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1B210E05F;
	Wed, 12 Mar 2025 09:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="na/Hi0Zn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9279310E05F;
 Wed, 12 Mar 2025 09:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741771524; x=1773307524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RtZmKw/XTibIeU8H7aG3h3VbETzQs6TmqgFtYHO+oyI=;
 b=na/Hi0ZnnjPOBA7+bLAZsVWiaDni3Kp1z19iqdqdFPXgViD3QlD+gSek
 rxUavDpovS+uZCC6l/7YQZPBN+VBZnZwdCpJW3SxUZFv7iWvZ6wf/IWtV
 6RyU81LlJdWYnkCnjlms5SMaBsL7ZWM+A16zWu14avpj/IvUEkIgnG9XW
 XNeh4n83e2gCgcbVH5q5twJTNKUvD77IR6SkiNsBHoXGb3oxrxIeRZ/qx
 g7tV8OIxRUnNIaqEYu28fNTsjbcCI+C9hHKdSeLKX47Iurr+xWDGpdrS7
 /Zm2w/8pB2GiXCTI1DhSaXlg0gAwishY2+cYlbgr8TJezqVk0BZRucqct A==;
X-CSE-ConnectionGUID: PeXqfXEpSSuRtysYen3hyA==
X-CSE-MsgGUID: jT0ONM+9RBKXqXoIixO8Qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="68200293"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="68200293"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 02:25:20 -0700
X-CSE-ConnectionGUID: MzlrRcO6S5CnHerrDZVdvA==
X-CSE-MsgGUID: VeORtrkRTCqvyZAufvmaog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="120607834"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.11])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 02:25:18 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.BAT: failure for drm/i915: Fix harmful
 driver register/unregister asymmetry
Date: Wed, 12 Mar 2025 10:25:16 +0100
Message-ID: <6757022.G0QQBjFxQf@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <174173712959.22246.11769679262936531188@18a75f3d1eae>
References: <20250311200550.637383-2-janusz.krzysztofik@linux.intel.com>
 <174173712959.22246.11769679262936531188@18a75f3d1eae>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi I915-ci-infra@lists.freedesktop.org,

On Wednesday, 12 March 2025 00:52:09 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix harmful driver register/unregister asymmetry
> URL   : https://patchwork.freedesktop.org/series/146173/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16265 -> Patchwork_146173v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_146173v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_146173v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_146173v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_addfb_basic@too-high:
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][1] +3 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

AMD device under test, not related.

>   * igt@kms_busy@basic@flip:
>     - bat-apl-1:          [PASS][2] -> [DMESG-WARN][3] +2 other tests dmesg-warn
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-apl-1/igt@kms_busy@basic@flip.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-apl-1/igt@kms_busy@basic@flip.html

That's a known issue, I believe, not related.  Moreover, the change can only 
affect driver probe time error handling, while the test that has failed 
doesn't perform driver probing.

>   * igt@kms_force_connector_basic@force-connector-state:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

AMD device under test in both cases.

Please update filters and re-report.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_146173v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_auth@basic-auth:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][6] ([i915#10462]) +1 other test dmesg-warn
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@core_auth@basic-auth.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-twl-2:          NOTRUN -> [SKIP][7] ([i915#9318])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@dmabuf@all-tests:
>     - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][8] ([i915#12904]) +1 other test incomplete
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-pnv-d510/igt@dmabuf@all-tests.html
>     - bat-apl-1:          NOTRUN -> [INCOMPLETE][9] ([i915#12904]) +1 other test incomplete
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@fbdev@info:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([i915#1849])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@fbdev@info.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][11] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
>     - fi-skl-6600u:       NOTRUN -> [SKIP][12] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][13] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-adls-6:         NOTRUN -> [SKIP][14] ([i915#4613]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-adls-6/igt@gem_lmem_swapping@parallel-random-engines.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][15] ([i915#4613]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-apl-1:          NOTRUN -> [SKIP][16] +3 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-apl-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][17] ([i915#4613]) +3 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][18] ([i915#11031])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-twl-2:          NOTRUN -> [SKIP][19] ([i915#10209] / [i915#11681])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - bat-twl-2:          NOTRUN -> [SKIP][20] ([i915#11030] / [i915#11731]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][21] +62 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
>     - fi-skl-6600u:       NOTRUN -> [SKIP][22] +10 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
>     - bat-twl-2:          NOTRUN -> [SKIP][23] ([i915#9886])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-twl-2:          NOTRUN -> [SKIP][24] ([i915#11032])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][25] -> [SKIP][26] ([i915#9197]) +3 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][27] +33 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-twl-2:          NOTRUN -> [SKIP][28] ([i915#8809])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][29] ([i915#10212] / [i915#3708])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][30] ([i915#10214] / [i915#3708])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-twl-2:          NOTRUN -> [SKIP][31] ([i915#10216] / [i915#3708])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-twl-2/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - bat-adls-6:         [ABORT][32] ([i915#13571]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-adls-6/igt@core_hotunplug@unbind-rebind.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-adls-6/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_selftest@live:
>     - fi-bsw-n3050:       [DMESG-FAIL][34] ([i915#12435]) -> [PASS][35] +1 other test pass
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/fi-bsw-n3050/igt@i915_selftest@live.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/fi-bsw-n3050/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-9:         [DMESG-FAIL][36] ([i915#12061]) -> [PASS][37] +1 other test pass
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [DMESG-FAIL][38] ([i915#12061]) -> [PASS][39] +1 other test pass
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@vgem_basic@unload:
>     - bat-apl-1:          [ABORT][40] -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16265/bat-apl-1/igt@vgem_basic@unload.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/bat-apl-1/igt@vgem_basic@unload.html
> 
>   
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#10462]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10462
>   [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
>   [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
>   [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
>   [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13571]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13571
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16265 -> Patchwork_146173v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16265: eb17816e52395a403aa0b447aa0befa9d2f86dd5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8270: 49751c5c11723262ec66e564c76503f74a9fa831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_146173v1: eb17816e52395a403aa0b447aa0befa9d2f86dd5 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146173v1/index.html
> 




