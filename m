Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B446E50C242
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Apr 2022 00:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035A410EE63;
	Fri, 22 Apr 2022 22:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB04410EE63
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650666785; x=1682202785;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=f2xZQisx0MlaMpfx27OenutO5r4/N+yHgYiJGxaBnso=;
 b=FrxVvijqigcwjaG57q2kF+j4ngW9RFcMGQqy8dvrT+PrQrWKEJEKcBcE
 ONWV8HL4LR+50Vwyfp+tqXdE7A04Q4QRGHzK7iag7cjvSllSun/fsUKpe
 51/4rwsTLx/rJeyUUvndoclrtwxUkB0Q1tHpivMiSvt3fwoS1WMMcLMMe
 5dpyDp2gWxjX+hjDu8z0k2rAB6HV12vmLR8RU++NMJNHXap4P/5vVPfHD
 vDqiBw8SbjzgX/WrXx9C9bsuk1FbMiQrNg6TQxwrgHJoXsWb277oRHx8j
 HImK34sgNpsQvS6j45aQ6/jpuRBANyhX7bMTCIFIP5tsYWsfCwGyQ3P86 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="262399400"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="262399400"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 15:33:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="648819819"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 15:33:05 -0700
Date: Fri, 22 Apr 2022 15:33:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YmMtIMB2nBxUzx2N@mdroper-desk1.amr.corp.intel.com>
References: <20220422195007.4019661-1-matthew.d.roper@intel.com>
 <165066522060.14005.18432612135948640981@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165066522060.14005.18432612135948640981@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Turn_on_compute_engine_support_=28rev2=29?=
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

On Fri, Apr 22, 2022 at 10:07:00PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Turn on compute engine support (rev2)
> URL   : https://patchwork.freedesktop.org/series/103011/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11544 -> Patchwork_103011v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103011v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103011v2, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/index.html
> 
> Participating hosts (45 -> 43)
> ------------------------------
> 
>   Additional (1): bat-dg2-8 
>   Missing    (3): fi-kbl-soraka bat-adlm-1 fi-bsw-cyan 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103011v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

Random incomplete on BDW which wouldn't have been impacted by compute
engine support (which only exists on Xe_HP and beyond).  Looks like
there was an incomplete from this test on DG1 a few weeks ago at
https://gitlab.freedesktop.org/drm/intel/-/issues/5458, but it's unclear
if it's related since the logs there have expired.

Submitting a re-test.


Matt

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11544 and Patchwork_103011v2:
> 
> ### New IGT tests (24) ###
> 
>   * igt@gem_exec_basic@basic@ccs0-lmem0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_basic@basic@ccs0-smem:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_basic@basic@ccs1-lmem0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_basic@basic@ccs1-smem:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_basic@basic@ccs2-lmem0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_basic@basic@ccs2-smem:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_basic@basic@ccs3-lmem0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_basic@basic@ccs3-smem:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_fence@basic-await@ccs0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.09, 0.10] s
> 
>   * igt@gem_exec_fence@basic-await@ccs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.10, 0.12] s
> 
>   * igt@gem_exec_fence@basic-await@ccs2:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.09, 0.11] s
> 
>   * igt@gem_exec_fence@basic-await@ccs3:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.09, 0.10] s
> 
>   * igt@gem_exec_fence@basic-busy@ccs0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03, 0.04] s
> 
>   * igt@gem_exec_fence@basic-busy@ccs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03, 0.04] s
> 
>   * igt@gem_exec_fence@basic-busy@ccs2:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.04] s
> 
>   * igt@gem_exec_fence@basic-busy@ccs3:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@gem_exec_fence@basic-wait@ccs0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@gem_exec_fence@basic-wait@ccs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03, 0.04] s
> 
>   * igt@gem_exec_fence@basic-wait@ccs2:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@gem_exec_fence@basic-wait@ccs3:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@gem_exec_fence@nb-await@ccs0:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.06, 0.09] s
> 
>   * igt@gem_exec_fence@nb-await@ccs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_exec_fence@nb-await@ccs2:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_exec_fence@nb-await@ccs3:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.07] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103011v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-5:          [PASS][2] -> [DMESG-FAIL][3] ([i915#4494] / [i915#4957])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +14 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - {bat-rpls-2}:       [DMESG-WARN][6] ([i915#4391]) -> [PASS][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@dmabuf@all@dma_fence_chain:
>     - bat-dg1-5:          [INCOMPLETE][8] ([i915#4154]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/bat-dg1-5/igt@dmabuf@all@dma_fence_chain.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/bat-dg1-5/igt@dmabuf@all@dma_fence_chain.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - fi-bdw-5557u:       [INCOMPLETE][10] ([i915#146]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [INCOMPLETE][12] ([i915#2940]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@perf:
>     - {fi-tgl-dsi}:       [DMESG-WARN][14] -> [PASS][15] +17 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/fi-tgl-dsi/igt@i915_selftest@live@perf.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/fi-tgl-dsi/igt@i915_selftest@live@perf.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>     - {bat-adlp-6}:       [DMESG-WARN][16] ([i915#3576]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11544/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4154]: https://gitlab.freedesktop.org/drm/intel/issues/4154
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
>   [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11544 -> Patchwork_103011v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11544: 5f9019934f9819738661f0618a29865abed617f4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6449: 704da775abb83faa9324a665fe2992ab90f4ab03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103011v2: 5f9019934f9819738661f0618a29865abed617f4 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 228895dda988 drm/i915: Xe_HP SDV and DG2 have up to 4 CCS engines
> 743bf0812329 drm/i915/xehp: Add compute engine ABI
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
