Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED9B9E28AF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 18:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9098A10E250;
	Tue,  3 Dec 2024 17:07:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Om+QHC7h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA24B10E250;
 Tue,  3 Dec 2024 17:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733245640; x=1764781640;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=bHBHS8O57Rhz3B/RAg/cxwRI//imx/7NSGIa+LxAc8U=;
 b=Om+QHC7hWUqSsEhuuOMiSIvvlJa2tZw1Gfi/ItNPYgdjFXUpZEVoS42d
 11OUWzSdpY+Kd9kTIdtoFUxgJIpi8rRfILn9TFXB9fKNRJRbuvWP9u+79
 RblrHOy3Nd5mGtU+j2xXfedC7KhL0K6v7uhrZwZSiI/czbQh+X+c12vfR
 ra2KFeErDr3QY36LkllnXnGOhOcefFahy51LTaDzxPzEkgcjPC+xCTCGh
 Drnq7cy3nYh5jHGjU+s4houcaYAfR1yPNK0KDsyKri/yI2ru/uUFMQ3OK
 MRvWhaiZRwYxCLF3h6gZk0wcHXgXl3bYM/EZ/0qD+JxXU4yP2x2WohwDx A==;
X-CSE-ConnectionGUID: VhCZvSE9TDO1EtAfxAEUDg==
X-CSE-MsgGUID: CvgT5jyMRkGlOsFQdaBHhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44083782"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="44083782"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 09:07:20 -0800
X-CSE-ConnectionGUID: /875FMI9RRSV8akkt+aqRA==
X-CSE-MsgGUID: cf2hIbG0RCKR4N7S4SamXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="98281963"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 09:07:19 -0800
Date: Tue, 3 Dec 2024 19:07:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 drm/dp_mst: Fix a few side-band message handling issues
Message-ID: <Z0867N2_OIfdKRNe@ideak-desk.fi.intel.com>
References: <20241203160223.2926014-1-imre.deak@intel.com>
 <173324464977.2079416.10103553173053470508@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173324464977.2079416.10103553173053470508@b555e5b46a47>
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

On Tue, Dec 03, 2024 at 04:50:49PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/dp_mst: Fix a few side-band message handling issues
> URL   : https://patchwork.freedesktop.org/series/142057/
> State : failure

the failure is unrelated, see below, please re-report the result.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15778 -> Patchwork_142057v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142057v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142057v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/index.html
> 
> Participating hosts (42 -> 41)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142057v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-plain-flip@b-dp2:
>     - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@b-dp2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@b-dp2.html

The above host doesn't have any MST output connected to it, so none of
the changes in the patchset should have an effect on it.

The failure is

<3> [163.445434] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun

and looks to be the same issue as the one reported in
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142057v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][3] -> [FAIL][4] ([i915#12903])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_flip@basic-plain-flip:
>     - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#12914]) +1 other test dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-8109u/igt@kms_flip@basic-plain-flip.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][7] +36 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_module_load@load:
>     - fi-pnv-d510:        [ABORT][8] ([i915#13203]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-pnv-d510/igt@i915_module_load@load.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-pnv-d510/igt@i915_module_load@load.html
>     - bat-adlp-6:         [DMESG-WARN][10] ([i915#12253]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-adlp-6/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-adlp-6/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-guc:         [FAIL][12] ([i915#12903]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [ABORT][14] ([i915#12061]) -> [PASS][15] +1 other test pass
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-arlh-2:         [ABORT][16] ([i915#12061]) -> [PASS][17] +1 other test pass
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15778/bat-arlh-2/igt@i915_selftest@live@workarounds.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
>   [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15778 -> Patchwork_142057v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15778: 5779fb3c12faf12589054127d60b1d36d56ba219 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8135: c6840f5e3c3b942aa79727ee4978a5b79f290b67 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142057v1: 5779fb3c12faf12589054127d60b1d36d56ba219 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142057v1/index.html
