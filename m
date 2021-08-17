Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAA93EF025
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 18:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D6E8902A;
	Tue, 17 Aug 2021 16:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7CB6E1EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 16:26:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="203337577"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="203337577"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 09:26:17 -0700
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="640987324"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 09:26:17 -0700
Date: Tue, 17 Aug 2021 09:26:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Message-ID: <20210817162616.GT1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210816204112.2960624-1-matthew.d.roper@intel.com>
 <162921613493.22609.5351941758725285675@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <162921613493.22609.5351941758725285675@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Also_disable_underrun_recovery_with_MSO?=
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

On Tue, Aug 17, 2021 at 04:02:14PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl_p: Also disable underrun recovery with MSO
> URL   : https://patchwork.freedesktop.org/series/93732/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10490 -> Patchwork_20835
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20835 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20835, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20835:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10490/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

This IVB error is unrelated to the patch here (which would only affect
platforms with display version >= 13).


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20835 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@semaphore:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-bdw-5557u:       NOTRUN -> [WARN][4] ([i915#3718])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@runner@aborted:
>     - fi-ivb-3770:        NOTRUN -> [FAIL][6] ([fdo#109271])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/fi-ivb-3770/igt@runner@aborted.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
> 
> 
> Participating hosts (36 -> 34)
> ------------------------------
> 
>   Missing    (2): fi-bsw-cyan fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10490 -> Patchwork_20835
> 
>   CI-20190529: 20190529
>   CI_DRM_10490: 3bd74b377986fcb89cf4563629f97c5b3199ca6f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_20835: 4a9bac99ddffb1e355f2084d1b46465aac20b6c8 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 4a9bac99ddff drm/i915/adl_p: Also disable underrun recovery with MSO
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20835/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
