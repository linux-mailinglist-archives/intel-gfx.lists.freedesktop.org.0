Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A309E68B72F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 09:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10DE810E16B;
	Mon,  6 Feb 2023 08:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A4910E300
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 08:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675671524; x=1707207524;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=FRSX8nkoULYOOOzC6gjdNtmMzRYYNNxe6inLefghfvY=;
 b=ZuKnPMGut4FSbrj5yS8p7WyQmYyZQxC/ZA1FKtLGqTruS7axEje98K2y
 6iZ4RPJBHwSuG3WSDZM6710nuVQBDNWvCZBmFpi7WJQI0MPp/MXkoB//p
 CtNE/7p6oAbmE29J6Fi3FBvVsp3LCgYXAuuuqcDyRNZ34nHyh3O30K61S
 pJQZkuhHcV5/6vBy7w492sEF7DVNIGZizFSXHPXotl2SoCjA3PgiBZ3yf
 t9URBBpTL0/yaEFbw5IZ/tgkfzJ+jEEprQkvJJv7IBkwUUsT1UnL1sn5o
 ++6kETssfqD5HAW1iC8uiisWQGC9WoO1PzYZILgXU/0b8C++NUSfG/lD0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="326843982"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="326843982"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 00:18:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="616360615"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="616360615"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.35])
 ([10.213.7.35])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 00:18:25 -0800
Message-ID: <12c5096f-27d7-1c37-0be2-30de49840125@intel.com>
Date: Mon, 6 Feb 2023 09:18:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230203130328.3303274-1-andrzej.hajda@intel.com>
 <167544215612.8764.2760075885788010143@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167544215612.8764.2760075885788010143@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_guard_page_to_ggtt-=3Eerror=5Fcapture_=28rev3=29?=
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

On 03.02.2023 17:35, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: add guard page to ggtt->error_capture (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/113560/ 
> <https://patchwork.freedesktop.org/series/113560/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12691 -> Patchwork_113560v3
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_113560v3 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_113560v3, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/index.html
> 
> 
>     Participating hosts (28 -> 26)
> 
> Missing (2): bat-atsm-1 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_113560v3:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_module_load@load:
>       o fi-blb-e6850: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/fi-blb-e6850/igt@i915_module_load@load.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/fi-blb-e6850/igt@i915_module_load@load.html>


OK, stacktrace and code checks show clearly scratch[0] is null for ggtt 
on gen < 6:
... ggtt_probe_hw(...)
{
	...
	if (GRAPHICS_VER(i915) >= 8)
		ret = gen8_gmch_probe(ggtt);
	else if (GRAPHICS_VER(i915) >= 6)
		ret = gen6_gmch_probe(ggtt);
	else
		ret = intel_ggtt_gmch_probe(ggtt);
	...
}

And setup_scratch_page for ggtt is called only from gen[68]_gmch_probe.
Anyway, speculative read is observed since gen12 anyway, so limiting to 
gen12+ should be enough to avoid null scratch.

Regards
Andrzej

> 
> 
>         Warnings
> 
>   * igt@i915_selftest@live@execlists:
>       o fi-kbl-soraka: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/fi-kbl-soraka/igt@i915_selftest@live@execlists.html> (i915#7156 <https://gitlab.freedesktop.org/drm/intel/issues/7156>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/fi-kbl-soraka/igt@i915_selftest@live@execlists.html>
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-1:
>       o {bat-adlp-9}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-1.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_113560v3 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-apl-guc: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>   *
> 
>     igt@i915_selftest@live@migrate:
> 
>       o {bat-adlp-9}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/bat-adlp-9/igt@i915_selftest@live@migrate.html> (i915#7699 <https://gitlab.freedesktop.org/drm/intel/issues/7699>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v3/bat-adlp-9/igt@i915_selftest@live@migrate.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12691 -> Patchwork_113560v3
> 
> CI-20190529: 20190529
> CI_DRM_12691: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7148: ee8e31cf39c44d3fdbd04d8db239f8a815f86121 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_113560v3: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 5bccb726f2f4 drm/i915: add guard page to ggtt->error_capture
> 

