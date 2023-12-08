Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9E7809E24
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 09:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBE310E269;
	Fri,  8 Dec 2023 08:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02E010E269
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702024324; x=1733560324;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=ixYeIUVlykXlZiigPsJCy1LPmoQk6cvvLxdUwrIG8Nw=;
 b=jS93r5zETVQS+ufCFCwgG+8VUYgdIjUhVIEhlsO6YHbSmTcV+Dn+LvN8
 dLtFhtyZCSndKxHhKNFxP4gobs+FpNtnZahma9265QFpVqf+VETyWUaIx
 lkRyIFsNniRoGhjrCuzornO4IE8q5cEIaHAAxaPiDxcNPGOKZNG3CmLmB
 zBGjif18DXWeG2trButb3SJ6cH/M48ZgXdgkc9/QWXOiJDcWi4Otp8F3H
 zC0tzYzmf3m/tsmY3X8p90mTBWdvUfvyVxzWzyttEzWHKXmhDF87QL8cr
 pbCnAF4aTuoFmJPboJDvRMr1sUvuSHjt0qwFlAoLw2bR+xYlzECEPTw0/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="391545800"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="391545800"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 00:32:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775726795"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="775726795"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.21.136])
 ([10.213.21.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 00:32:02 -0800
Message-ID: <48279674-7b26-423a-974a-572d74c07c94@intel.com>
Date: Fri, 8 Dec 2023 09:32:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IFtJbnRlbC1nZnhdIMODw4LCoiBGaS5DSS5CQVQ6IGZhaWx1cmUg?=
 =?UTF-8?Q?for_drm/i915/display=3A_Check_GGTT_to_determine_phys=5Fbase_=28re?=
 =?UTF-8?B?djIp?=
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>, Paz Zcharya <pazz@chromium.org>
References: <20231206184736.3769657-1-pazz@chromium.org>
 <170190828076.28719.7247703341018232460@emeril.freedesktop.org>
 <a164e21e-1ccc-4279-b587-9707703201ce@intel.com>
 <f8d9ba8a-ecb1-4852-a935-dbede90b8d9f@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <f8d9ba8a-ecb1-4852-a935-dbede90b8d9f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07.12.2023 12:26, Andrzej Hajda wrote:
> 
> 
> On 07.12.2023 11:10, Andrzej Hajda wrote:
>> On 07.12.2023 01:18, Patchwork wrote:
>>> *Patch Details*
>>> *Series:*    drm/i915/display: Check GGTT to determine phys_base (rev2)
>>> *URL:*    https://patchwork.freedesktop.org/series/127130/ 
>>> <https://patchwork.freedesktop.org/series/127130/>
>>> *State:*    failure
>>> *Details:* 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html>
>>>
>>>
>>>   CI Bug Log - changes from CI_DRM_13990 -> Patchwork_127130v2
>>>
>>>
>>>     Summary
>>>
>>> *FAILURE*
>>>
>>> Serious unknown changes coming with Patchwork_127130v2 absolutely 
>>> need to be
>>> verified manually.
>>>
>>> If you think the reported changes have nothing to do with the changes
>>> introduced in Patchwork_127130v2, please notify your bug team 
>>> (I915-ci-infra@lists.freedesktop.org) to allow them
>>> to document this new failure mode, which will reduce false positives 
>>> in CI.
>>>
>>> External URL: 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html
>>>
>>>
>>>     Participating hosts (37 -> 34)
>>>
>>> Missing (3): fi-pnv-d510 fi-snb-2520m bat-dg1-5
>>>
>>>
>>>     Possible new issues
>>>
>>> Here are the unknown changes that may have been introduced in 
>>> Patchwork_127130v2:
>>>
>>>
>>>       IGT changes
>>>
>>>
>>>         Possible regressions
>>>
>>>   * igt@i915_module_load@load:
>>>       o bat-mtlp-8: PASS
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-mtlp-8/igt@i915_module_load@load.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-mtlp-8/igt@i915_module_load@load.html>
>>
>>
>> It seems related. I think the patch is correct but it just unveils 
>> other display take-over issues.
>> Ie with this patch initial_plane_vma returns valid buffer, but 
>> subsequent display code fails miserably with kernel panic.
>>
>> So until this is not solved, we shouldn't merge the patch, IMO.
>>
>> CC: i915 maintainers and display developers
> 
> 
> After taking a look on panic log [1], I have found:
> [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC
> 
> I don't know why it is only debug level? It seems serious failure, as a 
> result i915_init_ggtt fails and probe fails.
> 
> The cause is that initial framebuffer is located at the end of GGTT and 
> it overlaps with reserved area (see ggtt_reserve_guc_top).
> 
> I am not sure how it can be properly fixed, I guess dirty fix could be
> just relocation of vma (hopefully into free area), sth like:
> new_gte = gsm + (ggtt->vm.total - GUC_TOP_RESERVE_SIZE - size) / 
> I915_GTT_PAGE_SIZE;
> memmove(new_gte, gte, size / I915_GTT_PAGE_SIZE);
> 
> but I have no idea of possible side effects :)

I looked once more into the code and maybe you can just pin the buffer 
to earlier address (not overlapping with GuC reservation and current vma 
of the fb):
@@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
         if (IS_ERR(vma))
                 goto err_obj;

+       if (base + size > GUC_GGTT_TOP)
+               base = min(base, GUC_GGTT_TOP) - size;
+
         pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
         if (HAS_GMCH(i915))
                 pinctl |= PIN_MAPPABLE;


Regards
Andrzej

> 
> [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-mtlp-8/pstore0-2849851684_Panic_1.txt
> 
> Regards
> Andrzej
> 
> 
>>
>> Regards
>> Andrzej
>>
>>>
>>>
>>>     Known issues
>>>
>>> Here are the changes found in Patchwork_127130v2 that come from known 
>>> issues:
>>>
>>>
>>>       IGT changes
>>>
>>>
>>>         Issues hit
>>>
>>>   * igt@kms_pm_backlight@basic-brightness@edp-1:
>>>       o bat-rplp-1: NOTRUN -> ABORT
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>>>
>>>
>>>         Possible fixes
>>>
>>>   *
>>>
>>>     igt@gem_exec_suspend@basic-s0@lmem0:
>>>
>>>       o bat-dg2-9: INCOMPLETE
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html> (i915#9275 <https://gitlab.freedesktop.org/drm/intel/issues/9275>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html>
>>>   *
>>>
>>>     igt@kms_flip@basic-flip-vs-dpms@d-dp6:
>>>
>>>       o bat-adlp-11: DMESG-FAIL
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html> (i915#6868 <https://gitlab.freedesktop.org/drm/intel/issues/6868>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html>
>>>   *
>>>
>>>     igt@kms_flip@basic-flip-vs-modeset@d-dp6:
>>>
>>>       o bat-adlp-11: DMESG-WARN
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html>
>>>   *
>>>
>>>     igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>>>
>>>       o bat-rplp-1: ABORT
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
>>>
>>>
>>>     Build changes
>>>
>>>   * Linux: CI_DRM_13990 -> Patchwork_127130v2
>>>
>>> CI-20190529: 20190529
>>> CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ 
>>> git://anongit.freedesktop.org/gfx-ci/linux
>>> IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @ 
>>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>>> Patchwork_127130v2: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ 
>>> git://anongit.freedesktop.org/gfx-ci/linux
>>>
>>>
>>>       Linux commits
>>>
>>> 43f210e851cd drm/i915/display: Check GGTT to determine phys_base
>>>
>>
