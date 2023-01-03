Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD54965BCB0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 10:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644B510E245;
	Tue,  3 Jan 2023 09:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738DF10E245
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672736588; x=1704272588;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=D0Elz0Qa73JXCADBBBukpYHFum/hTqQ1TolU1cxIvRA=;
 b=WnVnskuPs5My0UDaBOMGZtg5GkUU8ilP1bdosYt1Ke+fEDC/vY2zD67P
 l4uREC3OvSnbenhy0sDjFpctY4CZSaOan43rP728grWVxarHFyUJG7Mnc
 hm3f75NhliK5sXrjXdNJftfvKljb8i0JwW8NbnM4FqjgaWN5oTE2rYHkY
 ARcO+BJmajSpHD0K8o1OoBH3I9D0NHwIh9inibGCPjerQFWR5ycQF6Q/h
 M3QkkDM5+U91VuWxfiemUjCMiZn1Exegm/mtV0FyvHdrLHkSd6USuWvY/
 9vSfRvK2Cb6VZ4cH2spHy/rXaBbaFSroLuPNVXot4rNVEzSKDVytD5YDb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="320330131"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="320330131"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 01:03:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="828792062"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="828792062"
Received: from joaoferx-mobl1.amr.corp.intel.com (HELO [10.251.220.227])
 ([10.251.220.227])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 01:03:05 -0800
Message-ID: <4fe0e5d7-0a03-319c-ac44-3d490e87e818@linux.intel.com>
Date: Tue, 3 Jan 2023 10:03:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org, Patchwork
 <patchwork@emeril.freedesktop.org>, Nirmoy Das <nirmoy.das@intel.com>
References: <20221230183500.20553-1-nirmoy.das@intel.com>
 <167242907094.16415.9629348880723649332@emeril.freedesktop.org>
 <b2540829-6fe9-59d0-c5ca-4d00a26f763e@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <b2540829-6fe9-59d0-c5ca-4d00a26f763e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_=22=25zu=22_to_format_size=5Ft?=
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

Yes makes sense, thanks, G.G.

On 1/3/2023 9:11 AM, Gwan-gyeong Mun wrote:
> This fix has nothing to do with IGT Possible regression.
> This fixes the code that raised build warnings in 32-bit environments. 
> And this patch has been merged.
>
> On 12/30/22 9:37 PM, Patchwork wrote:
>> *Patch Details*
>> *Series:*    drm/i915: Use "%zu" to format size_t
>> *URL:*    https://patchwork.freedesktop.org/series/112317/ 
>> <https://patchwork.freedesktop.org/series/112317/>
>> *State:*    failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_12532 -> Patchwork_112317v1
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_112317v1 absolutely 
>> need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_112317v1, please notify your bug team to 
>> allow them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>> External URL: 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html
>>
>>
>>     Participating hosts (44 -> 43)
>>
>> Additional (1): fi-kbl-soraka
>> Missing (2): fi-rkl-11600 fi-snb-2520m
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_112317v1:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   * igt@i915_selftest@live@slpc:
>>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html>
>>
>>
>>     Known issues
>>
>> Here are the changes found in Patchwork_112317v1 that come from known 
>> issues:
>>
>>
>>       IGT changes
>>
>>
>>         Issues hit
>>
>>   *
>>
>>     igt@gem_exec_gttfill@basic:
>>
>>       o fi-kbl-soraka: NOTRUN -> SKIP
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html>
>>         (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +7
>>         similar issues
>>   *
>>
>>     igt@gem_huc_copy@huc-copy:
>>
>>       o fi-kbl-soraka: NOTRUN -> SKIP
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>>         (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#2190 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>>   *
>>
>>     igt@gem_lmem_swapping@basic:
>>
>>       o fi-kbl-soraka: NOTRUN -> SKIP
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>>         (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#4613
>> <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>>         similar issues
>>   *
>>
>>     igt@i915_selftest@live@gt_heartbeat:
>>
>>       o fi-apl-guc: PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>>         -> DMESG-FAIL
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>>         (i915#5334 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>>   *
>>
>>     igt@i915_selftest@live@gt_pm:
>>
>>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>>         (i915#1886 
>> <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>>   *
>>
>>     igt@kms_chamelium@common-hpd-after-suspend:
>>
>>       o fi-hsw-4770: NOTRUN -> SKIP
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>>         (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         fdo#111827 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>>   *
>>
>>     igt@kms_chamelium@hdmi-hpd-fast:
>>
>>       o fi-kbl-soraka: NOTRUN -> SKIP
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html>
>>         (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         fdo#111827
>> <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>>         similar issues
>>
>>
>>         Possible fixes
>>
>>   *
>>
>>     igt@i915_selftest@live@hangcheck:
>>
>>       o fi-hsw-4770: INCOMPLETE
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>>         (i915#4785
>> <https://gitlab.freedesktop.org/drm/intel/issues/4785>) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>>   *
>>
>>     igt@i915_selftest@live@requests:
>>
>>       o {bat-rpls-1}: INCOMPLETE
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/bat-rpls-1/igt@i915_selftest@live@requests.html>
>>         (i915#6257
>> <https://gitlab.freedesktop.org/drm/intel/issues/6257>) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/bat-rpls-1/igt@i915_selftest@live@requests.html>
>>   *
>>
>>     igt@i915_selftest@live@reset:
>>
>>       o {bat-rpls-2}: DMESG-FAIL
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/bat-rpls-2/igt@i915_selftest@live@reset.html>
>>         (i915#4983
>> <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/bat-rpls-2/igt@i915_selftest@live@reset.html>
>>
>> {name}: This element is suppressed. This means it is ignored when 
>> computing
>> the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>
>>     Build changes
>>
>>   * Linux: CI_DRM_12532 -> Patchwork_112317v1
>>
>> CI-20190529: 20190529
>> CI_DRM_12532: 91195847031b60062eb046b8bb0c9e64a2291e10 @ 
>> git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_7104: fe5def13049225967770eaaf19ec01ef80e2adc5 @ 
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_112317v1: 91195847031b60062eb046b8bb0c9e64a2291e10 @ 
>> git://anongit.freedesktop.org/gfx-ci/linux
>>
>>
>>       Linux commits
>>
>> c0b7c80b83b2 drm/i915: Use "%zu" to format size_t
>>
