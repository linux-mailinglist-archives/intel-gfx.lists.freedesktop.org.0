Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CAE531F3B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 01:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F81110E1EB;
	Mon, 23 May 2022 23:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19BF10E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 23:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653348714; x=1684884714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lzsXwU3hD0wKRrTBq19KQMbtAkwIhpFG7e2LCEhLRTQ=;
 b=T3KEMlL+D3PcF4PRf//DJOQCZLeIGObEsXtPv0BZ19RBb0nxaKxufy1D
 ZzjKfW75HGy5wCDNSpRELkXg9zcLIx+yKIN1pJnA4GcWylW3DdzijlrEh
 LyfxHdQV+i0Mrcb864cG/GTGQ+ZCPRGzkSkPFxIXUSIkaD4zCqiAWIO9D
 e7FMPHy7qr07Z5r+j/8+19+2v43Rw5wwzipJ5YJA8kmTzrWIuTJDf4VEX
 qXISJL/MQ0NoLtAcnwiaRFpwj7n2/JrtKuRTfZwvxYLUo2n7kuYdkMCQj
 BIxQDcRRELQvt1YWkZF0z8Oddx5eMwFL5HkpmFUcTkkllPObpNssCJHiE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="273500155"
X-IronPort-AV: E=Sophos;i="5.91,247,1647327600"; d="scan'208";a="273500155"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 16:31:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,247,1647327600"; d="scan'208";a="600933871"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 16:31:53 -0700
Date: Mon, 23 May 2022 16:31:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YowZaLiRYIWEMWcl@mdroper-desk1.amr.corp.intel.com>
References: <20220520230408.3787166-1-matthew.d.roper@intel.com>
 <165334101320.9281.12824970684177033061@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165334101320.9281.12824970684177033061@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_SSEU_handling_updates_=28rev2=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 23, 2022 at 09:23:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: SSEU handling updates (rev2)
> URL   : https://patchwork.freedesktop.org/series/104244/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11693 -> Patchwork_104244v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104244v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104244v2, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/index.html
> 
> Participating hosts (44 -> 45)
> ------------------------------
> 
>   Additional (2): fi-icl-u2 fi-tgl-u2 
>   Missing    (1): fi-hsw-4770 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104244v2:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
>   * boot:
>     - fi-bdw-5557u:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-bdw-5557u/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-bdw-5557u/boot.html

I don't see a boot failure here?  It looks like i915 loaded
successfully, without errors.  It also looks like more tests ran
successfully on the machine after that as well.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104244v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-icl-u2:          NOTRUN -> [INCOMPLETE][3] ([i915#4890])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-icl-u2/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-6:          [PASS][5] -> [DMESG-FAIL][6] ([i915#4494] / [i915#4957])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>     - fi-snb-2600:        [PASS][7] -> [INCOMPLETE][8] ([i915#3921])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_busy@basic@flip:
>     - fi-tgl-u2:          NOTRUN -> [DMESG-WARN][9] ([i915#402]) +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][10] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][11] ([i915#4103]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
>     - bat-adlp-4:         [PASS][12] -> [DMESG-WARN][13] ([i915#3576])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([fdo#109285])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][15] ([i915#3555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][16] ([i915#3301])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-icl-u2:          NOTRUN -> [FAIL][17] ([i915#4312])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-icl-u2/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {fi-ehl-2}:         [DMESG-WARN][18] ([i915#5122]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@kms_flip@basic-plain-flip@a-edp1:
>     - bat-adlp-4:         [DMESG-WARN][20] ([i915#3576]) -> [PASS][21] +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11693 -> Patchwork_104244v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11693: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104244v2: 14289bc81309b2126f4ba9f339837dacf34ddf9c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> e3100146e9db drm/i915/pvc: Add SSEU changes
> 920dde2397e4 drm/i915/sseu: Disassociate internal subslice mask representation from uapi
> 67224fa58023 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
> ec3d320f5b49 drm/i915/sseu: Simplify gen11+ SSEU handling
> f00314dcab14 drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
> 5edcd0a4da5f drm/i915/xehp: Use separate sseu init function
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104244v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
