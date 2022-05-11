Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147B8523597
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF82A10E045;
	Wed, 11 May 2022 14:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BD810E045
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652279609; x=1683815609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zlm5NU0hQNoK+pYhPY1HKghbWEpyE42Amb6ve5lYLiU=;
 b=KXRi1Mx0/PiteqjlUeE3y1wEiMnGk58hcpKNpSRFWQk96zgUhSb5SxUU
 t/bahe3QfVAl7/IJ5XxGj8xlG0x95tNrO+KVCXiqZAITtrakNT0Q6m2l8
 FuCuKV1+UHbYoel4aTCQtWntuwUkTHR0tIfnykRpqAjTz/zS8YD7GYay4
 KX31W58yeObg+PCfDw52a0Q5tUpqLWt7WPsgahoUTB9tk5q4JFxX82ikw
 CdUX0O73UN9rrPYn3zPUpT7U3hACRNsQMzO22vy0CvghDuoMjj7ZQFeko
 DIrTlQDoGvobYCF2k1vwXaideydDMvUqL4yJnbdlJIXmiaXRMH7nICUFo A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="332750711"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="332750711"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:33:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="658182541"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:33:27 -0700
Date: Wed, 11 May 2022 07:33:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YnvJNsY+DzlyWkWC@mdroper-desk1.amr.corp.intel.com>
References: <20220511060228.1179450-1-matthew.d.roper@intel.com>
 <165225217670.2700.8594423998648210449@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165225217670.2700.8594423998648210449@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio_=28rev4=29?=
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

On Wed, May 11, 2022 at 06:56:16AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Introduce Ponte Vecchio (rev4)
> URL   : https://patchwork.freedesktop.org/series/103443/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11632 -> Patchwork_103443v4
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103443v4 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103443v4, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/index.html
> 
> Participating hosts (42 -> 40)
> ------------------------------
> 
>   Additional (3): fi-rkl-11600 fi-bdw-5557u bat-adlp-4 
>   Missing    (5): bat-dg2-8 fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103443v4:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_addfb_basic@invalid-get-prop:
>     - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/fi-kbl-soraka/igt@kms_addfb_basic@invalid-get-prop.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-kbl-soraka/igt@kms_addfb_basic@invalid-get-prop.html

Log shows success, so it's unclear why the test is listed as
'incomplete.'


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103443v4 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#2190])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@gem_lmem_swapping@basic.html
>     - bat-adlp-4:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-adlp-4:         NOTRUN -> [SKIP][6] ([i915#3282])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@gem_tiled_pread_basic.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][7] ([i915#3282])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([i915#3012])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][9] ([i915#3921])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - bat-adlp-4:         NOTRUN -> [SKIP][11] ([fdo#111827]) +8 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([fdo#111827]) +8 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_chamelium@dp-crc-fast.html
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][14] ([i915#4070] / [i915#4103]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adlp-4:         NOTRUN -> [SKIP][15] ([i915#4103]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - bat-adlp-4:         NOTRUN -> [DMESG-WARN][16] ([i915#3576])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][17] ([fdo#109285] / [i915#4098])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-adlp-4:         NOTRUN -> [SKIP][18] ([i915#4093]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][19] ([i915#4070] / [i915#533])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][20] ([i915#1072]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][21] ([fdo#109271]) +14 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-4:         NOTRUN -> [SKIP][22] ([i915#3555] / [i915#4579])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][23] ([i915#3555] / [i915#4098])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-4:         NOTRUN -> [SKIP][24] ([i915#3291] / [i915#3708]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][25] ([i915#3301] / [i915#3708])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@prime_vgem@basic-userptr.html
>     - bat-adlp-4:         NOTRUN -> [SKIP][26] ([i915#3301] / [i915#3708])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-4/igt@prime_vgem@basic-userptr.html
> 
>   * igt@prime_vgem@basic-write:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][27] ([i915#3291] / [i915#3708]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-rkl-11600/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {fi-ehl-2}:         [DMESG-WARN][28] ([i915#5122]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@client:
>     - {bat-dg2-9}:        [DMESG-FAIL][30] ([i915#5879]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/bat-dg2-9/igt@i915_selftest@live@client.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-dg2-9/igt@i915_selftest@live@client.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        [INCOMPLETE][32] ([i915#4785]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
>     - {bat-adlp-6}:       [DMESG-WARN][34] ([i915#3576]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11632/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5879]: https://gitlab.freedesktop.org/drm/intel/issues/5879
>   [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11632 -> Patchwork_103443v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11632: f6d6ced5a4acd1bc763804f27f71f8ee52722fd0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103443v4: f6d6ced5a4acd1bc763804f27f71f8ee52722fd0 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> b77114d8353f drm/i915/guc: XEHPSDV and PVC do not use HuC
> b053911ad73c drm/i915/pvc: Add new BCS engines to GuC engine list
> 880ed0ff7fdb drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
> 8682d0fab22b drm/i915/pvc: Add forcewake support
> 9d9b41a06992 drm/i915/uncore: Reorganize and document shadow and forcewake tables
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
