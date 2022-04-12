Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C107B4FCCDD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 05:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A2610FC22;
	Tue, 12 Apr 2022 03:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B7410FC22
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 03:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649733032; x=1681269032;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vmvJ3PyEjny2M2NnfUgrYhm270hSofYckXOb/xhu1fw=;
 b=O7kT+ZVCAc77ElXvj2cOij0GUAFqzA69434L+0b+KELvmLhiQy6rxQAp
 IxULcO9zjPA9xMfhK9OYtEmlFJKwYstT+BzSF0uMWt64oDPDUB/1aSS7V
 p7VLd36F4a/Fs8uxnLMkCBzKO0G8Qju5WV3zj8LpcAN+SuFWvWrMgy9XG
 oxRBfXKIWkhXY8ccUcsoppBhKh/CzlO0ETtUNxWPeVDMPXPL6GPF4rzKI
 M5iEpGqEV13dKW6aG0OcERnzmH6w+Hl7MI29xLmX+nWEJHaW/bLeUjbgV
 JrpNalXzA6Lmbjrx53W24MhkBAuJf/gwHEXGOV6v1P/MWT7af3zx/vmSG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="242851499"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="242851499"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 20:10:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="572529471"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 20:10:31 -0700
Date: Mon, 11 Apr 2022 20:10:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YlTtpkAORBZ/Ydi9@mdroper-desk1.amr.corp.intel.com>
References: <20220411224319.467166-1-matthew.d.roper@intel.com>
 <164972420843.18364.622515020786606313@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164972420843.18364.622515020786606313@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Add_DRM=5FI915=5FQUERY=5FGEOMETRY=5FSUBSLICES_uapi?=
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

On Tue, Apr 12, 2022 at 12:43:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES uapi
> URL   : https://patchwork.freedesktop.org/series/102553/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11484 -> Patchwork_102553v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102553v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102553v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/index.html
> 
> Participating hosts (49 -> 36)
> ------------------------------
> 
>   Additional (1): fi-hsw-4770 
>   Missing    (14): shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-kbl-x1275 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102553v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_engines:
>     - fi-glk-j4005:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html

(i915_selftest:5830) igt_kmod-WARNING: rcs0 elapsed:100430ns, CTX_TIMESTAMP:145261ns, RING_TIMESTAMP:145261ns
(i915_selftest:5830) igt_kmod-WARNING: rcs0 Mismatch between ring timestamp and walltime!
(i915_selftest:5830) igt_kmod-WARNING: i915/live_engine_pm_selftests: live_engine_timestamps failed with error -22

Doesn't appear to be related to this series since the query interface
isn't being used by the test.  I don't see any similar failures from a
quick fdo search though.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102553v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_softpin@allocator-basic-reserve:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271]) +9 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#3012])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#533])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1072]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@runner@aborted:
>     - fi-bdw-5557u:       NOTRUN -> [FAIL][8] ([i915#4312])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-bdw-5557u/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - fi-cfl-8109u:       [DMESG-WARN][9] ([i915#5341] / [i915#62]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-b:
>     - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#62]) -> [PASS][12] +11 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11484 -> Patchwork_102553v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11484: 8034f05811fe63be8ced11c140e59a8cea07a3d6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6419: 33a5adf20dc435cc2c6dd584caa3674c89032762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102553v1: 102553v1 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 3e5b0ebc4047 drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
> a2139ca1ff95 drm/i915/doc: Link query items to their uapi structs
> a1e892df2288 drm/i915/doc: Convert perf UAPI comments to kerneldoc
> de268f63097a drm/i915/doc: Convert drm_i915_query_topology_info comment to kerneldoc
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102553v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
