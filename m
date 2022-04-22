Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C29650B43D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 11:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8601510E6F4;
	Fri, 22 Apr 2022 09:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1914710E6F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 09:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650620338; x=1682156338;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=SCbcJRmXz7MOc/AYRxJrz5w4jJbADDyvaimpxCZ0WU0=;
 b=fT8Z2HJcBoCggKjq1FCMVS3aXQw4P1BPzwd/T+LFFcRFPbSwzS2GhS67
 vNqcwEA5MIPIc4dbwv2PKA8ulZ9yG7Nnf4HSqjLjXRshI9gwO4S51N/H/
 NrdbhOGk8Br5put4cquCkw9GQ0hRHg0pvFmFz6K7OZ6Yc8nVlvUS1dcFr
 enNTwcMtXvr5/mL/UkFMwvMmHs/ffFUdDGagX1wwEbHa43I5AkdXuhg+S
 pi5wRz1mE4XewuiFELOgAr02vmIltpW0GSiWGVG1LY/um7TKVewSUw+wv
 iMO4Au5ZC5xpsycri0iNt1Q+IpdtFdytgjdLaWgc0iDRSUSLjBBngkSdK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="262229869"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="262229869"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 02:38:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="556277513"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 02:38:56 -0700
Date: Fri, 22 Apr 2022 12:38:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <YmJ3rF3NbBhiJAXY@ideak-desk.fi.intel.com>
References: <20220421162221.2261895-1-imre.deak@intel.com>
 <165057530917.10762.17641440982789293557@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165057530917.10762.17641440982789293557@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_SEL=5FFETCH=5FPLANE=5F*=28PIPE=5FB+=29_register_ad?=
 =?utf-8?q?dresses?=
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

Hi Lakshmi,

On Thu, Apr 21, 2022 at 09:08:29PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+) register addresses
> URL   : https://patchwork.freedesktop.org/series/102941/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11537 -> Patchwork_102941v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102941v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102941v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/index.html
> 
> Participating hosts (45 -> 45)
> ------------------------------
> 
>   Additional (2): fi-bdw-gvtdvm fi-bdw-5557u 
>   Missing    (2): fi-bsw-cyan fi-icl-u2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_102941v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gem:
>     - fi-tgl-1115g4:      [PASS][1] -> [DMESG-WARN][2] +15 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-tgl-1115g4/igt@i915_selftest@live@gem.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-tgl-1115g4/igt@i915_selftest@live@gem.html

This is
"i915 0000:00:02.0: [drm] *ERROR* power well AUX_TBT4 state mismatch (refcount 1/enabled 0)"

tracked at
https://gitlab.freedesktop.org/drm/intel/-/issues/2867

The issue is unrelated to the change, since fi-tgl-111g4 doesn't have an eDP panel.

For 2867 I will follow up with a patch to change the error to a debug
message, since TBT power wells are expected to stay disabled on a
disconnected port.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102941v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@write:
>     - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][3] ([fdo#109271]) +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-bdw-gvtdvm/igt@fbdev@write.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][4] ([i915#4831])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - bat-dg1-6:          [PASS][7] -> [INCOMPLETE][8] ([i915#4418])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-g3258:       [PASS][9] -> [INCOMPLETE][10] ([i915#4785])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-dg1-5:          [PASS][11] -> [INCOMPLETE][12] ([i915#5198])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-dg1-5/igt@i915_selftest@live@slpc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-dg1-5/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
>     - bat-adlp-4:         [PASS][13] -> [DMESG-WARN][14] ([i915#3576]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
> 
>   * igt@runner@aborted:
>     - fi-bdw-5557u:       NOTRUN -> [FAIL][15] ([i915#4312])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-bdw-5557u/igt@runner@aborted.html
>     - fi-hsw-g3258:       NOTRUN -> [FAIL][16] ([fdo#109271] / [i915#4312])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-hsw-g3258/igt@runner@aborted.html
>     - bat-dg1-6:          NOTRUN -> [FAIL][17] ([i915#4312] / [i915#5257])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-dg1-6/igt@runner@aborted.html
>     - fi-bsw-n3050:       NOTRUN -> [FAIL][18] ([fdo#109271] / [i915#3428] / [i915#4312])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-bsw-n3050/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - {fi-tgl-dsi}:       [DMESG-FAIL][19] ([i915#5334]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2600:        [INCOMPLETE][21] ([i915#3921]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - {bat-adlp-6}:       [DMESG-WARN][23] ([i915#3576]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
> 
>   * igt@kms_flip@basic-plain-flip@a-edp1:
>     - bat-adlp-4:         [DMESG-WARN][25] ([i915#3576]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/bat-adlp-4/igt@kms_flip@basic-plain-flip@a-edp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
>   [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
>   [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
>   [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
>   [i915#5198]: https://gitlab.freedesktop.org/drm/intel/issues/5198
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5647]: https://gitlab.freedesktop.org/drm/intel/issues/5647
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11537 -> Patchwork_102941v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102941v1: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 51331d6ade57 drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+) register addresses
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/index.html
