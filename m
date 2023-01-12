Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D175666EEC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 11:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67E810E8C2;
	Thu, 12 Jan 2023 10:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F34C10E8C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 10:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673517694; x=1705053694;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=0dtosv9eEH69X4RM+8FUHzbZZk0zWGlLrrfp1ptlUHQ=;
 b=TVkYjrI1z4lG7CSewXnxdphio+9+mXAvRpE/GyEez/gnhLnieRLVid74
 IzdDUTlo9K5ZP21h/v41GixcPNZgQ8XQVXGZEs71JHct/BSOMvROdc0fS
 6mTDQC36bOjySjsM1zq8aMHpTJaKDiltXVMUROxlYg0LryORTJfn+ffud
 GSyHuVWVa637IVKoKN6TN9PMx+5romKGIR6RLY0+xSXP8QvgtvfP48Dra
 1RlTWN0Zu/mpd7//kpy2AgEQ6W4AqtkJGIE3wivtJ0Pymdu1KkevXwCaG
 7JsGnYOf4aFSabPWxjvH5WV98tW85roNPqHed/noy165z2vhPUKUd0Z1W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385977076"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="385977076"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:01:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="721053641"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="721053641"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.11])
 ([10.213.24.11])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:01:33 -0800
Message-ID: <f3f27fb2-6205-4a24-99ff-adf9dc6e7db6@intel.com>
Date: Thu, 12 Jan 2023 11:01:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230111162247.2991559-1-andrzej.hajda@intel.com>
 <167345885427.20084.16260020065367303050@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167345885427.20084.16260020065367303050@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_async=5Fflip_mode_per_plane_tracking_=28rev2?=
 =?utf-8?q?=29?=
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

On 11.01.2023 18:40, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: implement async_flip mode per plane tracking (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/108371/ 
> <https://patchwork.freedesktop.org/series/108371/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12573 -> Patchwork_108371v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_108371v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_108371v2, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/index.html
> 
> 
>     Participating hosts (34 -> 33)
> 
> Additional (1): fi-kbl-soraka
> Missing (2): fi-rkl-11600 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_108371v2:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@guc:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@i915_selftest@live@guc.html>


Again not related bug in fi-kbl-soraka and GuC [1] or more generally 
live tests[2].

[1]: 
https://lore.kernel.org/intel-gfx/?q=b%3A%22fi-kbl-soraka%2Figt%40i915_selftest%40live%40guc.html%22
[2]: 
https://lore.kernel.org/intel-gfx/?q=b%3A%22fi-kbl-soraka%2Figt%40i915_selftest%40live%40%22

Regards
Andrzej

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_108371v2 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +15 similar issues
>   *
> 
>     igt@kms_chamelium_hpd@common-hpd-after-suspend:
> 
>       o fi-rkl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-rkl-guc/igt@kms_chamelium_hpd@common-hpd-after-suspend.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@gt_lrc:
> 
>       o fi-rkl-guc: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12573/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html>
>   *
> 
>     igt@i915_selftest@live@migrate:
> 
>       o {bat-atsm-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12573/bat-atsm-1/igt@i915_selftest@live@migrate.html> (i915#7699 <https://gitlab.freedesktop.org/drm/intel/issues/7699>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v2/bat-atsm-1/igt@i915_selftest@live@migrate.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12573 -> Patchwork_108371v2
> 
> CI-20190529: 20190529
> CI_DRM_12573: 05a39ecbd04e67fb44442617819fc138eca0ac61 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108371v2: 05a39ecbd04e67fb44442617819fc138eca0ac61 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 01304089b052 drm/i915: implement async_flip mode per plane tracking
> 

