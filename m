Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006C8473F4C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 10:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BEB10EAA7;
	Tue, 14 Dec 2021 09:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D730E10EAAB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 09:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639473860; x=1671009860;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=fnQMw3fB741KsE2vhgk86qcHr6mHIFYqQDhoTqdS6iM=;
 b=DIeGFB1KAYoOxdrie7+P3LrW6Xjp/CR3Ernoi7BeNNz4rN2b7NdLZklt
 CqmqqHpIfA1Pci6mtWYzkLUftKzR/W2SfgbwKuqoxxVv4Xkm/hhftuPeC
 Rcqm3Hvk9l026oWXwVFJDAMEQ//BGUAqOLaSTag5zK8WaAnt30JK9Z0tw
 8HGH7VbNDOzuJVQ+6UTFnsZaPG1Dr3IvRyQntrrhLLo3CRmgM20Jq6b0n
 N/BPL6RmmuLIm8Kot6HfCCEItq0+dKkfUTajEv8Vl9DsxzbsY95ziTb2j
 QJUG/vnGFznoIQXd+4EjqC5amyLMf/Ipbc/d79r72Z9BuyxSLv6+jBxcY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299719031"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="299719031"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:24:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="505291038"
Received: from vgavinx-mobl1.ger.corp.intel.com (HELO [10.252.22.20])
 ([10.252.22.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:24:19 -0800
Message-ID: <7fd2f30a-95bb-a0ce-9b1d-80e59c3d1d88@intel.com>
Date: Tue, 14 Dec 2021 09:24:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211213125530.3960007-1-matthew.auld@intel.com>
 <163941933001.29011.8261078484229971238@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163941933001.29011.8261078484229971238@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_add_noreclaim_annotations?=
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

On 13/12/2021 18:15, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/debugfs: add noreclaim annotations
> *URL:*	https://patchwork.freedesktop.org/series/97966/ 
> <https://patchwork.freedesktop.org/series/97966/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10995 -> Patchwork_21838
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21838 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21838, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/index.html
> 
> 
>     Participating hosts (40 -> 33)
> 
> Missing (7): bat-dg1-6 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 
> fi-pnv-d510 fi-bdw-samus
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_21838:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@gem:
>       o fi-blb-e6850: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/fi-blb-e6850/igt@i915_selftest@live@gem.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-blb-e6850/igt@i915_selftest@live@gem.html>


Unrelated, looks like an object leaked.

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21838 that come from known issues:
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +17
>         similar issues
>   *
> 
>     igt@amdgpu/amd_basic@semaphore:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +31
>         similar issues
>   *
> 
>     igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +21
>         similar issues
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html>
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-blb-e6850: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-blb-e6850/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403 <https://gitlab.freedesktop.org/drm/intel/issues/2403>
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html>
>         (i915#146 <https://gitlab.freedesktop.org/drm/intel/issues/146>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html>
>   *
> 
>     igt@gem_flink_basic@bad-flink:
> 
>       o fi-skl-6600u: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>         (i915#198 <https://gitlab.freedesktop.org/drm/intel/issues/198>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html>
>   *
> 
>     igt@i915_selftest@live@workarounds:
> 
>       o fi-rkl-guc: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/fi-rkl-guc/igt@i915_selftest@live@workarounds.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21838/fi-rkl-guc/igt@i915_selftest@live@workarounds.html>
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_10995 -> Patchwork_21838
> 
> CI-20190529: 20190529
> CI_DRM_10995: 9ed632ca6db2fb2c6ae01f833fd825114bce97d5 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6307: be84fe4f151bc092e068cab5cd0cd19c34948b40 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21838: 98e6b86a912b39c6f8d9d748e6f531be585ef1e0 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 98e6b86a912b drm/i915/debugfs: add noreclaim annotations
> 
