Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25042A06450
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 19:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D8610E90B;
	Wed,  8 Jan 2025 18:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JN08yeAe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197F610E90B;
 Wed,  8 Jan 2025 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736360662; x=1767896662;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=R905tioflBjHjtWG2WbOz6S0VN8EdD0x7FKzjb7ma/I=;
 b=JN08yeAej5yqZ0pKx+qvDngWzqnFmpZqSNLEdFRJBRs83oYcoco4rs6z
 DfzMkXZPvQzf7RYyfO1JVkxSYAvARrVBEogb+HZ6WAtDvoo1zX5PE952j
 gPJb4yF0s5D1V2KuLyepCGbOrDlbDegS4FmBIVCHdjDxkoV1Rz5G4k3PP
 uqXWhN1MH8/ZdhHlvf/eGejHK/BybqEfMw1qOVwYhoCK1RIUz8vPfIAat
 K9XpMak8DQ9+M8eHdo070I9Nj9ORUz01rS0m1zZNyuYtL3RmDwuzI5XRL
 QCPleqRAI/+6uvxyKLhRS2h0lq11HU/hZCdehOsFzoTs9N2gA/LDY8URt w==;
X-CSE-ConnectionGUID: wgbkE3UoRI2tOp+gSzjjaw==
X-CSE-MsgGUID: kvuU7SDFS2aArzpRc479sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47271026"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="47271026"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 10:24:22 -0800
X-CSE-ConnectionGUID: 3ahO9eJYQb6IOq9kn8bbsA==
X-CSE-MsgGUID: AEkdXjTqTLKkp7FYw7MddQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108223952"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 10:24:20 -0800
Date: Wed, 8 Jan 2025 20:25:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ur?=
 =?utf-8?Q?e?= for drm/i915/dp_mst: Fix error handling/clean up pointer use
Message-ID: <Z37C_sV4cXbJP01d@ideak-desk.fi.intel.com>
References: <20250108151916.491113-1-imre.deak@intel.com>
 <173635742086.1359290.468005457429633961@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173635742086.1359290.468005457429633961@b555e5b46a47>
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

On Wed, Jan 08, 2025 at 05:30:20PM +0000, Patchwork wrote:

Hi CI team,

the failure is unrelated to changes, see below.

Thanks,
Imre

> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix error handling/clean up pointer use
> URL   : https://patchwork.freedesktop.org/series/143259/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15924 -> Patchwork_143259v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_143259v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143259v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/index.html
> 
> Participating hosts (38 -> 37)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_143259v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@active:
>     - fi-kbl-7567u:       [PASS][1] -> [DMESG-FAIL][2] +1 other test dmesg-fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/fi-kbl-7567u/igt@i915_selftest@live@active.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/fi-kbl-7567u/igt@i915_selftest@live@active.html

The above host doesn't have an MST output, so the change are not related
to the issue. It is:

<3> [331.405068] i915 0000:00:02.0: [drm] *ERROR* live_active_wait i915_active not retired after waiting!
<3> [331.405079] i915 0000:00:02.0: [drm] *ERROR* live_active_wait active __live_active [i915]:__live_retire [i915]
<3> [331.405734] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	count: 0
<3> [331.405741] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	preallocated barriers? no
<3> [331.405964] i915/i915_active_live_selftests: live_active_wait failed with error -22

and seems to match:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_143259v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests:
>     - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/fi-pnv-d510/igt@dmabuf@all-tests.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [PASS][4] -> [FAIL][5] ([i915#13401])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][6] +31 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][7] -> [SKIP][8] ([i915#9197]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - bat-twl-2:          [ABORT][9] ([i915#12919] / [i915#13397]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-twl-2/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-twl-2/igt@i915_selftest@live.html
>     - bat-jsl-3:          [INCOMPLETE][11] ([i915#13241]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-jsl-3/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-twl-2:          [ABORT][13] ([i915#12919]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - bat-jsl-3:          [DMESG-FAIL][15] ([i915#13132]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@gt_pm.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-jsl-3/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@objects:
>     - bat-jsl-3:          [INCOMPLETE][17] -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@objects.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-jsl-3/igt@i915_selftest@live@objects.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [DMESG-FAIL][19] ([i915#13393]) -> [PASS][20] +1 other test pass
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - {bat-arls-6}:       [DMESG-FAIL][21] ([i915#13393]) -> [PASS][22] +1 other test pass
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [ABORT][23] ([i915#13169]) -> [SKIP][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13132
>   [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
>   [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
>   [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
>   [i915#13397]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13397
>   [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15924 -> Patchwork_143259v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15924: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8181: 32ed9fc482fee95777054d53b96d19a7e30eaa18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143259v1: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v1/index.html
