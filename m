Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 026E311DC99
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 04:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AFB6E264;
	Fri, 13 Dec 2019 03:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32D96E264
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 03:27:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 19:27:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,308,1571727600"; d="scan'208";a="216506258"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 12 Dec 2019 19:27:27 -0800
Date: Thu, 12 Dec 2019 19:27:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191213032727.GV85422@mdroper-desk1.amr.corp.intel.com>
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
 <157620138385.23797.15999748532441306042@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157620138385.23797.15999748532441306042@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQVVY?=
 =?utf-8?q?_power_well_fixes_=28rev3=29?=
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

On Fri, Dec 13, 2019 at 01:43:03AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: AUX power well fixes (rev3)
> URL   : https://patchwork.freedesktop.org/series/70857/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7554 -> Patchwork_15736
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15736 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_15736, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_15736:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_close_race@basic-threads:
>     - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-j1900/igt@gem_close_race@basic-threads.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-j1900/igt@gem_close_race@basic-threads.html
> 
>   * igt@gem_ctx_create@basic-files:
>     - fi-ivb-3770:        [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
> 
>   * igt@runner@aborted:
>     - fi-byt-j1900:       NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-j1900/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15736 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - fi-kbl-x1275:       [PASS][6] -> [DMESG-WARN][7] ([i915#62] / [i915#92] / [i915#95])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

Seems to be a mutex deadlock in the GEM code while retiring requests.
Also not a platform that would be affected by these patches.

> 
>   * igt@i915_selftest@live_blt:
>     - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-4770/igt@i915_selftest@live_blt.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-hsw-4770/igt@i915_selftest@live_blt.html

Appears to be a GPU hang in a GEM selftest.  Also not a platform that
would be affected by these patches.

> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-byt-n2820:       [PASS][10] -> [INCOMPLETE][11] ([i915#45])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

No clear indication of what happened to the machine to cause the
incomplete.  But not a machine that these patches would be affecting.

> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-kbl-7500u:       [PASS][12] -> [FAIL][13] ([fdo#111096] / [i915#323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

https://gitlab.freedesktop.org/drm/intel/issues/218

Since none of these reports are due to these patches, hitting the
re-test button.


Matt


> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_parallel@basic:
>     - {fi-tgl-u}:         [INCOMPLETE][14] ([i915#476]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-tgl-u/igt@gem_exec_parallel@basic.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-tgl-u/igt@gem_exec_parallel@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +8 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset:
>     - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
>   [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
>   [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
>   [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
>   [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (52 -> 46)
> ------------------------------
> 
>   Additional (1): fi-hsw-4770r 
>   Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7554 -> Patchwork_15736
> 
>   CI-20190529: 20190529
>   CI_DRM_7554: b8870a9cb78bb11f21414804940fadc47ac848dd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15736: 3813cd0a770cacc6aeaaf5acdaf1d532e2748267 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 3813cd0a770c drm/i915/icl: Cleanup combo PHY aux power well handlers
> 16b9c12cd4e9 drm/i915/tgl: Drop Wa#1178
> 6786ae145b22 drm/i915/ehl: Define EHL powerwells independently of ICL
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/index.html

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
