Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F212C2AF9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 16:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3370A6E424;
	Tue, 24 Nov 2020 15:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F015A6E424
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 15:12:42 +0000 (UTC)
IronPort-SDR: NIBAmmRBQxxXhjN8wWX/sRgjUsQmFEb8IVHh+RbhJSAUleXBTh3FqnaSrx2Id18a/cwlildkf9
 kCLA3RRmLdVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159002376"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="159002376"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 07:12:42 -0800
IronPort-SDR: WnatqVi4rapNsIuvQiylY9rtW8g3+dHMK2ZqAv3twUva6/ZY8jn3UTyCsUr2liHuUQKxFbveQ/
 uexuQfYxyLBw==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="536502963"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 07:12:40 -0800
Date: Tue, 24 Nov 2020 17:12:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20201124151237.GE1750458@ideak-desk.fi.intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <160616667129.16919.10811690376260413336@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160616667129.16919.10811690376260413336@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/framebuffer=3A_Format_modifier_?=
 =?utf-8?q?for_Intel_Gen_12_render_compression_with_Clear_Color?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, Nov 23, 2020 at 09:24:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
> URL   : https://patchwork.freedesktop.org/series/84183/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9378 -> Patchwork_18961
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18961 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18961, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18961:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_fence@basic-await@rcs0:
>     - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-skl-lmem/igt@gem_exec_fence@basic-await@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-skl-lmem/igt@gem_exec_fence@basic-await@rcs0.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-kbl-7500u:       [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

the patchset adds a new framebuffer modifier used only on TGL, so the
above two failures happen on unaffected platforms.

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9378 and Patchwork_18961:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 40 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18961 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@kms_busy@basic@flip:
>     - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-tgl-y/igt@kms_busy@basic@flip.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-tgl-y/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@prime_self_import@basic-with_one_bo_two_files:
>     - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_busy@basic@modeset:
>     - fi-tgl-y:           [DMESG-WARN][11] ([i915#1982]) -> [PASS][12] +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-tgl-y/igt@kms_busy@basic@modeset.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-tgl-y/igt@kms_busy@basic@modeset.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-byt-j1900:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14] +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - {fi-kbl-7560u}:     [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - fi-icl-u2:          [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   * igt@prime_vgem@basic-write:
>     - fi-tgl-y:           [DMESG-WARN][19] ([i915#402]) -> [PASS][20] +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9378/fi-tgl-y/igt@prime_vgem@basic-write.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/fi-tgl-y/igt@prime_vgem@basic-write.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
> 
> 
> Participating hosts (44 -> 40)
> ------------------------------
> 
>   Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9378 -> Patchwork_18961
> 
>   CI-20190529: 20190529
>   CI_DRM_9378: efc7f880143d6fe75922ad393045665c8ea60f57 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5868: 36b5fc05c30dbfd9242069fd6e51ebb419b386bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18961: 0dba847db9d24c6d2d706379ac2f842b8f4a6bdb @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 0dba847db9d2 drm/i915/tgl: Add Clear Color support for TGL Render Decompression
> a3b4d1336125 drm/framebuffer: Format modifier for Intel Gen 12 render compression with Clear Color
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18961/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
