Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD29E7E7499
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 23:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736F010E05C;
	Thu,  9 Nov 2023 22:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E45510E05C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 22:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699570608; x=1731106608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GMRXYYHjLo179mYUOoZi/LLOxL5ZqLH8t94ShUZuDVo=;
 b=h/4pjAiyDWcmBvDhEs48+7T6iIoSGeM9Mua4D6UxMj9kpBnUvBobUiUq
 vjBFM5K7Ky3wLHjaGkJpGPKS4O6ri6jr0e3v7mibJdJI2447O8PTiOtSw
 09L66L6mBAwVHCvxUwQ5AkRcKZl5evPWeq+XpBd/5UQQ3J+ay+GNiYsHO
 nWRnj33ZX6RWZzuuW6rHQF/fz0ECAoR8XBBBwaX4TLmEV1mC17v8teakk
 0Bdz3K0bwuFegD8KCP1ws6+U+7y/RFeUaC+MixEyiXlxPQKSBk2lBExx8
 G9pmHQJvfp60QY06xK35weACAZYhCiP+XPQ5nCZ4iWb1wWWwxCRpMG8Vu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="3071637"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; 
   d="scan'208";a="3071637"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 14:56:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="739979083"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="739979083"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.25.176])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 14:56:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Date: Thu, 09 Nov 2023 23:56:42 +0100
Message-ID: <1966259.CQOukoFCf9@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169956624228.26591.6599039082481878590@emeril.freedesktop.org>
References: <20231108162905.77602-2-janusz.krzysztofik@linux.intel.com>
 <169956624228.26591.6599039082481878590@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vma=3A_Fix_potential_UAF_on_multi-tile_platforms_=28rev3?=
 =?utf-8?q?=29?=
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
Cc: intel-gfx@lists.freedesktop.org,
 LGCI Bug Filing <lgci.bug.filing@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, 9 November 2023 22:44:02 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vma: Fix potential UAF on multi-tile platforms (rev3)
> URL   : https://patchwork.freedesktop.org/series/126012/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13856 -> Patchwork_126012v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126012v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126012v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/index.html
> 
> Participating hosts (34 -> 34)
> ------------------------------
> 
>   Additional (1): fi-kbl-soraka 
>   Missing    (1): bat-dg2-8 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126012v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - bat-adlp-11:        NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@i915_suspend@basic-s2idle-without-i915.html

Andi,
Since that issue popped up again after your re-run, I've had a closer look.

The test igt@i915_suspend@basic-s2idle-without-i915 seems to be never executed 
on BAT ADL machines (e.g., adlp-11, adln-1) because of an abort triggered on 
those machines by igt@kms_pm_rpm@basic-pci-d3-state.  The latter can be found 
below among possible fixes -- it succeeded, and that explains why 
igt@i915_suspend@basic-s2idle-without-i915 was executed this time, and also 
for my original submission (rev2).

I suspect there must be an issue with adlp-11 machine that results in failures 
from igt@i915_suspend@basic-s2idle-without-i915.  Unfortunately, that issue is 
not visible for now because that test is never executed on that machine.

@BUG Filing,
I'm no sure how re-reporting works, but once you have filters updated after my 
request submitted earlier today for rev2 of this patch, please also re-report 
results of rev3 (re-run of rev2).

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126012v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
>     - bat-adln-1:         NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adln-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-rplp-1:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - bat-adlp-6:         NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-adlp-11:        NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-adlp-6:         NOTRUN -> [SKIP][8] ([i915#6621])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-6/igt@i915_pm_rps@basic-api.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][9] ([i915#6621])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][10] ([i915#6621])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@i915_pm_rps@basic-api.html
>     - bat-adln-1:         NOTRUN -> [SKIP][11] ([i915#6621])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adln-1/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][12] ([i915#1886])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271]) +9 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - bat-rplp-1:         NOTRUN -> [SKIP][14] ([i915#1072]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][15] ([i915#1072]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-adlp-6:         NOTRUN -> [SKIP][16] ([i915#3555])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][17] ([i915#3555])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][18] ([i915#3555])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adln-1:         NOTRUN -> [SKIP][19] ([i915#3555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-11:        NOTRUN -> [SKIP][20] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
>     - bat-adlp-6:         NOTRUN -> [SKIP][21] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-rplp-1:         NOTRUN -> [SKIP][22] ([i915#3708]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-adln-1:         NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3291]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adln-1/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - bat-dg2-9:          [INCOMPLETE][24] ([i915#9275]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-6600u:       [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/fi-skl-6600u/igt@i915_module_load@reload.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-skl-6600u/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][28] ([i915#5334]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-bsw-nick:        [FAIL][30] ([i915#9276]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [ABORT][32] ([i915#8668]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
> 
>   * {igt@kms_pm_backlight@basic-brightness@edp-1}:
>     - bat-adlp-6:         [ABORT][34] ([i915#8668]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
> 
>   * {igt@kms_pm_rpm@basic-pci-d3-state}:
>     - bat-adln-1:         [ABORT][36] ([i915#8668]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
>     - bat-adlp-11:        [ABORT][38] ([i915#8668]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/bat-adlp-11/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13856 -> Patchwork_126012v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13856: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7580: 847ee1e7d365e2fb08bf4198d3bf5ee8a852649f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_126012v3: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> bc174a299b6b drm/i915/vma: Fix potential UAF on multi-tile platforms
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v3/index.html
> 




