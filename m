Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46FE53BD0F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 19:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E966610E7EF;
	Thu,  2 Jun 2022 17:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A76610E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 17:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654190146; x=1685726146;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NIlL3agOf4XF9k4xScDwrg7VykYuPfX+xkLtjFUq7zQ=;
 b=HekOyaqyCXKNAXaqCGvGkvse2dG39/aZCH6ZtgGXK07SM2lkYVIe7nBs
 G0k+rMPOlzlLU7tnf9wCvqqKnDF2F+Xu22SRgt1m185hKqitVHZxEuJCD
 1uizPijWVISpxus4co5ob2nqFU8cxsgEOwLh2IB4NfT9aQUoaWbLGTpV6
 xSSUDl2sl1t3sj8dEdGOXy0q/qR63NI3qHSTeZ2Mx/lXTUMKtzOse24Iv
 nUmNkvFww2puHqBiktgLSvJy2XkzXSBC2E/zv+A6TcX+L0tPjHLD31f0M
 aT52w5M1IAT6uqDFLuHHqYPUGTsjl+JsgPImrSGQLSfpHcIcH6a5Lkshg g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256493902"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="256493902"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 10:15:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="757082289"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 10:15:44 -0700
Date: Thu, 2 Jun 2022 10:15:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpjwPx+zNVki4kAK@mdroper-desk1.amr.corp.intel.com>
References: <20220602135719.1093081-1-balasubramani.vivekanandan@intel.com>
 <165418748387.17949.8989529031179621666@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165418748387.17949.8989529031179621666@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/adlp=3A_More_updates_to_voltage_swing_table?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 02, 2022 at 04:31:23PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display/adlp: More updates to voltage swing table
> URL   : https://patchwork.freedesktop.org/series/104661/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11719 -> Patchwork_104661v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104661v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104661v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/index.html
> 
> Participating hosts (47 -> 43)
> ------------------------------
> 
>   Additional (2): bat-atsm-1 fi-tgl-u2 
>   Missing    (6): fi-hsw-4200u bat-adlm-1 fi-icl-u2 fi-bwr-2160 bat-jsl-2 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104661v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@allocator-basic-reserve:
>     - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-kbl-soraka/igt@gem_softpin@allocator-basic-reserve.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-kbl-soraka/igt@gem_softpin@allocator-basic-reserve.html

From the log it appears this test did complete successfully.  I'm not
sure why CI marked it as an INCOMPLETE?  Either way, Bala's patch here
would not have changed the behavior for a KBL platform.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - {bat-atsm-1}:       NOTRUN -> [SKIP][3] +4 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/bat-atsm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104661v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - bat-dg1-6:          [PASS][5] -> [INCOMPLETE][6] ([i915#4418])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][7] ([i915#3921])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-cfl-8109u/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][10] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][11] ([i915#4103]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][12] ([fdo#109285])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][13] ([i915#3555])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([fdo#109295] / [i915#3301])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {fi-ehl-2}:         [DMESG-WARN][15] ([i915#5122]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-8109u:       [DMESG-FAIL][17] ([i915#62]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@coherency:
>     - fi-bdw-5557u:       [INCOMPLETE][19] ([i915#5674] / [i915#5685]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-bdw-5557u/igt@i915_selftest@live@coherency.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-bdw-5557u/igt@i915_selftest@live@coherency.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        [INCOMPLETE][21] ([i915#4785]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>     - bat-dg1-5:          [DMESG-FAIL][23] ([i915#4494] / [i915#4957]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - {bat-dg2-9}:        [DMESG-WARN][25] ([i915#5763]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-cfl-8109u:       [DMESG-WARN][27] ([i915#62]) -> [PASS][28] +15 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
>   [i915#5674]: https://gitlab.freedesktop.org/drm/intel/issues/5674
>   [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685
>   [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
>   [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
>   [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
>   [i915#6092]: https://gitlab.freedesktop.org/drm/intel/issues/6092
>   [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
>   [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
>   [i915#6099]: https://gitlab.freedesktop.org/drm/intel/issues/6099
>   [i915#6133]: https://gitlab.freedesktop.org/drm/intel/issues/6133
>   [i915#6134]: https://gitlab.freedesktop.org/drm/intel/issues/6134
>   [i915#6135]: https://gitlab.freedesktop.org/drm/intel/issues/6135
>   [i915#6136]: https://gitlab.freedesktop.org/drm/intel/issues/6136
>   [i915#6137]: https://gitlab.freedesktop.org/drm/intel/issues/6137
>   [i915#6138]: https://gitlab.freedesktop.org/drm/intel/issues/6138
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11719 -> Patchwork_104661v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11719: 30f22faccf454263bc2a1c9212b8ab6efbb3425b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104661v1: 30f22faccf454263bc2a1c9212b8ab6efbb3425b @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 821471c80f29 drm/i915/display/adlp: More updates to voltage swing table
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
