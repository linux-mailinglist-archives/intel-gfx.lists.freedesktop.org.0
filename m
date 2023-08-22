Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606767842B6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 16:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A876B10E36C;
	Tue, 22 Aug 2023 14:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC5910E36C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 14:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692712946; x=1724248946;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=dQWvHZTGMKbSjW7iY/PVdmfhAtUB/CZsS/ZQzOezM/4=;
 b=B8YiH6g5DLc+11XcjBR1RtBMdzSDPOH52QXSxbo1AUwSUS0DEOVG1Jd0
 hOISg0FAqYo9huH/qQJOZNvnTlaxYSAh8O7Cbh/0DuDh7ilyEbAJkGwW8
 Uycyc5pJnJ58fPxtkNLdyrnlNBwzG/OaYHL2XN3MYyclajFkltWDTZmuD
 BRlPqRd3j7gNoEZiEvlpMNetQRSg2/GAGQA9BRz4PGjjcQTePOWJlsGMc
 8iq31Me8xrb6jBnbmK0Eqtf+RZuFx2kgoFd+CCBmDxZwOoAQO4THVIIwd
 P1npgcBXZrW2dOcmIUM1HxqoKcW606byMjCJquvUT6gqFkK2jskQ6f26R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="364054679"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="364054679"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 07:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="765746525"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="765746525"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 07:02:14 -0700
Date: Tue, 22 Aug 2023 17:02:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZOS/9VjDNljQ2/eG@ideak-desk.fi.intel.com>
References: <20230822113015.41224-1-imre.deak@intel.com>
 <169270730317.20552.4827661728953262378@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169270730317.20552.4827661728953262378@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm=3A_Add_an_HPD_poll_helper_?=
 =?utf-8?q?to_reschedule_the_poll_work?=
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

On Tue, Aug 22, 2023 at 12:28:23PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm: Add an HPD poll helper to reschedule the poll work
> URL   : https://patchwork.freedesktop.org/series/122736/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13542 -> Patchwork_122736v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122736v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122736v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/index.html
> 
> Participating hosts (39 -> 38)
> ------------------------------
> 
>   Additional (2): fi-kbl-soraka fi-tgl-1115g4 
>   Missing    (3): bat-rpls-2 bat-dg2-9 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_122736v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2:
>     - fi-skl-guc:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13542/fi-skl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-skl-guc/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2.html

The device is runtime resumed at:
[  178.297679] i915 0000:00:02.0: [drm:intel_runtime_resume [i915]] Device resumed

and the machine hangs or becomes unreachable shortly after:
[  366.646763] [IGT] kms_pipe_crc_basic: starting dynamic subtest pipe-B-DP-2

All the subtests of this test in earlier CI runs has been running without runtime
suspending the device, hence I can't see how the issue can be related to
the change (which has an effect only while the device is runtime
suspended).

In the following recent tests the same machine became unresponsive after
system suspend/resume, so one possible root cause is a network problem:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122415v2/fi-skl-guc/igt@gem_exec_suspend@basic-s3@smem.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117567v1/fi-skl-guc/igt@i915_suspend@basic-s3-without-i915.html

"This test caused an abort condition: Ping host did not respond to ping, network down"

I requested a re-test for the changes based on the above.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122736v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][3] ([i915#7456])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][4] ([i915#2190])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([i915#4613]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][8] ([i915#3546] / [i915#7561])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][9] ([i915#1886] / [i915#7913])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@migrate:
>     - bat-atsm-1:         [PASS][10] -> [DMESG-FAIL][11] ([i915#7699] / [i915#7913])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13542/bat-atsm-1/igt@i915_selftest@live@migrate.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/bat-atsm-1/igt@i915_selftest@live@migrate.html
> 
>   * igt@i915_selftest@live@requests:
>     - bat-mtlp-8:         [PASS][12] -> [ABORT][13] ([i915#7982] / [i915#8865])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13542/bat-mtlp-8/igt@i915_selftest@live@requests.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/bat-mtlp-8/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][14] ([i915#7443] / [i915#8102])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +8 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][16] ([i915#4103]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([fdo#109285])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([fdo#110189]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#3555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@load:
>     - bat-adlp-11:        [DMESG-WARN][20] ([i915#9176]) -> [ABORT][21] ([i915#4423])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13542/bat-adlp-11/igt@i915_module_load@load.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/bat-adlp-11/igt@i915_module_load@load.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
>   [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#9176]: https://gitlab.freedesktop.org/drm/intel/issues/9176
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13542 -> Patchwork_122736v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13542: e9193f5af644feeda019392109ba1ecdf8bf09e2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7448: 84aa6d50648d9349fb4f1520f37e5374908c9f4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122736v1: e9193f5af644feeda019392109ba1ecdf8bf09e2 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 418ccee5e4f0 drm/i915: Fix HPD polling, reenabling the output poll work as needed
> 0c89b0fc160e drm: Add an HPD poll helper to reschedule the poll work
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122736v1/index.html
