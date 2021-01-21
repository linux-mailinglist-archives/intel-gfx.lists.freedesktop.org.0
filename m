Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE412FEACC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 13:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135E96E8CF;
	Thu, 21 Jan 2021 12:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F9D6E8CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 12:57:41 +0000 (UTC)
IronPort-SDR: SREsmdNBVgGV7Y3KB/bQ/yDVaDrfIOSgdQthhoApaQBBM5/hxtIedercc6VgpUT+9up8BU48uA
 s7HbB/r5vOeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="197999921"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="197999921"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:57:33 -0800
IronPort-SDR: F7xm6Us6N1kctd4I8eGduOllOI4c6r6A2SFCTcDlqyO0b8mfamGZnXHq0wX3F9OW7X9cUpQ5o4
 BWfrV22KyYFA==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="385289878"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:57:32 -0800
Date: Thu, 21 Jan 2021 14:57:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210121125728.GA1443302@ideak-desk.fi.intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <161118500467.8788.11104068564145310110@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161118500467.8788.11104068564145310110@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Add_display_render_clear_color_decompression_sup?=
 =?utf-8?q?port_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

On Wed, Jan 20, 2021 at 11:23:24PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gen12: Add display render clear color decompression support (rev5)
> URL   : https://patchwork.freedesktop.org/series/85877/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9650 -> Patchwork_19433
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19433 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19433, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19433:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html

The above is on an unrelated platform, could you check if there's a
related ticket for it already?

Thanks,
Imre

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19433 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@memory-alloc:
>     - fi-tgl-y:           NOTRUN -> [SKIP][3] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html
> 
>   * igt@amdgpu/amd_prime@i915-to-amd:
>     - fi-snb-2520m:       NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#2411] / [i915#402])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - fi-kbl-7500u:       [PASS][7] -> [DMESG-WARN][8] ([i915#2868])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@prime_self_import@basic-with_one_bo:
>     - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#402])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
> 
>   * igt@runner@aborted:
>     - fi-bsw-nick:        NOTRUN -> [FAIL][11] ([i915#1436])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-bsw-nick/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2520m:       [INCOMPLETE][12] -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@prime_self_import@basic-with_one_bo_two_files:
>     - fi-tgl-y:           [DMESG-WARN][14] ([i915#402]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
> 
> 
> Participating hosts (43 -> 38)
> ------------------------------
> 
>   Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9650 -> Patchwork_19433
> 
>   CI-20190529: 20190529
>   CI_DRM_9650: 3f989d1bb4cfd91e25549f9fd7a750412581dcc4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19433: 34cda0c7d54c4ab10b167f9003b18f6183849b85 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 34cda0c7d54c drm/i915/tgl: Add Clear Color support for TGL Render Decompression
> 8815035bf706 drm/i915/gem: Add a helper to read data from a GEM object page
> 249da006ed76 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
