Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972359D886D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 15:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA3910E0A1;
	Mon, 25 Nov 2024 14:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnnZ/2Ls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37E210E013;
 Mon, 25 Nov 2024 14:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732546141; x=1764082141;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VsfMJEwxXlLMmaelsBZUnwUKujLq1nxvKpc44wLHpCU=;
 b=fnnZ/2LsPCrubWYUZzeB3EqFVVFcOPiBinwSAo67wlj5RG4/e1I4n6n9
 3JkdxXs+vXxN2+HMC/GsxAhs/7cnDAGZEkFZF2/OVIf8T1s1KYjXIQky/
 l5dnSgjnPP0OWJBhdCLCZuGU5J9awLsshvmHew04NFKXnjdnUX/hwQHgE
 6z93L4fdF982JjR7x9BvaOIRv6fsPT4n8U8tN2ZLUGbmkAcoQuI1ri1nN
 H8lU1axEjZ4dJJ6T7KYt79B8WsuW2c0AXWSwP+Gf5dMTnwtOcQzbmwQw6
 VcClHb0ImPvDFZHAge5d+VHYwgHLCPfRFr/mg7LkcoJSRm7vplGTibhBv w==;
X-CSE-ConnectionGUID: ho1ctu/vThO5l1DWTJA1hw==
X-CSE-MsgGUID: TEB02rkOS4aKG3ChpG6lww==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="32913733"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="32913733"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 06:49:00 -0800
X-CSE-ConnectionGUID: Hli7yju1QMac4Wvp+xJ1yw==
X-CSE-MsgGUID: po0vMcpDTT+kKgmlVIUUrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="91195150"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 06:48:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/ddi:
 clarify intel_ddi_connector_get_hw_state() for DP MST
In-Reply-To: <173254146652.2830354.556775084917022077@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241125120959.2366419-1-jani.nikula@intel.com>
 <173254146652.2830354.556775084917022077@b555e5b46a47>
Date: Mon, 25 Nov 2024 16:48:55 +0200
Message-ID: <87ldx7xtbc.fsf@intel.com>
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

On Mon, 25 Nov 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/ddi: clarify intel_ddi_connector_get_hw_state() for DP MST
> URL   : https://patchwork.freedesktop.org/series/141749/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15738 -> Patchwork_141749v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_141749v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141749v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/index.html
>
> Participating hosts (45 -> 44)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_141749v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

Unrelated, please re-report.

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_141749v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-apl-1/igt@dmabuf@all-tests.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-jsl-3:          [PASS][5] -> [INCOMPLETE][6] ([i915#12434])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
>     - fi-cfl-guc:         [PASS][7] -> [FAIL][8] ([i915#12903])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][9] -> [ABORT][10] ([i915#12061]) +1 other test abort
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-mtlp-8/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-adlp-9:         [PASS][11] -> [ABORT][12] ([i915#9413]) +1 other test abort
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-adlp-9/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-adlp-9/igt@i915_selftest@live.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [FAIL][15] ([i915#12903]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [FAIL][17] ([i915#12903]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [ABORT][19] ([i915#12061]) -> [PASS][20] +1 other test pass
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-6:         [ABORT][21] ([i915#12061]) -> [PASS][22] +1 other test pass
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15738/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12434
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15738 -> Patchwork_141749v1
>
>   CI-20190529: 20190529
>   CI_DRM_15738: b21f1413ea1860e80fd278112e820e6dadfc9df9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8124: 8124
>   Patchwork_141749v1: b21f1413ea1860e80fd278112e820e6dadfc9df9 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141749v1/index.html

-- 
Jani Nikula, Intel
