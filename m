Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1F4A44287
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 15:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FBC10E4C7;
	Tue, 25 Feb 2025 14:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvhO/L97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBFE10E176;
 Tue, 25 Feb 2025 14:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740493456; x=1772029456;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=utQHrMk8G3Rt8OFWxycvhdG1ExTlZ1w9ly0PoosXMD4=;
 b=UvhO/L97YoC8cfTfE5v5r4H4TIWEVXJf3g84p3h1CdnbBqPdfSurr7O0
 KSZpHtHlghNUiQ02Ia1UqP0ntN8DsfyVcEEpaHN7kS8IrqkfiHHt3ENZr
 7zG98XcR+JHhZL+ikQhz4J20R5NioYQSSeoz85CwXE2sfS8NOxTpjTfzB
 8H92ri7lApE0VnZeXvhH0BupL0ZUh82qWPXqd1OCIZTZ7tGOEPLtiibxA
 xxMQNtdqHOTGg4lOkoPMWOkzfzFPvta3CC+EBMES2xaG+l1fcUJU70P0h
 lLOC5yUaWe1B4UID6p3Bb+4YNWJqdjWXCVRObzH3PbJmKKIrzqjD03hqz Q==;
X-CSE-ConnectionGUID: gO7XBO2fRhCwNvT/gz15UA==
X-CSE-MsgGUID: AyMb1kB5TLSLwhqHZDXSew==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41213974"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41213974"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:24:10 -0800
X-CSE-ConnectionGUID: EhP7GRJFTgGToY0KjdoRJA==
X-CSE-MsgGUID: 4wGCCjk2QuOKMEe9xqYHSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="153590012"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:24:08 -0800
Date: Tue, 25 Feb 2025 16:25:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ur?=
 =?utf-8?Q?e?= for drm/dp: Fix link training interrupted by HPD pulse (rev3)
Message-ID: <Z73Sxbtinq6m0yPG@ideak-desk.fi.intel.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
 <174049091535.1979544.8135908907842640775@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174049091535.1979544.8135908907842640775@b555e5b46a47>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi CI team,

On Tue, Feb 25, 2025 at 01:41:55PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/dp: Fix link training interrupted by HPD pulse (rev3)
> URL   : https://patchwork.freedesktop.org/series/145352/
> State : failure

the issue reported below is unrelated, see my comment there, could you
re-report this result?

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16178 -> Patchwork_145352v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_145352v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_145352v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_145352v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2:
>     - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2.html

There is no HPD IRQ raised or handled on the above host, so the changes
are not related to it.

The issue is:
<3> [158.833677] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun

It seems to happen frequently, on the same host, leading to incorrect
BAT failures.

There is
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12935

but on a different host (MTL).

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_145352v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_module_load@load:
>     - bat-mtlp-9:         [PASS][3] -> [DMESG-WARN][4] ([i915#13494])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-mtlp-9/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-mtlp-9/igt@i915_module_load@load.html
> 
>   * igt@i915_selftest@live:
>     - bat-twl-2:          [PASS][5] -> [ABORT][6] ([i915#12435] / [i915#12919] / [i915#13503])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-twl-2/igt@i915_selftest@live.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-twl-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@memory_region:
>     - bat-twl-2:          [PASS][7] -> [ABORT][8] ([i915#12919])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-twl-2/igt@i915_selftest@live@memory_region.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-twl-2/igt@i915_selftest@live@memory_region.html
> 
>   * igt@i915_selftest@live@requests:
>     - bat-atsm-1:         [PASS][9] -> [INCOMPLETE][10] ([i915#12445])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-atsm-1/igt@i915_selftest@live@requests.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-atsm-1/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-arls-5/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [ABORT][17] ([i915#13679]) -> [INCOMPLETE][18] ([i915#12445])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16178/bat-atsm-1/igt@i915_selftest@live.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/bat-atsm-1/igt@i915_selftest@live.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
>   [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
>   [i915#13679]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13679
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16178 -> Patchwork_145352v3
> 
>   CI-20190529: 20190529
>   CI_DRM_16178: d5debc4841e604372c74ebda0bbf54bd527c3475 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8247: 8247
>   Patchwork_145352v3: d5debc4841e604372c74ebda0bbf54bd527c3475 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145352v3/index.html
