Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DC512AD9B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 18:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6998689C49;
	Thu, 26 Dec 2019 17:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5C189C49
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 17:12:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 09:12:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,359,1571727600"; d="scan'208";a="367827249"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 26 Dec 2019 09:12:20 -0800
Date: Thu, 26 Dec 2019 09:12:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191226171220.GC2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224231521.3430660-1-matthew.d.roper@intel.com>
 <157723161334.26088.4589761134128055545@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157723161334.26088.4589761134128055545@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Assume_future_platforms_will_inherit_TGL=27s_SFC_c?=
 =?utf-8?q?apability?=
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

On Tue, Dec 24, 2019 at 11:53:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Assume future platforms will inherit TGL's SFC capability
> URL   : https://patchwork.freedesktop.org/series/71371/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7633 -> Patchwork_15920
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15920 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_15920, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_15920:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

Some kind of GEM selftest failure on KBL.  Not related to this patch.
Hitting the retest button.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15920 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - fi-skl-6700k2:      [PASS][2] -> [INCOMPLETE][3] ([i915#671])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-hsw-peppy:       [PASS][4] -> [DMESG-FAIL][5] ([i915#722])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_create@basic:
>     - {fi-tgl-u}:         [INCOMPLETE][6] ([fdo#111736]) -> [PASS][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-tgl-u/igt@gem_exec_create@basic.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-tgl-u/igt@gem_exec_create@basic.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - fi-cfl-guc:         [INCOMPLETE][8] ([i915#505] / [i915#671]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-skl-6770hq:      [FAIL][10] ([i915#178]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live_blt:
>     - fi-hsw-4770:        [DMESG-FAIL][12] ([i915#563]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-hsw-4770/igt@i915_selftest@live_blt.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-hsw-4770/igt@i915_selftest@live_blt.html
> 
>   * igt@i915_selftest@live_dmabuf:
>     - fi-bwr-2160:        [FAIL][14] -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-bwr-2160/igt@i915_selftest@live_dmabuf.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-bwr-2160/igt@i915_selftest@live_dmabuf.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - fi-bxt-dsi:         [DMESG-WARN][16] -> [INCOMPLETE][17] ([fdo#103927])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
>     - fi-kbl-x1275:       [INCOMPLETE][18] ([i915#879]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92]) -> [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][23] ([i915#62] / [i915#92]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
>   [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
>   [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
>   [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (48 -> 38)
> ------------------------------
> 
>   Additional (3): fi-hsw-4770r fi-kbl-7500u fi-snb-2600 
>   Missing    (13): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-byt-squawks fi-ilk-650 fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-tgl-y fi-byt-clapper fi-bsw-nick fi-skl-6600u 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7633 -> Patchwork_15920
> 
>   CI-20190529: 20190529
>   CI_DRM_7633: 7670f977fb1bda159172900b243d14e4dded2886 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15920: ea223c9d0227fb1f2dc1e82fe5fbb59090de00a8 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> ea223c9d0227 drm/i915/tgl: Assume future platforms will inherit TGL's SFC capability
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15920/index.html

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
