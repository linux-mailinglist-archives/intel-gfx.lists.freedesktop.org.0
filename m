Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07059A2859F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FF710E757;
	Wed,  5 Feb 2025 08:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hw6O3n5D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEEF410E752;
 Wed,  5 Feb 2025 08:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738744406; x=1770280406;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Xomdi+qrK7DntZCHyi13J1HWsm2PQ5ZCJfB6U4eLhz4=;
 b=hw6O3n5DBAf4LDqDdIvVsnp6Qd46UsSQyqeBhXNCFdOc0kmFsA5BxYGR
 qsBwe47au0OEGcsu4NiqjbGoqsDLJcBhV9YglPpND77tvP1BtAIA1yVxW
 /63Yt+UQVkycfnyrroBQsqvkRLPftjHdsARxNJI0sgtErU/esu7yX9cjn
 m6wa5VoPOj6QUTLuYjMbClxITfg5J5lTM531ANmBNPQC6eOnSGg/nr859
 JWPR2LuLWKJuDrxwJDI/ikzh31PyIQwEzhPsqEyThpsuH0xR1fjh9cS/z
 0O8ZfU9HEan4yTqykwZiiVKVcJVmcyUtDIxSxmWVMhIIrU9kY5W6X70n8 g==;
X-CSE-ConnectionGUID: iWGOAsFrQP+zO4fTqTAW/g==
X-CSE-MsgGUID: UvR+rPvrRfOABxTTSInp+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38531404"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="38531404"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:33:26 -0800
X-CSE-ConnectionGUID: U2f+T4x4QVOl/auCeZH5GQ==
X-CSE-MsgGUID: 1JXsmU8IReiWApDucc8C5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="115885496"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:33:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/lspcon:
 interface cleanups (rev2)
In-Reply-To: <173869502054.1017872.15228791601402384595@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738677489.git.jani.nikula@intel.com>
 <173869502054.1017872.15228791601402384595@b555e5b46a47>
Date: Wed, 05 Feb 2025 10:33:21 +0200
Message-ID: <8734gs6bam.fsf@intel.com>
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
> Series: drm/i915/lspcon: interface cleanups (rev2)
> URL   : https://patchwork.freedesktop.org/series/142059/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16063 -> Patchwork_142059v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_142059v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142059v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/index.html
>
> Participating hosts (43 -> 42)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_142059v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html

Please re-report.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_142059v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_module_load@load:
>     - bat-twl-1:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-twl-1/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-twl-1/igt@i915_module_load@load.html
>
>   * igt@i915_selftest@live:
>     - bat-twl-2:          NOTRUN -> [ABORT][5] ([i915#12435] / [i915#13399])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-twl-2/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@reset:
>     - bat-twl-2:          NOTRUN -> [ABORT][6] ([i915#13399])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-twl-2/igt@i915_selftest@live@reset.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][7] -> [SKIP][8] ([i915#9197]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - {bat-mtlp-9}:       [DMESG-FAIL][9] ([i915#12061]) -> [PASS][10] +1 other test pass
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16063 -> Patchwork_142059v2
>
>   CI-20190529: 20190529
>   CI_DRM_16063: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142059v2: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142059v2/index.html

-- 
Jani Nikula, Intel
