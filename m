Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5B09B5E7F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 10:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57CC10E409;
	Wed, 30 Oct 2024 09:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXN2xXj1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6A310E2AA;
 Wed, 30 Oct 2024 09:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730279629; x=1761815629;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SBMDdQxQMErq/mDK+xZ4gR7xXfhRt7Nk3QNEfZVi/2o=;
 b=aXN2xXj1UgflZxA5YI15/K9yas8LM9bjRycbZyxKsfha+uMZobMuoZK9
 Tg6/Oist662QUn7QZsWIa3hvlgwDKRJRBrFbIpIVdy1FFjopXTvocHxVi
 +XiGbSxZ0ctF2ne8ZBah8+1s/JKcaIVPLfGmExEe/WSxlpHvatCIe4qrw
 M5QeCt9bFylxOSmCkrNR4XiD+mbE/DvDAqIcPH57cR2DaFZWkwmvT0p1B
 octDgCxdir0bybdgqqny4872WEwNbzrAyuboq7L8S+xADkGEibSIBtgCv
 kic1+xFOUIch+1y3n9y1ZNEHX6dHGDoArJrFKvszpRbEXg3O7tXtenSfX A==;
X-CSE-ConnectionGUID: +VB3gK1DS1q53hW+pwGXeg==
X-CSE-MsgGUID: UnuWkB7rRG+9EjXxrhHlHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30182920"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="30182920"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 02:13:48 -0700
X-CSE-ConnectionGUID: 5tZXwGQ8R/2CsvNHLDYs7w==
X-CSE-MsgGUID: PxaXnd10QXGXDx/WPY2nuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82417445"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 02:13:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/i915: add
 dedicated lock for each sideband (rev3)
In-Reply-To: <173024786373.1362048.16983004525018468080@2413ebb6fbb6>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730193891.git.jani.nikula@intel.com>
 <173024786373.1362048.16983004525018468080@2413ebb6fbb6>
Date: Wed, 30 Oct 2024 11:13:43 +0200
Message-ID: <875xpanebc.fsf@intel.com>
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

On Wed, 30 Oct 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: add dedicated lock for each sideband (rev3)
> URL   : https://patchwork.freedesktop.org/series/139437/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15607 -> Patchwork_139437v3
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_139437v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_139437v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/index.html
>
> Participating hosts (47 -> 46)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_139437v3:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live:
>     - bat-jsl-1:          [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15607/bat-jsl-1/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/bat-jsl-1/igt@i915_selftest@live.html

Unrelated.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_139437v3 that come from known issues:
>
> ### IGT changes ###
>
> #### Possible fixes ####
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [ABORT][3] ([i915#12133] / [i915#12216]) -> [PASS][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15607/bat-mtlp-8/igt@i915_selftest@live.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/bat-mtlp-8/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-8:         [ABORT][5] ([i915#12216]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15607/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - bat-dg2-13:         [DMESG-WARN][7] ([i915#12253]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15607/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
>
>   
>   [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
>   [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
>   [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15607 -> Patchwork_139437v3
>
>   CI-20190529: 20190529
>   CI_DRM_15607: fb2691707e2d5a8c704ae5e48bc5a314a308b0e0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8087: 7abd9c49a49a9ff1f3300d7c51a92a5af8a789f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_139437v3: fb2691707e2d5a8c704ae5e48bc5a314a308b0e0 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139437v3/index.html

-- 
Jani Nikula, Intel
