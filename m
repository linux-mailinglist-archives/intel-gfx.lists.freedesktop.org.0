Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B23D2F46
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 23:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807036EAD9;
	Thu, 22 Jul 2021 21:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A485C6EAD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 21:40:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233573892"
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="233573892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 14:40:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="462926598"
Received: from bcappucc-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.213.179.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 14:40:55 -0700
Date: Thu, 22 Jul 2021 17:40:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YPnl5n9tgIvgIGk/@intel.com>
References: <20210722135026.282494-1-rodrigo.vivi@intel.com>
 <162696655321.30343.3053184915539789942@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162696655321.30343.3053184915539789942@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/bios=3A_Fix_ports_mask_=28rev2=29?=
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

On Thu, Jul 22, 2021 at 03:09:13PM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915/bios: Fix ports mask (rev2)
>    URL:     [1]https://patchwork.freedesktop.org/series/92850/
>    State:   failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/index.html
> 
>            CI Bug Log - changes from CI_DRM_10371 -> Patchwork_20680
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20680 absolutely need to
>    be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20680, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/index.html
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20680:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_pm_rpm@basic-rte:
>           + fi-bdw-5557u: NOTRUN -> [3]FAIL

Apparently after we moved to -rc2 this test is failing in all platforms.
Unfortunately I couldn't bisect because on the machines I got access it
was failing regardless the kernel that I was using :/

> 
> Known issues
> 
>    Here are the changes found in Patchwork_20680 that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@amdgpu/amd_basic@query-info:
>           + fi-bsw-kefka: NOTRUN -> [4]SKIP ([5]fdo#109271) +17 similar
>             issues
>      * igt@amdgpu/amd_basic@semaphore:
>           + fi-bdw-5557u: NOTRUN -> [6]SKIP ([7]fdo#109271) +25 similar
>             issues
>      * igt@core_hotunplug@unbind-rebind:
>           + fi-bdw-5557u: NOTRUN -> [8]WARN ([9]i915#3718)
> 
>     Possible fixes
> 
>      * igt@gem_exec_suspend@basic-s3:
>           + {fi-tgl-1115g4}: [10]FAIL ([11]i915#1888) -> [12]PASS
>      * igt@i915_selftest@live@execlists:
>           + fi-bsw-kefka: [13]INCOMPLETE ([14]i915#2782 / [15]i915#2940)
>             -> [16]PASS
>      * igt@kms_chamelium@dp-crc-fast:
>           + fi-kbl-7500u: [17]FAIL ([18]i915#1372) -> [19]PASS
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (38 -> 35)
> 
>    Missing (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u
> 
> Build changes
> 
>      * Linux: CI_DRM_10371 -> Patchwork_20680
> 
>    CI-20190529: 20190529
>    CI_DRM_10371: 8e68c13425e29c96ef94c9dd3583159000c61380 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_20680: e1fd6ca0eb59bf30864ec455071ae7082201381b @
>    git://anongit.freedesktop.org/gfx-ci/linux
> 
>    == Linux commits ==
> 
>    e1fd6ca0eb59 drm/i915/bios: Fix ports mask
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/92850/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html
>    5. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html
>    7. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html
>    9. https://gitlab.freedesktop.org/drm/intel/issues/3718
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10371/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
>   11. https://gitlab.freedesktop.org/drm/intel/issues/1888
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10371/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
>   14. https://gitlab.freedesktop.org/drm/intel/issues/2782
>   15. https://gitlab.freedesktop.org/drm/intel/issues/2940
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
>   17. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10371/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
>   18. https://gitlab.freedesktop.org/drm/intel/issues/1372
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20680/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
