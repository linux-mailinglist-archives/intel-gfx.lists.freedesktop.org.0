Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB91C2A8B18
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 01:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E426E87C;
	Fri,  6 Nov 2020 00:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32E86E883
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 00:05:38 +0000 (UTC)
IronPort-SDR: GAWYaoE9OD+nWEDw9ZiIpKw34qDaB5KYEz1o8GtnHJU2E+pFYnRF1KmY96sZqIdI+nXaoU6DQR
 zx3ET3BqFnPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="166889822"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="166889822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 16:05:37 -0800
IronPort-SDR: WIrLTdmAleM56mKpPXaHNcqnf3hYB6/fHo2B8IF3fbWLeVzjbd2nsMLr+aDDZ4ukeFQTFMJMro
 yH+Uhk7wSmtg==
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="354498501"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 16:05:37 -0800
Date: Thu, 5 Nov 2020 16:07:46 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201106000746.GB11562@labuser-Z97X-UD5H>
References: <20201105223359.28203-1-manasi.d.navare@intel.com>
 <160461982121.14959.2748925732988745783@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160461982121.14959.2748925732988745783@emeril.freedesktop.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRmlu?=
 =?utf-8?q?al_prep_series_for_bigjoiner?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Here the failures are happening in:
i915_gem_object_create_stolen_for_preallocated causing the BAT failure.

Thsi is unrelated to the changes in this patch.

Manasi

On Thu, Nov 05, 2020 at 11:43:41PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Final prep series for bigjoiner
> URL   : https://patchwork.freedesktop.org/series/83547/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9274 -> Patchwork_18863
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18863 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18863, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18863:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
>   * boot (NEW):
>     - fi-icl-y:           [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-icl-y/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-icl-y/boot.html
>     - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-cfl-8109u/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-cfl-8109u/boot.html
>     - fi-cfl-8700k:       [PASS][5] -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-cfl-8700k/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-cfl-8700k/boot.html
>     - {fi-ehl-1}:         [PASS][7] -> [FAIL][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-ehl-1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-ehl-1/boot.html
>     - fi-skl-6700k2:      [PASS][9] -> [FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-skl-6700k2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-skl-6700k2/boot.html
>     - fi-cfl-guc:         [PASS][11] -> [FAIL][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-cfl-guc/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-cfl-guc/boot.html
>     - fi-skl-lmem:        [PASS][13] -> [FAIL][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-skl-lmem/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-skl-lmem/boot.html
>     - fi-glk-dsi:         [PASS][15] -> [FAIL][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-glk-dsi/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-glk-dsi/boot.html
>     - fi-kbl-7500u:       [PASS][17] -> [FAIL][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-kbl-7500u/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-kbl-7500u/boot.html
>     - fi-skl-guc:         [PASS][19] -> [FAIL][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-skl-guc/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-skl-guc/boot.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9274 and Patchwork_18863:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 12 fail(s) 27 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18863 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot (NEW):
>     - fi-apl-guc:         [PASS][21] -> [FAIL][22] ([i915#1635] / [i915#348])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-apl-guc/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-apl-guc/boot.html
>     - fi-bxt-dsi:         [PASS][23] -> [FAIL][24] ([i915#1635])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-bxt-dsi/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-bxt-dsi/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_module_load@reload:
>     - fi-tgl-u2:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982] / [k.org#205379])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-tgl-u2/igt@i915_module_load@reload.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-tgl-u2/igt@i915_module_load@reload.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - fi-tgl-y:           [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   * igt@prime_vgem@basic-read:
>     - fi-tgl-y:           [PASS][29] -> [DMESG-WARN][30] ([i915#402]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-tgl-y/igt@prime_vgem@basic-read.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-tgl-y/igt@prime_vgem@basic-read.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-byt-j1900:       [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-byt-j1900/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_tiled_blits@basic:
>     - fi-tgl-y:           [DMESG-WARN][33] ([i915#402]) -> [PASS][34] +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-tgl-y/igt@gem_tiled_blits@basic.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-tgl-y/igt@gem_tiled_blits@basic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - fi-icl-u2:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9274/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379
> 
> 
> Participating hosts (43 -> 39)
> ------------------------------
> 
>   Missing    (4): fi-cml-u2 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9274 -> Patchwork_18863
> 
>   CI-20190529: 20190529
>   CI_DRM_9274: a72abb24ea1d1dd2a56b169f40f54ae1c8d53e55 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18863: c922ac533b62f2faf7ff1af47a97eeeefefc587c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> c922ac533b62 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
> 8aa86e74eb81 drm/i915/dp: Add from_crtc_state to copy color blobs
> f3f325988674 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
> faeced2f5a32 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
> 7099fec68e5b drm/i915/dp: Add a wrapper function around get_pipe_config
> 5c583972c6ab drm/i915: Move encoder->get_config to a new function
> a1e5aa27e03c drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18863/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
