Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0640A496923
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 02:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DF010E7A8;
	Sat, 22 Jan 2022 01:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1363D10E7A8
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jan 2022 01:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642814097; x=1674350097;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wWxzLYLwTPHxsH9jCNm/+f9hV6o+qHd4qnMWElQ7Mto=;
 b=MMBYaZOKgff+hb0+CLYgUZ7PlXxYL62bAbg0lFQqxixuymiGZtsmV378
 3ewnMD3nDwHWrzUfp3zEjcVQPVyj8xSNOkbNMoyh7H1FwxvJushna2X5r
 u5Xqc1uGz/VxfQXT/GRrZ/o53xp8ExamIzPjvV95SZxVYyyfIDngc05T4
 RYeovYZw9tn2frU0DP+LSSBQGwcrIlWAZkmphXXDl8IarzX+WSDZpInoN
 OeKS7iKuFO3aB2MrKc9TygQsW2IXIm8BHqoSw54l9IcfqO33+3mBkTVow
 KIHoCD92BV4tDsPfrNQzOSwP4dtl3PCedmHzfPB4+CFhe/n/wEELTXo7m A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="244598874"
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="244598874"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:14:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="476135874"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:14:56 -0800
Date: Fri, 21 Jan 2022 17:14:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YetajkWY5bc0SOS4@mdroper-desk1.amr.corp.intel.com>
References: <20220120234147.1200574-1-matthew.d.roper@intel.com>
 <164278291243.19939.11991117192758407300@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164278291243.19939.11991117192758407300@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_Add_Wa=5F18018781329_=28rev3=29?=
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

On Fri, Jan 21, 2022 at 04:35:12PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add Wa_18018781329 (rev3)
> URL   : https://patchwork.freedesktop.org/series/99128/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11118 -> Patchwork_22059
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22059 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22059, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/index.html
> 
> Participating hosts (48 -> 42)
> ------------------------------
> 
>   Additional (1): fi-kbl-soraka 
>   Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22059:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@guc:
>     - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/fi-rkl-guc/igt@i915_selftest@live@guc.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-rkl-guc/igt@i915_selftest@live@guc.html

<3> [266.138736] i915 0000:00:02.0: [drm] *ERROR* AUX USBC2/DDI TC2/PHY D: did not complete or timeout within 10ms (status 0xad4003ff)

This display error is not related to the GT workaround being applied
here.  Pressing the re-test button again...


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22059 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@semaphore:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +31 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html
> 
>   * igt@gem_exec_fence@basic-busy@bcs0:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271]) +8 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][9] ([i915#1886] / [i915#2291])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_chamelium@dp-edid-read:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@kms_chamelium@dp-edid-read.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([fdo#109271]) +21 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#533])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - fi-cml-u2:          [PASS][16] -> [FAIL][17] ([fdo#103375])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - fi-bdw-5557u:       [INCOMPLETE][18] ([i915#146]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-5:          [DMESG-FAIL][20] ([i915#4494]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-cml-u2:          [DMESG-WARN][22] ([i915#4269]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
> 
>   
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
>   [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11118 -> Patchwork_22059
> 
>   CI-20190529: 20190529
>   CI_DRM_11118: a8ae2fba8948946087ddc13ec6f4c44b6bcf3c72 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22059: 66b0cf558d662a2c7f472d96d6899dace30d072e @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 66b0cf558d66 drm/i915/dg2: Add Wa_18018781329
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22059/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
