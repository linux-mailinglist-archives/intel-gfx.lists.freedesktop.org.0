Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9F74072CF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 23:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5226EAB3;
	Fri, 10 Sep 2021 21:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B475C6EAB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 21:10:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="208410539"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="208410539"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 14:10:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="649520039"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 14:09:59 -0700
Date: Fri, 10 Sep 2021 14:09:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210910210958.GB3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210910201030.3436066-1-matthew.d.roper@intel.com>
 <163130738086.14827.5965786618186738777@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163130738086.14827.5965786618186738777@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Simplify_mmio_handling_=26_add_new_DG2_shadow_table_=28rev?=
 =?utf-8?q?2=29?=
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

On Fri, Sep 10, 2021 at 08:56:20PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Simplify mmio handling & add new DG2 shadow table (rev2)
> URL   : https://patchwork.freedesktop.org/series/94534/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10570 -> Patchwork_21017
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21017 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21017, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21017:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@basic:
>     - fi-rkl-guc:         NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-rkl-guc/igt@kms_busy@basic.html

KMS test skip due to no suitable display; not related to the uncore mmio
changes in this series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21017 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@runner@aborted:
>     - fi-kbl-7500u:       NOTRUN -> [FAIL][4] ([i915#1814] / [i915#3363])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-kbl-7500u/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - {fi-hsw-gt1}:       [INCOMPLETE][5] ([i915#151]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
>     - fi-cfl-8109u:       [FAIL][7] -> [PASS][8] +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
>     - fi-bwr-2160:        [FAIL][9] ([i915#2122]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>     - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#295]) -> [PASS][12] +18 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
> 
> 
> Participating hosts (44 -> 39)
> ------------------------------
> 
>   Additional (1): fi-kbl-7500u 
>   Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-2 fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10570 -> Patchwork_21017
> 
>   CI-20190529: 20190529
>   CI_DRM_10570: 8ba36ce2437426b91de6f03d30e75629108ea22b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21017: f4b1bdfbfb22fecdc3bfb40d2fb944a26edd8bf3 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> f4b1bdfbfb22 drm/i915/dg2: Add DG2-specific shadow register table
> 9eb63bad3b52 drm/i915/uncore: Drop gen11 mmio read handlers
> 63aa9ddb2b4f drm/i915/uncore: Drop gen11/gen12 mmio write handlers
> ff723b7086b1 drm/i915/uncore: Replace gen8 write functions with general fwtable
> b8d30ae4eb04 drm/i915/uncore: Associate shadow table with uncore
> 728596c7a8e0 drm/i915/uncore: Convert gen6/gen7 read operations to fwtable
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21017/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
