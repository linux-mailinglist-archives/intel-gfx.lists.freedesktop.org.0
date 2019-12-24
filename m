Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6102A12A353
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 18:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5236E10E;
	Tue, 24 Dec 2019 17:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC936E10E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 17:15:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 09:15:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,352,1571727600"; d="scan'208";a="391925264"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 24 Dec 2019 09:15:43 -0800
Date: Tue, 24 Dec 2019 09:15:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191224171541.GZ2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <157716762379.26088.8587060756705467600@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157716762379.26088.8587060756705467600@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgV29y?=
 =?utf-8?q?karound_updates_=28rev2=29?=
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

On Tue, Dec 24, 2019 at 06:07:03AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Workaround updates (rev2)
> URL   : https://patchwork.freedesktop.org/series/71337/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7630 -> Patchwork_15912
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15912 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_15912, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_15912:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - fi-skl-6600u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-skl-6600u:       [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

Seems to be some kind of failure to reset the render engine on SKL:

<3> [394.513614] [drm:gen8_reset_engines [i915]] *ERROR* rcs'0 reset request timed out: {request: 00000001, RESET_CTL: 00000001}
<3> [394.514471] [drm:gen8_reset_engines [i915]] *ERROR* rcs'0 reset request timed out: {request: 00000001, RESET_CTL: 00000001}

These workarounds are only being applied to gen11+ platforms, so they
shouldn't cause a change of behavior for SKL (gen9).  The same errors
seem to have shown up on a couple other patchwork series as well (e.g.,
Manasi's series) so they're seemingly not caused by these patches.

Hitting the re-test button.


Matt


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15912 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6] ([i915#671])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
>     - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8] ([i915#671])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([i915#217])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_create@basic:
>     - {fi-tgl-u}:         [INCOMPLETE][13] ([fdo#111736]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-tgl-u/igt@gem_exec_create@basic.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-tgl-u/igt@gem_exec_create@basic.html
> 
>   * igt@i915_selftest@live_blt:
>     - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-hsw-4770/igt@i915_selftest@live_blt.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-hsw-4770/igt@i915_selftest@live_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +9 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset:
>     - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (43 -> 38)
> ------------------------------
> 
>   Additional (6): fi-hsw-4770r fi-byt-j1900 fi-skl-6770hq fi-glk-dsi fi-ivb-3770 fi-bsw-nick 
>   Missing    (11): fi-ilk-m540 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-bsw-kefka fi-tgl-y fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7630 -> Patchwork_15912
> 
>   CI-20190529: 20190529
>   CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15912: dfa1e7c7d23a3ee5546794eb83a15c1ae7d6443b @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> dfa1e7c7d23a drm/i915/tgl: Extend Wa_1408615072 to tgl
> de23ef806779 drm/i915: Add Wa_1408615072 and Wa_1407596294 to icl, ehl
> a990302934e1 drm/i915: Extend WaDisableDARBFClkGating to icl, ehl, tgl
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15912/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
