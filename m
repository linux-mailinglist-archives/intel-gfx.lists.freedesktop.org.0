Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 869013F9E3A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 19:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923116E999;
	Fri, 27 Aug 2021 17:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D521D6E999
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 17:45:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="216152748"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="216152748"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 10:45:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528384881"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 10:45:55 -0700
Date: Fri, 27 Aug 2021 20:45:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210827174551.GC3286573@ideak-desk.fi.intel.com>
References: <20210827150955.3343520-1-imre.deak@intel.com>
 <163008321866.12589.11346988269232539126@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163008321866.12589.11346988269232539126@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_support_for_remapping_CCS_FBs?=
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

Hi,

On Fri, Aug 27, 2021 at 04:53:38PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp: Add support for remapping CCS FBs
> URL   : https://patchwork.freedesktop.org/series/94108/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10530 -> Patchwork_20911
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20911 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20911, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20911:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html

Not sure how would this be related. On RKL nothing should change and I
can't see any obvious KMS related issues in the log.

This looks similar to
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html

few days back, and it looks the same issue as
https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7964/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html

from yesterday.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20911 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@cs-gfx:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][4] ([i915#1982] / [i915#4002])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#1155])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][7] ([i915#1385] / [i915#4006])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_addfb_basic@too-wide:
>     - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][8] ([i915#4002]) +88 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([fdo#111827]) +8 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([fdo#109285])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][11] ([i915#1072]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][12] ([i915#3301])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-rkl-guc:         NOTRUN -> [FAIL][13] ([i915#3928])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-rkl-guc/igt@runner@aborted.html
>     - fi-tgl-1115g4:      NOTRUN -> [FAIL][14] ([i915#2722] / [i915#3834])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/fi-tgl-1115g4/igt@runner@aborted.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3834]: https://gitlab.freedesktop.org/drm/intel/issues/3834
>   [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
>   [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002
>   [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
> 
> 
> Participating hosts (38 -> 34)
> ------------------------------
> 
>   Additional (1): fi-tgl-1115g4 
>   Missing    (5): fi-ilk-m540 bat-adls-5 fi-bsw-cyan bat-jsl-1 fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * IGT: IGT_6187 -> IGTPW_6168
>   * Linux: CI_DRM_10530 -> Patchwork_20911
> 
>   CI-20190529: 20190529
>   CI_DRM_10530: 63bca765c920120bd9746d9093190d82c4ace341 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGTPW_6168: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6168/index.html
>   IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_20911: e780f52a680b15ff46261d4284b8bd64ba753cc0 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> e780f52a680b drm/i915/adlp: Add support for remapping CCS FBs
> bd6ac1a470b9 drm/i915: Follow a new->old platform check order in intel_fb_stride_alignment
> 7455f93c422c drm/i915/adlp: Assert that VMAs in DPT start at 0
> 5d0c15f58f3b drm/i915/adlp: Require always a power-of-two sized CCS surface stride
> 530814904275 drm/i915: Use tile block based dimensions for CCS origin x, y check
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20911/index.html
