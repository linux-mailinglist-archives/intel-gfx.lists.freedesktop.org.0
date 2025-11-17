Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EACB9C65738
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 18:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F3810E39C;
	Mon, 17 Nov 2025 17:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GR/5qbsI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DEB10E38C;
 Mon, 17 Nov 2025 17:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763400194; x=1794936194;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Cfggv1ylG3O+3qWDA9XfUz6I8dPQNsF30ixYsn/iOt0=;
 b=GR/5qbsIaiea9/vK03/nevbe8pYZNVmsxpf/sVmHjh48KJjqWhmedegY
 AgHTtAQcP8b6bbpfsSBY0YdVjbNkJvZFXrr/5JSXndZAzPMT6DoPALydd
 Cud0aEPmm0NqRrQiq8gGF7ZUA4VJguNsXqXMXWpIVjx85ojJS2l7AiA+p
 X+QOLbHvreSOEG1cOHWi2R4SDfsN8yI00K1ibEQG1yJRvS4SwjHYP75/g
 wiOr/exalBHTKJFp99o7LHaCI69B0pFXQJazcygD7vy4Qhcura0Jm8+N1
 RwVciVHKzpkkhy8y7or6IHOuTRsJziYzMUmq6nHFAms05KIjqofereqP7 A==;
X-CSE-ConnectionGUID: QFG0LM5qRzWtfTRlMgP8Ww==
X-CSE-MsgGUID: 8E3RnrqKQc27jcQN12LyuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="69274566"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="69274566"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:23:13 -0800
X-CSE-ConnectionGUID: yp0e0v8qQG6Mc7L3Kt6jGg==
X-CSE-MsgGUID: A0QC4lhYSe6SROFcGltxhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="227841432"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:23:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915: call
 irq and rps through the parent interface (rev6)
In-Reply-To: <176339912272.2934.14955772788609189358@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763370930.git.jani.nikula@intel.com>
 <176339912272.2934.14955772788609189358@a3b018990fe9>
Date: Mon, 17 Nov 2025 19:23:06 +0200
Message-ID: <e078c38b6e735ac8c1e16f2174601563c727c7d6@intel.com>
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

On Mon, 17 Nov 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: call irq and rps through the parent interface (rev6)
> URL   : https://patchwork.freedesktop.org/series/157575/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_17559 -> Patchwork_157575v6
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_157575v6 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_157575v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html
>
> Participating hosts (44 -> 44)
> ------------------------------
>
>   Additional (1): fi-bsw-nick 
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_157575v6:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@sanitycheck:
>     - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html

Please re-report, it's highly unlike the series would cause this.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_157575v6 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@info:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([i915#1849])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][4] +25 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][5] -> [INCOMPLETE][6] ([i915#14764] / [i915#14818] / [i915#14837] / [i915#15175] / [i915#15198])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([i915#11190]) +16 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][10] ([i915#12061]) -> [PASS][11] +1 other test pass
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-9:         [DMESG-FAIL][12] ([i915#12061]) -> [PASS][13] +1 other test pass
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_flip@basic-flip-vs-modeset:
>     - fi-bsw-n3050:       [DMESG-WARN][14] ([i915#15203]) -> [PASS][15] +3 other tests pass
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html
>
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-cfl-guc:         [SKIP][16] -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html
>
>   
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#14764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764
>   [i915#14818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818
>   [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
>   [i915#15175]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15175
>   [i915#15198]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15198
>   [i915#15203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15203
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_17559 -> Patchwork_157575v6
>
>   CI-20190529: 20190529
>   CI_DRM_17559: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8628: 8628
>   Patchwork_157575v6: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html

-- 
Jani Nikula, Intel
