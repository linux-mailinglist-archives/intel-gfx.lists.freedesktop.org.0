Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5477267DE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 19:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E90E10E537;
	Wed,  7 Jun 2023 17:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AA610E537
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 17:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686160723; x=1717696723;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=SBHUmB7u0cfEYJRTTgUKB4rK8m1LxoszxJl+ZDsuM60=;
 b=GUraL9DKtgpTzA7mZO7T676pFT3E4uYU+wtfiw430023C1pOpRRZgCYU
 QYGFVwmjOC4iheGFtmU4Hq0AWVrsMPoJW9bapyQ4o6FAI8BElxK8jklPV
 mY8pL6MtYvR2Q6NdEwcLce49L1cXNjLHju40nHkS+B4Boi7yf6OekZIcX
 GCP4er96DUDI/kj9AxNFIHkRLrYOVjsb/ZX5nq16sJyZLJ1VSbAA6UI1z
 B41nQRW8EG1fYMD07/5dVdLR+8jS/OY8DRtfpQ3ESSEUYRnxwZ4lVVRGH
 oyPk5sNkFXx7rS6QI9FUukkYEzV46krDDG9xsUCyvcQAtvA2r4IB2/1uo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="359534206"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="359534206"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="739375557"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="739375557"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:54:58 -0700
Date: Wed, 7 Jun 2023 20:54:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZIDEctoIHbzWYA9U@ideak-desk>
References: <20230606224428.3791006-1-khaled.almahallawy@intel.com>
 <168610060076.21184.9893328962569074438@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168610060076.21184.9893328962569074438@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_log_level_for_=22CDS_interlane_align_done=22?=
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

On Wed, Jun 07, 2023 at 01:16:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix log level for "CDS interlane align done"
> URL   : https://patchwork.freedesktop.org/series/118977/
> State : failure

Thanks for the fix, pushed it to drm-intel-next. The failures below are
unrelated, all on platforms without DP2.0 sinks.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13238 -> Patchwork_118977v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_118977v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118977v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/index.html
> 
> Participating hosts (41 -> 39)
> ------------------------------
> 
>   Missing    (2): bat-rpls-2 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_118977v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@dmabuf@all-tests@dma_fence:
>     - bat-dg1-5:          [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg1-5/igt@dmabuf@all-tests@dma_fence.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-dg1-5/igt@dmabuf@all-tests@dma_fence.html
> 
>   * igt@dmabuf@all-tests@sanitycheck:
>     - bat-dg1-5:          [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg1-5/igt@dmabuf@all-tests@sanitycheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-dg1-5/igt@dmabuf@all-tests@sanitycheck.html
> 
>   * igt@gem_exec_basic@basic@bcs0-smem:
>     - bat-adlp-9:         [PASS][5] -> [ABORT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlp-9/igt@gem_exec_basic@basic@bcs0-smem.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-adlp-9/igt@gem_exec_basic@basic@bcs0-smem.html
> 
>   * igt@gem_exec_basic@basic@vecs0-smem:
>     - bat-adlp-9:         [PASS][7] -> [DMESG-WARN][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlp-9/igt@gem_exec_basic@basic@vecs0-smem.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-adlp-9/igt@gem_exec_basic@basic@vecs0-smem.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-dg2-9:          [PASS][9] -> [INCOMPLETE][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-9/igt@i915_suspend@basic-s3-without-i915.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-dg2-9/igt@i915_suspend@basic-s3-without-i915.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_118977v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][11] -> [ABORT][12] ([i915#7913])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [PASS][13] -> [DMESG-FAIL][14] ([i915#5334])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - bat-dg2-11:         NOTRUN -> [SKIP][15] ([i915#7828])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>     - bat-adlm-1:         NOTRUN -> [SKIP][16] ([i915#7828])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-adlm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-adlm-1:         NOTRUN -> [SKIP][17] ([i915#1845])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg2-11:         [ABORT][18] ([i915#7913] / [i915#7979]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-adlm-1:         [INCOMPLETE][20] ([i915#4983] / [i915#7677]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlm-1/igt@i915_selftest@live@workarounds.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-adlm-1/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-rplp-1:         [SKIP][22] ([i915#3555] / [i915#4579]) -> [ABORT][23] ([i915#4579] / [i915#8260])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
>   [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
>   [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13238 -> Patchwork_118977v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13238: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_118977v1: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> ee86b875b6c6 drm/i915/dp: Fix log level for "CDS interlane align done"
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118977v1/index.html
