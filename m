Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A42C7E3853
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 10:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAA010E504;
	Tue,  7 Nov 2023 09:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F3410E504
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 09:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699351005; x=1730887005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gGI6n3QAWs73fHu1/5LlZ4eo+KleeWFHV4nqIAJmKv4=;
 b=PhFYOtPzigsS2P7g2PoEzqxGmIGkT3CSOwiWUIKlp2gd1j9uPa2yJZU6
 eLaO8nkYHRKCqXW1UB3V+dvjJGUvOxVQTSRYmNyTnu0PXh/SCAOh+gqJ2
 qTetrANY9sgwGFE9g53Ic+RDvjgcBKKwTaYVmgwlTs7I4e/TbuxhKhbXW
 uXBM7KkR53Has3762iwZWg0Obhx6Q/BZBkUA+UeTwdp38Qn6rOwPhIsUI
 gTHRLbjIf5U9pv59QcDWokS3EK5c24Mq8QHzxjJvPouKuKFWUMR8IwH1l
 8YLgtWCPdWZFWipL6u2s0eFUn+fE0o9/FPzZ189ntDurWTJOyNrbO2ISn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="453785031"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="453785031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:56:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="791758764"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="791758764"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.8.230])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:56:43 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: LGCI Bug Filing <lgci.bug.filing@intel.com>
Date: Tue, 07 Nov 2023 10:56:40 +0100
Message-ID: <2173652.Icojqenx9y@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169929818029.20424.15714962253069324938@emeril.freedesktop.org>
References: <20231106091603.231100-2-janusz.krzysztofik@linux.intel.com>
 <169929818029.20424.15714962253069324938@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vma=3A_Fix_potential_UAF_on_multi-tile_platforms?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, 6 November 2023 20:16:20 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vma: Fix potential UAF on multi-tile platforms
> URL   : https://patchwork.freedesktop.org/series/126012/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13844 -> Patchwork_126012v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126012v1 absolutely need to 
be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126012v1, please notify your bug team 
(lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in 
CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/
index.html
> 
> Participating hosts (33 -> 32)
> ------------------------------
> 
>   Additional (2): fi-kbl-soraka fi-hsw-4770 
>   Missing    (3): bat-adlp-11 fi-snb-2520m fi-pnv-d510 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in 
Patchwork_126012v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - bat-adln-1:         NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

This looks to me like an occurrence of an already known issue
http://gfx-ci.igk.intel.com/cibuglog-ng/issue/10056 

>   * igt@i915_selftest@live@perf:
>     - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-hsw-4770/igt@i915_selftest@live@perf.html

And this looks the same as 
http://gfx-ci.igk.intel.com/cibuglog-ng/testresult/1609698018 
reported for CI_DRM_13828, then apparently not related to the patch under 
test.

@BUG Filing, please update filters and re-report.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126012v1 that come from known 
issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) 
+3 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
>     - bat-adln-1:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests 
skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-rplp-1:         NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests 
skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - bat-adlp-6:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests 
skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-6600u:       [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-skl-6600u/
igt@i915_module_load@reload.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-skl-6600u/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-adlp-6:         NOTRUN -> [SKIP][10] ([i915#6621])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][11] ([i915#6621])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html
>     - bat-adln-1:         NOTRUN -> [SKIP][12] ([i915#6621])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][13] ([i915#1886])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-rpls-1:         NOTRUN -> [ABORT][14] ([i915#7978] / [i915#9631])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#5190])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271]) +9 other tests 
skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [PASS][17] -> [FAIL][18] ([IGT#3])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-kbl-guc/
igt@kms_hdmi_inject@inject-audio.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][19] ([fdo#109271]) +12 other 
tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - bat-rplp-1:         NOTRUN -> [SKIP][20] ([i915#1072]) +3 other tests 
skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#1072]) 
+3 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-adlp-6:         NOTRUN -> [SKIP][22] ([i915#3555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][23] ([i915#3555])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adln-1:         NOTRUN -> [SKIP][24] ([i915#3555])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-6:         NOTRUN -> [SKIP][25] ([fdo#109295] / [i915#3291] / 
[i915#3708]) +2 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adlp-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-rplp-1:         NOTRUN -> [SKIP][26] ([i915#3708]) +2 other tests 
skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-adln-1:         NOTRUN -> [SKIP][27] ([fdo#109295] / [i915#3291]) 
+2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - fi-rkl-11600:       [FAIL][28] ([fdo#103375]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-rkl-11600/
igt@gem_exec_suspend@basic-s0@smem.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][30] ([i915#5334]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-apl-guc/
igt@i915_selftest@live@gt_heartbeat.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-rpls-1:         [INCOMPLETE][32] -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/
igt@i915_selftest@live@workarounds.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html
> 
>   * {igt@kms_pm_backlight@basic-brightness@edp-1}:
>     - bat-adlp-6:         [ABORT][34] ([i915#8668]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-adlp-6/
igt@kms_pm_backlight@basic-brightness@edp-1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness@edp-1.html
>     - bat-rplp-1:         [ABORT][36] ([i915#8668]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rplp-1/
igt@kms_pm_backlight@basic-brightness@edp-1.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
> 
>   * {igt@kms_pm_rpm@basic-pci-d3-state}:
>     - bat-adln-1:         [ABORT][38] ([i915#8668]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-adln-1/
igt@kms_pm_rpm@basic-pci-d3-state.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126012v1/bat-adln-1/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when 
computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
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
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#9631]: https://gitlab.freedesktop.org/drm/intel/issues/9631
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13844 -> Patchwork_126012v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13844: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://
anongit.freedesktop.org/gfx-ci/linux
>   IGT_7574: 0485a4bf66f69aaf7244a3e689402b522f636780 @ https://
gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_126012v1: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://
anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 4be63e4925fd drm/i915/vma: Fix potential UAF on multi-tile platforms
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/
Patchwork_126012v1/index.html
> 




