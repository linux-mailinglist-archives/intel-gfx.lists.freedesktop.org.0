Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B525456D42
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 11:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135736F3EF;
	Fri, 19 Nov 2021 10:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B386F3EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 10:27:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="231875216"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="231875216"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 02:27:27 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="455403040"
Received: from wchopkin-mobl1.ger.corp.intel.com (HELO [10.252.22.53])
 ([10.252.22.53])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 02:27:26 -0800
Message-ID: <047d6659-062f-9790-7908-29ec8990ae52@intel.com>
Date: Fri, 19 Nov 2021 10:27:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211117142024.1043017-1-matthew.auld@intel.com>
 <163725340920.10079.9032111196043168461@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163725340920.10079.9032111196043168461@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/6=5D_drm/i915=3A_move_the_pre=5Fpin?=
 =?utf-8?q?_earlier_=28rev2=29?=
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

On 18/11/2021 16:36, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/6] drm/i915: move the pre_pin 
> earlier (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/97026/ 
> <https://patchwork.freedesktop.org/series/97026/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10900 -> Patchwork_21631
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21631 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21631, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/index.html
> 
> 
>     Participating hosts (38 -> 33)
> 
> Additional (1): fi-tgl-1115g4
> Missing (6): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 
> bat-jsl-2 bat-jsl-1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_21631:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_psr@primary_page_flip:
>       o fi-skl-6600u: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@kms_psr@primary_page_flip.html>

Looks like some ext4 specific issue.

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21631 that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@amdgpu/amd_basic@query-info:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html>
>         (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>)
>   *
> 
>     igt@amdgpu/amd_basic@semaphore:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +31
>         similar issues
>   *
> 
>     igt@amdgpu/amd_cs_nop@nop-gfx0:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315> /
>         i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +16
>         similar issues
>   *
> 
>     igt@core_hotunplug@unbind-rebind:
> 
>       o fi-tgl-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html>
>         (i915#4006 <https://gitlab.freedesktop.org/drm/intel/issues/4006>)
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o fi-tgl-1115g4: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html>
>         (i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>       o
> 
>         fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@gem_lmem_swapping@basic.html>
>         (i915#4555 <https://gitlab.freedesktop.org/drm/intel/issues/4555>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o
> 
>         fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +6
>         similar issues
> 
>       o
> 
>         fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4555
>         <https://gitlab.freedesktop.org/drm/intel/issues/4555> /
>         i915#4565
>         <https://gitlab.freedesktop.org/drm/intel/issues/4565>) +2
>         similar issues
> 
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#1155 <https://gitlab.freedesktop.org/drm/intel/issues/1155>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_chamelium@vga-edid-read:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1
>         similar issue
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         similar issues
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-tgl-1115g4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html>
>         (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-tgl-u2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-u2/igt@runner@aborted.html>
>         (i915#1602
>         <https://gitlab.freedesktop.org/drm/intel/issues/1602> /
>         i915#2722 <https://gitlab.freedesktop.org/drm/intel/issues/2722>
>         / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o fi-bdw-5557u: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html>
>         (i915#146 <https://gitlab.freedesktop.org/drm/intel/issues/146>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html>
>   *
> 
>     igt@gem_flink_basic@bad-flink:
> 
>       o fi-skl-6600u: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>         (i915#4547
>         <https://gitlab.freedesktop.org/drm/intel/issues/4547>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@basic:
> 
>       o fi-cml-u2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html>
>         (i915#4269
>         <https://gitlab.freedesktop.org/drm/intel/issues/4269>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html>
> 
> 
>         Warnings
> 
>   * igt@gem_lmem_swapping@verify-random:
>       o fi-tgl-u2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4555
>         <https://gitlab.freedesktop.org/drm/intel/issues/4555>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21631/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4555
>         <https://gitlab.freedesktop.org/drm/intel/issues/4555> /
>         i915#4565
>         <https://gitlab.freedesktop.org/drm/intel/issues/4565>) +2
>         similar issues
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_10900 -> Patchwork_21631
> 
> CI-20190529: 20190529
> CI_DRM_10900: b50839f33180500c64a505623ab77829b869a57c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6285: 2e0355faad5c2e81cd6705b76e529ce526c7c9bf @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21631: 59b76c709a722b22b4ad4c6757b8472f42c33389 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 59b76c709a72 drm/i915: Drain the ttm delayed workqueue too
> 31d1314bebea drm/i915: Remove resv from i915_vma
> a3ec36b94293 drm/i915: vma is always backed by an object.
> af937f97b589 drm/i915: Create a full object for mock_ring, v2.
> 0e6d48163844 drm/i915: Create a dummy object for gen6 ppgtt
> ffd0efc92828 drm/i915: move the pre_pin earlier
> 
