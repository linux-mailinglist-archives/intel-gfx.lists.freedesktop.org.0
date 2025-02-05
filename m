Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F043A28595
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B9F10E08C;
	Wed,  5 Feb 2025 08:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g+8nwJK0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CE210E08C;
 Wed,  5 Feb 2025 08:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738744287; x=1770280287;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YM+9hSWXIhbThP0khTbqujDyo/YoJnfZ6HTXTyblXtU=;
 b=g+8nwJK0x4mNvf/rnbi067hZLI2BMrPKTmRLhWS6AqkZn3OmjLrinuR0
 awTj5LE31OaCLZFaHQABUUParHFkt4dYDsyoFyhy5EMciArTePND+6sFV
 NfqVTPu9AF4BxrwbSby9aCtfBNIwk1yp8uEui95wre69je6DQOOrgDjDB
 YydJ9a7YEXx2yguilxseZS9Dqk6+hQwE7FIq9Blpw789h0NuQ/7sTPzXX
 JRjpQZjo00Lb0+DCyXf+jOLUsbJZ1GS9YGa9pH0piTQzalRBTkQCNTnjJ
 DpPqDGc6gcJdvJ+qP7Wf5PDhlZZ4//auxM7DAno5i+2E3cxfs7PT8FQi9 Q==;
X-CSE-ConnectionGUID: GeE6cx8ATpSWpjhbuSYG3Q==
X-CSE-MsgGUID: 2PLcZTnlSlO/gNKWy0xeFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38505478"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="38505478"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:31:27 -0800
X-CSE-ConnectionGUID: 2EVLE0AmSq6STooVDUwywg==
X-CSE-MsgGUID: 3yeT6cdtT9OjjmbC9LjfVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141727350"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:31:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for series starting
 with [1/3]
 drm/i915/display: convert intel_ddi_buf_trans.c to struct intel_display
In-Reply-To: <173869320674.1009351.18173905047966742192@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204134228.2934744-1-jani.nikula@intel.com>
 <173869320674.1009351.18173905047966742192@b555e5b46a47>
Date: Wed, 05 Feb 2025 10:31:21 +0200
Message-ID: <877c646bdy.fsf@intel.com>
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

On Tue, 04 Feb 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [1/3] drm/i915/display: convert intel_ddi_buf_trans.c to struct intel_display
> URL   : https://patchwork.freedesktop.org/series/144315/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16063 -> Patchwork_144315v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_144315v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144315v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/index.html
>
> Participating hosts (43 -> 42)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_144315v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

Please re-report. What's with the module reload now?

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_144315v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][3] -> [SKIP][4] ([i915#9197]) +3 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][5] ([i915#12904]) -> [PASS][6] +1 other test pass
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-apl-1/igt@dmabuf@all-tests.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@i915_selftest@live@workarounds:
>     - {bat-mtlp-9}:       [DMESG-FAIL][7] ([i915#12061]) -> [PASS][8] +1 other test pass
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16063 -> Patchwork_144315v1
>
>   CI-20190529: 20190529
>   CI_DRM_16063: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144315v1: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144315v1/index.html

-- 
Jani Nikula, Intel
