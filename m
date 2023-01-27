Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202FE67E1C5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 11:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8103210E442;
	Fri, 27 Jan 2023 10:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909CC10E444
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 10:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674815837; x=1706351837;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=BZtHYk7/WsLMSue7jEjnQGQmmkF5V+lsmGRyvqv5/KQ=;
 b=X3IZ8Ljzq7QzbVrXYpb5rCvkcUHBI3xcRn6CNjfWMCl/ckqdCcFqMj6p
 k0wuQs/iem8Ovk8hq48MfXQvy+mR5jcUH5ZxB9hpuLIy2H0aSU70bLmKZ
 os39n7NnzQf0x3FiUR9clX2PUI8C4pQF3d75AiM2Gtu6x7xYKRvk0k9CR
 teB6EHBHXJeDI3rXvc6m7COiouXCOXuiGNT4lPsYqOjpx+oKdf3wDTjKl
 gijbHV+nyehL2Q1hAc7cWo/pjmNerNKpJLuBeClcbNiRkK5LBB9a6CjpN
 EqNLBK0EzJVdKUvaa2rBoBhdoWiSTqTp5yexO2tOthjoRoze2+SLACHKE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328347313"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328347313"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 02:37:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="695473898"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="695473898"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.252])
 ([10.213.31.252])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 02:37:16 -0800
Message-ID: <27d0a92e-d295-4dd9-f0cb-7073c0efc76c@intel.com>
Date: Fri, 27 Jan 2023 11:37:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230126170801.3954784-1-andrzej.hajda@intel.com>
 <167475497076.539.17527797772843960578@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167475497076.539.17527797772843960578@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_selftests_for_TLB_invalidation_=28rev4=29?=
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

On 26.01.2023 18:42, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/gt: Add selftests for TLB invalidation (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/112894/ 
> <https://patchwork.freedesktop.org/series/112894/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12647 -> Patchwork_112894v4
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/index.html
> 
> 
>     Participating hosts (26 -> 22)
> 
> Missing (4): fi-kbl-soraka bat-rpls-2 bat-atsm-1 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_112894v4:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     {igt@i915_selftest@live@gt_tlb} (NEW):
> 
>       o
> 
>         fi-bsw-nick: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/fi-bsw-nick/igt@i915_selftest@live@gt_tlb.html>
> 
>       o
> 
>         fi-bsw-n3050: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/fi-bsw-n3050/igt@i915_selftest@live@gt_tlb.html>


It seems on Gen8/VCS MI_CONDITIONAL_BATCH_BUFFER_END has exceptional 
syntax[1]:
"Compare Address
Qword address to fetch compare Mask (DW0) and Data Dword(DW1) from
memory.
HW will do AND operation on Mask(DW0) with Data Dword(DW1) and then 
compare the
result against Semaphore Data Dword
"

Moreover address is aligned to qword on all platforms.
I will implement changes, I hope it will solve the issue.
Unfortunately I have no access to BSW/CHERRYVIEW platforms, so unless I 
find one I need to rely on CI.

[1]: https://gfxspecs.intel.com/Predator/Home/Index/6971

Regards
Andrzej

> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_12647 and Patchwork_112894v4:
> 
> 
>       New IGT tests (1)
> 
>   * igt@i915_selftest@live@gt_tlb:
>       o Statuses : 2 dmesg-fail(s) 19 pass(s)
>       o Exec time: [0.0] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_112894v4 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
>       o fi-bsw-n3050: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12647/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html> (i915#6298 <https://gitlab.freedesktop.org/drm/intel/issues/6298>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@mman:
> 
>       o {bat-rpls-1}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12647/bat-rpls-1/igt@i915_selftest@live@mman.html> (i915#6794 <https://gitlab.freedesktop.org/drm/intel/issues/6794>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/bat-rpls-1/igt@i915_selftest@live@mman.html>
>   *
> 
>     igt@i915_selftest@live@workarounds:
> 
>       o {bat-adlm-1}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12647/bat-adlm-1/igt@i915_selftest@live@workarounds.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/bat-adlm-1/igt@i915_selftest@live@workarounds.html>
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1:
> 
>       o {bat-adlp-9}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12647/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html> (i915#4137 <https://gitlab.freedesktop.org/drm/intel/issues/4137>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v4/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html> +3 similar issues
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12647 -> Patchwork_112894v4
> 
> CI-20190529: 20190529
> CI_DRM_12647: ab288692acfb4c176e1411107686368c121462dc @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7137: 5f7ea985ac0828bec5e1bbc101b7931bd7fb62e3 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112894v4: ab288692acfb4c176e1411107686368c121462dc @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 1635ae6c0100 drm/i915/gt: Add selftests for TLB invalidation
> 

