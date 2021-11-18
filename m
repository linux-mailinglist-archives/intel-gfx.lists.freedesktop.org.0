Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D59A455918
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 11:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9CD6E9D5;
	Thu, 18 Nov 2021 10:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF7B6E9D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 10:31:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221040224"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="221040224"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 02:28:09 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="473101289"
Received: from davidmor-mobl1.ger.corp.intel.com (HELO [10.252.9.238])
 ([10.252.9.238])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 02:28:08 -0800
Message-ID: <10ab70e0-6799-33df-b35e-3daee6c16f63@intel.com>
Date: Thu, 18 Nov 2021 10:28:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211117142024.1043017-1-matthew.auld@intel.com>
 <163717883416.18221.1819687781719882351@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163717883416.18221.1819687781719882351@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/6=5D_drm/i915=3A_move_the_pre=5Fpin?=
 =?utf-8?q?_earlier?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 17/11/2021 19:53, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/6] drm/i915: move the pre_pin earlier
> *URL:*	https://patchwork.freedesktop.org/series/97026/ 
> <https://patchwork.freedesktop.org/series/97026/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10896 -> Patchwork_21617
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21617 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21617, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/index.html
> 
> 
>     Participating hosts (40 -> 35)
> 
> Additional (1): fi-tgl-1115g4
> Missing (6): bat-dg1-6 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 bat-jsl-2 
> bat-jsl-1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_21617:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_lmem_swapping@verify-random:
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@gem_lmem_swapping@verify-random.html>
>         +3 similar issues

Looks to be unrelated.


> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21617 that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@amdgpu/amd_basic@cs-gfx:
> 
>       o fi-rkl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +17
>         similar issues
>   *
> 
>     igt@amdgpu/amd_basic@query-info:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html>
>         (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>)
>   *
> 
>     igt@amdgpu/amd_cs_nop@nop-gfx0:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315> /
>         i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +16
>         similar issues
>   *
> 
>     igt@amdgpu/amd_cs_nop@sync-fork-compute0:
> 
>       o fi-snb-2600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +17
>         similar issues
>   *
> 
>     igt@gem_flink_basic@bad-flink:
> 
>       o fi-skl-6600u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10896/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>         (i915#4547 <https://gitlab.freedesktop.org/drm/intel/issues/4547>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#1155 <https://gitlab.freedesktop.org/drm/intel/issues/1155>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1
>         similar issue
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         similar issues
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html>
>         (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-skl-6600u: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-skl-6600u/igt@runner@aborted.html>
>         (i915#3363
>         <https://gitlab.freedesktop.org/drm/intel/issues/3363> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@evict:
> 
>       o fi-kbl-soraka: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10896/fi-kbl-soraka/igt@i915_selftest@live@evict.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-kbl-soraka/igt@i915_selftest@live@evict.html>
>   *
> 
>     igt@i915_selftest@live@gt_engines:
> 
>       o fi-rkl-guc: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10896/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-snb-2600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10896/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921
>         <https://gitlab.freedesktop.org/drm/intel/issues/3921>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21617/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_10896 -> Patchwork_21617
> 
> CI-20190529: 20190529
> CI_DRM_10896: bf11e5f354ac51635d032893d80a1d0015d277dc @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6283: a2cd90a7c24bb7a4c19ca74c75ed8c950820dee2 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21617: 7dc7916fd526389e070074e9e3895c12b0bcdb29 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 7dc7916fd526 drm/i915: Drain the ttm delayed workqueue too
> 283402ea4955 drm/i915: Remove resv from i915_vma
> 1a43e1835f7f drm/i915: vma is always backed by an object.
> b2328bc6d485 drm/i915: Create a full object for mock_ring, v2.
> 8864b863b878 drm/i915: Create a dummy object for gen6 ppgtt
> 2c4bb85ec07b drm/i915: move the pre_pin earlier
> 
