Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8377D69F37B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 12:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C4610E1C0;
	Wed, 22 Feb 2023 11:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD8810E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 11:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677065760; x=1708601760;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Io0uJPNt+uiMm+/zI3/7UwI+UHriH0EMnLuvbtod1vI=;
 b=mgcOsQBHkY4hiEyHYCoWJXNWPAPgYDtWfR6sk6aJ+z2S50Xb8EdxUh0H
 7aWNLFc+VMykiI8cVejDI0F7jAzcghvRDL/yIVkmOT74WX40Z4/c9/UFi
 r5tG375iO/4KbR5o6bgrCCs/eMnpn3wwTe92ejjHbVVBA2xpFz7xst/mr
 51KfRDF0wIr8mUKHhqPV41K9n/p7FVbQ4XC3Hwb7QZTB94G1lucFhUSEt
 juR3L+QzeSzFriP/SPo1x+0Nn75RlPIjyRjPCb22N9oLq4VnhNpZbaEzq
 tQDsQLx3mm76SZIZtx/WTNgzOsOLAxvQ17hg2XiIs0rEPC8nRmWC2jRmv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="316625195"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="316625195"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 03:35:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="735882309"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="735882309"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.51])
 ([10.213.26.51])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 03:35:58 -0800
Message-ID: <6691f292-3c52-db9a-935a-ff9c2537a5c7@intel.com>
Date: Wed, 22 Feb 2023 12:35:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
 <167588597898.387.7579478051492707285@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167588597898.387.7579478051492707285@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_guard_page_to_ggtt-=3Eerror=5Fcapture_=28rev6=29?=
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

On 08.02.2023 20:52, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: add guard page to ggtt->error_capture (rev6)
> *URL:*	https://patchwork.freedesktop.org/series/113560/ 
> <https://patchwork.freedesktop.org/series/113560/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12715 -> Patchwork_113560v6
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/index.html
> 
> 
>     Participating hosts (36 -> 35)
> 
> Missing (1): fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_113560v6:
> 
> 
>       IGT changes
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_selftest@live@reset:
>       o {bat-rpls-2}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12715/bat-rpls-2/igt@i915_selftest@live@reset.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/bat-rpls-2/igt@i915_selftest@live@reset.html>

This 'issue' and below 'possible fixes' are due to know issue with 
"timed out waiting for forcewake ack request", not related.

Regards
Andrzej

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_113560v6 that come from known 
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
>     igt@i915_selftest@live@gt_pm:
> 
>       o {bat-rpls-2}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12715/bat-rpls-2/igt@i915_selftest@live@gt_pm.html> (i915#4258 <https://gitlab.freedesktop.org/drm/intel/issues/4258>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/bat-rpls-2/igt@i915_selftest@live@gt_pm.html>
>   *
> 
>     igt@i915_selftest@live@reset:
> 
>       o {bat-rpls-1}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12715/bat-rpls-1/igt@i915_selftest@live@reset.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v6/bat-rpls-1/igt@i915_selftest@live@reset.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12715 -> Patchwork_113560v6
> 
> CI-20190529: 20190529
> CI_DRM_12715: 07d1c54bcdf3fddd723f31d605b4e8c49328affa @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7153: f47f859f13376958a2bd199423b1f0ff53dddbe0 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_113560v6: 07d1c54bcdf3fddd723f31d605b4e8c49328affa @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 3b4ea4d26bfb drm/i915: add guard page to ggtt->error_capture
> 

