Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC59F69F39A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 12:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896510E02F;
	Wed, 22 Feb 2023 11:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3359888C4C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 11:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677066346; x=1708602346;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=pP2PUdINgm9z8vawKxMWfGeBQYPz6SiLhySo2Gm1jrY=;
 b=bgeH5FfYXbEtPM93vhNA80ZJLCpq7dOyyzrl/5Z/7fTM1P5nCyu3cpWH
 cW4mILlEt6x8V3yMIY87yZbS+TMZ7ibFfgGz2JXqRJCbujconY7yyP4zJ
 Jtix5cSMkwUX2GZGXMsr7O2rbtQgvnMXR8B3AwOXlMMd7QnVjigyx60xu
 U4FF5FN5d262IncPTeaKYXa6MLW2VIo3DMv97Ugz5yXyrUp0zroEMP+7K
 pcumeWrEJD+8q+UCvnxSwySBd6Q3S+MNMXkqOERKDLuENdYOlAs7gs4As
 tdy5Ek6mJmx/yoQURcmVoN+qZqDwYdT5jmDcd4MaU6dPaGg+zQGjMv3Dt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="331571322"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="331571322"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 03:45:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="672046212"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="672046212"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.51])
 ([10.213.26.51])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 03:45:44 -0800
Message-ID: <9db013fb-d91e-923f-5fc0-5dcc514a2f35@intel.com>
Date: Wed, 22 Feb 2023 12:45:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
 <167588156549.385.6426802654401322886@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167588156549.385.6426802654401322886@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_guard_page_to_ggtt-=3Eerror=5Fcapture_=28rev5=29?=
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

On 08.02.2023 19:39, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: add guard page to ggtt->error_capture (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/113560/ 
> <https://patchwork.freedesktop.org/series/113560/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12713 -> Patchwork_113560v5
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/index.html
> 
> 
>     Participating hosts (37 -> 35)
> 
> Missing (2): fi-blb-e6850 fi-snb-2520m
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_113560v5 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
>       o fi-bsw-n3050: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html> (i915#6298 <https://gitlab.freedesktop.org/drm/intel/issues/6298>)


Very common error: 
http://gfx-ci.igk.intel.com/cibuglog-ng/results/all?query_key=a35c73578e5625e7c07ee8d0cbc3a8bd1645592c

Not related

Regards
Andrzej

> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o
> 
>         {bat-adlm-1}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/bat-adlm-1/igt@i915_selftest@live@hangcheck.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/bat-adlm-1/igt@i915_selftest@live@hangcheck.html>
> 
>       o
> 
>         fi-skl-guc: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/fi-skl-guc/igt@i915_selftest@live@hangcheck.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/fi-skl-guc/igt@i915_selftest@live@hangcheck.html>
> 
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o {bat-rpls-1}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/bat-rpls-1/igt@i915_selftest@live@requests.html> (i915#7911 <https://gitlab.freedesktop.org/drm/intel/issues/7911>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113560v5/bat-rpls-1/igt@i915_selftest@live@requests.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12713 -> Patchwork_113560v5
> 
> CI-20190529: 20190529
> CI_DRM_12713: 5180055794b438ce688a6804afb0af08e626ebab @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7153: f47f859f13376958a2bd199423b1f0ff53dddbe0 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_113560v5: 5180055794b438ce688a6804afb0af08e626ebab @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 13f608422386 drm/i915: add guard page to ggtt->error_capture
> 

