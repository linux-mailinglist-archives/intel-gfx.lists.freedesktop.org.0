Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C37F1486961
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 19:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52ADD10E671;
	Thu,  6 Jan 2022 18:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8513110E671
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 18:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641492435; x=1673028435;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=J3p/QyzdtPz7gK3xkFvjbCUNfnQxV0Jm/FmmzK464xg=;
 b=k61jgZfKulHclUNENdS2g6kSrwd3PXe511fuJxpSgmlTNiPc+qY1/XVQ
 fqqQ9XTNJ9yDB2KrnxrsbkQYkW5pC7v5e1RlxYjyL0Ll8qvU2/HxKPFkt
 Kash00MBHrDNbe8YXofIeMILa/jlKd2n8p+TdCZCXH0PTSVyyCrfcHP5D
 7TcHxG8c5RkyybWfSSPB6H/xT50gQjroQoDQ+9rTxRbRR62U7OSuJURxR
 r0fy9hE6qbs9crybu4X2tnXgf0+w/A+aDfUvxaX3OS183X8li1SFR+v6F
 Prm9Tkh8FpoAxrjc0HIAD8UFnZ2lvDiSeiLgLllxArbBl6ToUdO0enSkS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="266997695"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="266997695"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 10:07:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="761229330"
Received: from lsgoh-mobl1.gar.corp.intel.com (HELO [10.249.65.184])
 ([10.249.65.184])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 10:07:13 -0800
Message-ID: <590572a8-b490-5516-11ab-5cda572eff73@intel.com>
Date: Thu, 6 Jan 2022 18:07:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220106112026.247459-1-matthew.auld@intel.com>
 <164147236127.20693.1383566257244795568@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164147236127.20693.1383566257244795568@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915=3A_don=27t_call_free?=
 =?utf-8?q?=5Fmmap=5Foffset_when_purging?=
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

Lakshmi, any idea why this reports as success? Clicking on the "See full 
logs" for BAT there is a clear new failure on DG1 in one of the 
selftests, which is caused by this series. It also doesn't appear in the 
issues hit below.

On 06/01/2022 12:32, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/4] drm/i915: don't call 
> free_mmap_offset when purging
> *URL:*	https://patchwork.freedesktop.org/series/98548/ 
> <https://patchwork.freedesktop.org/series/98548/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11052 -> Patchwork_21930
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/index.html
> 
> 
>     Participating hosts (44 -> 37)
> 
> Missing (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-rpls-1 
> fi-bdw-samus bat-jsl-1
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21930 that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@amdgpu/amd_basic@semaphore:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +31
>         similar issues
>   *
> 
>     igt@amdgpu/amd_cs_nop@sync-compute0:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +6
>         similar issues
>   *
> 
>     igt@amdgpu/amd_prime@i915-to-amd:
> 
>       o fi-snb-2520m: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +17
>         similar issues
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o fi-skl-6600u: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html>
>         (i915#4547 <https://gitlab.freedesktop.org/drm/intel/issues/4547>)
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3@smem:
> 
>       o fi-icl-u2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/fi-icl-u2/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-icl-u2/igt@gem_exec_suspend@basic-s3@smem.html>
>   *
> 
>     igt@i915_selftest@live@gt_contexts:
> 
>       o fi-snb-2520m: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html>
>         (i915#4610
>         <https://gitlab.freedesktop.org/drm/intel/issues/4610>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21930/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html>
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11052 -> Patchwork_21930
> 
> CI-20190529: 20190529
> CI_DRM_11052: 5926026a36a658f615b8a5aaa74a90a2a3c5e6c5 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6324: 6e009504d5f7cc39866191e4bff813a4512c3e9b @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21930: be0926fec2d647c269ce85910715a088c17397ef @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> be0926fec2d6 drm/i915/ttm: ensure we unmap when purging
> e0c70169a2fd drm/i915/ttm: add unmap_virtual callback
> c3ae17de8264 drm/i915/ttm: only fault WILLNEED objects
> ce8969fa161a drm/i915: don't call free_mmap_offset when purging
> 
