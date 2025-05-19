Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34654ABBCBD
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 13:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA03010E1CD;
	Mon, 19 May 2025 11:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hwWpfQfu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41D310E136;
 Mon, 19 May 2025 11:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747654806; x=1779190806;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=31mWTcNrglMnzftdJ5VQoKAXYYrekE/1vsixrkHEiYQ=;
 b=hwWpfQfuejiz+NTcHrjjXdxDCPvzEeKQvcX+ThxBwllMD3j1ZZfokZ53
 6gcHfnkC8WEQXB/o+khexC5Ak+jYmmpJ8TPdUhONsjzmxwHwHx/eju+kB
 DKfQfRgnNXFOFZto3KRdRcfRItPhvuNLadpP8Su4o3GgsEZ0LLkXr286A
 Uqk955jdvo5I1GD7GkOkzlEtxfgmVwXAieL1qqjPCpdt6qiXMApounBPB
 M6NaprRpzxcz6NVvaopL75MCwWtsSgK5ULgpIANPivXOOaBxMpa7FEeyl
 9HdqhgLSF+Ja/6MNXEsMnOGakFNokTE3V/CjBNKifaWzcvksFAE4mFxzu Q==;
X-CSE-ConnectionGUID: dLXQrQ7kQa6CdMM8QxeH1A==
X-CSE-MsgGUID: 7YMVIen6Qb+OoHXu48NCFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="49425545"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="49425545"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:40:04 -0700
X-CSE-ConnectionGUID: UklUZOuSSj2nYbInTu6hpA==
X-CSE-MsgGUID: ghq753GZQs2oh3vfHOHhLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="170256514"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:40:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=93?= i915.CI.BAT: success for drm/i915 &
 drm/xe: prep work towards opaque struct intel_display
In-Reply-To: <174740141810.88035.10603333238834179969@c664b1dc75d1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747397638.git.jani.nikula@intel.com>
 <174740141810.88035.10603333238834179969@c664b1dc75d1>
Date: Mon, 19 May 2025 14:39:59 +0300
Message-ID: <87msb8vng0.fsf@intel.com>
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

On Fri, 16 May 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915 & drm/xe: prep work towards opaque struct intel_display
> URL   : https://patchwork.freedesktop.org/series/149114/
> State : success
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16557 -> Patchwork_149114v1
> ====================================================
>
> Summary
> -------
>
>   **SUCCESS**
>
>   No regressions found.

Please kick something to get the full i915 CI results.

Thanks,
Jani.


>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/index.html
>
> Participating hosts (45 -> 45)
> ------------------------------
>
>   No changes in participating hosts
>
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_149114v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][1] -> [DMESG-FAIL][2] ([i915#12061]) +1 other test dmesg-fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-mtlp-8/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-mtlp-8/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@gt_pm:
>     - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4] ([i915#14046])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-9:          [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-14:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - bat-dg2-13:         [PASS][9] -> [FAIL][10] ([i915#13917])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
>
>   
> #### Possible fixes ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][11] ([i915#12904]) -> [PASS][12] +1 other test pass
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-apl-1/igt@dmabuf@all-tests.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [DMESG-FAIL][13] ([i915#14243]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-arlh-3/igt@i915_selftest@live.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-arlh-3/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-9:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   
> #### Warnings ####
>
>   * igt@i915_selftest@live:
>     - bat-arlh-2:         [ABORT][19] ([i915#13723]) -> [INCOMPLETE][20] ([i915#14046])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16557/bat-arlh-2/igt@i915_selftest@live.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/bat-arlh-2/igt@i915_selftest@live.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13917
>   [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
>   [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16557 -> Patchwork_149114v1
>
>   CI-20190529: 20190529
>   CI_DRM_16557: 6d2dd85ba4eb3df89dc816c03b5bf81a470865b2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8365: 8365
>   Patchwork_149114v1: 6d2dd85ba4eb3df89dc816c03b5bf81a470865b2 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149114v1/index.html

-- 
Jani Nikula, Intel
