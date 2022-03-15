Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3B34D9364
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 05:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72C710E421;
	Tue, 15 Mar 2022 04:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415EF10E42C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 04:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647318864; x=1678854864;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nu9y6Zo7RZL9PDqQenBtQ9ulNRp8cRPgfWMfKzVDH4Y=;
 b=i9SC8h54qLY39jDVd8IVtLNZDtxsOJ1F/GnlzyupCk/RmcUNUUub18Dg
 CzMgIHP3jY37TSaPfOhsmnl3VJyND/zADNUtpCxmCOcFJq/kmalbpAaxk
 u4eYjAsjFy18Yg4KyzF737KAkDpZfqy1VfFQhX5O/1kdK87N3ThfjaBAP
 ZqVVoyIbDCVss9COc+i0c2IrPEqKCsebL/RPYj3USgkGe5+fIX/nclGe5
 008ci9yU8Iz+68QM25OFaD0Q5rDMqxL5OdNCU+KBKzGAEDalkBrEb0Q7W
 8/7gpvFkv4PusNku5zBpkOkuz/gGytnzwDTcgqrTZMosoaVprJkGDj0M7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="280976422"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="280976422"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 21:34:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="512470954"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 21:34:19 -0700
Date: Mon, 14 Mar 2022 21:34:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjAXSlYFREXuXQQI@mdroper-desk1.amr.corp.intel.com>
References: <20220315020805.844962-1-matthew.d.roper@intel.com>
 <164731330494.20493.5013206165492385226@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164731330494.20493.5013206165492385226@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_stack_usage_in_debugfs_due_to_SSEU?=
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

On Tue, Mar 15, 2022 at 03:01:44AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Reduce stack usage in debugfs due to SSEU
> URL   : https://patchwork.freedesktop.org/series/101369/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11363 -> Patchwork_22566
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22566 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22566, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/index.html
> 
> Participating hosts (50 -> 43)
> ------------------------------
> 
>   Additional (3): bat-adlm-1 bat-adlp-4 fi-kbl-8809g 
>   Missing    (10): shard-tglu fi-hsw-4200u shard-rkl fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 bat-rpls-2 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22566:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - bat-adlp-4:         NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

<3> [273.206566] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun: port,transcoder,

A display underrun wouldn't be related to how a debugfs file (which
isn't being used here) allocates memory.

It seems like there are also a bunch of missing machines listed above
for no apparent reason.  Submitting a re-test.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_busy@basic@flip:
>     - {bat-adlp-6}:       [PASS][2] -> [DMESG-WARN][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/bat-adlp-6/igt@kms_busy@basic@flip.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-6/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - {bat-dg2-9}:        [DMESG-WARN][4] ([i915#5193]) -> [DMESG-FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22566 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][6] ([i915#4962]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-adlp-4:         NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-adlp-4:         NOTRUN -> [SKIP][10] ([i915#3282])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rpm@basic-rte:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][11] ([fdo#109271]) +55 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg1-6:          [PASS][12] -> [FAIL][13] ([i915#4032])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/bat-dg1-6/igt@i915_pm_rps@basic-api.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-dg1-6/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd-fast:
>     - bat-adlp-4:         NOTRUN -> [SKIP][15] ([fdo#111827]) +8 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@kms_chamelium@vga-hpd-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adlp-4:         NOTRUN -> [SKIP][16] ([i915#4103]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-adlp-4:         NOTRUN -> [SKIP][17] ([fdo#109285])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#533])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-adlp-4:         NOTRUN -> [SKIP][19] ([i915#3555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-4:         NOTRUN -> [SKIP][20] ([i915#3291] / [i915#3708]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - bat-adlp-4:         NOTRUN -> [SKIP][21] ([i915#3301] / [i915#3708])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-adlp-4/igt@prime_vgem@basic-userptr.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-6:          [DMESG-FAIL][22] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][23] ([i915#4957])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4962]: https://gitlab.freedesktop.org/drm/intel/issues/4962
>   [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
>   [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
>   [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
>   [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5333]: https://gitlab.freedesktop.org/drm/intel/issues/5333
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11363 -> Patchwork_22566
> 
>   CI-20190529: 20190529
>   CI_DRM_11363: a7b049602879c25e8d54c3f547d3cdad03230e5b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6380: 5d9ef79ab61fc4e9abc8b565f298e0515265e616 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22566: 035f5612afa5c92ef2eac4ed3f63239db3c18f4d @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 035f5612afa5 drm/i915: Reduce stack usage in debugfs due to SSEU
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22566/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
