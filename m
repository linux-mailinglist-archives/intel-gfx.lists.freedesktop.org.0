Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A746B0E37
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D6110E64A;
	Wed,  8 Mar 2023 16:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C2A10E64A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678291814; x=1709827814;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+C71a8GuZPPNYBwA5YCKG6TaUsvfhyWjqu9kne4p0tU=;
 b=MFPp1+Iv5TyFHIm6qLc8Xp/7g/+T0qVVd04hGXoqEpRxndAPTt601o3M
 WenBlu8FafW/3AIQ5GheaEL7SLeB2VZGHVkd8WyniQ3dvbaApCMC9Bnnx
 rGPs7ySjP84JPO5TrCowHX2kSP42BeXKOO+357f+cl/xMTE/sjp8z5Gi8
 UKqR30UicWCOS1asTufK/zGo7hzm1gdkYpo9B7gp5O+7Bo467y7JMtuz8
 vph5EYJTvoAgZbZMFQ2VwYUsNZ9Sv/sRaaUDJ3EH3FYriRhlURvEoQa02
 vlQDsiwO6841x935AXDV2WcKGwSY5drdFEzMbQh4uOBBQ0j5vAppBdKjF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="401019520"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401019520"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:08:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="654396032"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="654396032"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.17.50])
 ([10.213.17.50])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:08:42 -0800
Message-ID: <cc36d042-6ab1-0d2d-63e5-1cbd0eeedf25@intel.com>
Date: Wed, 8 Mar 2023 17:08:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230308112349.1882182-1-andrzej.hajda@intel.com>
 <167829028185.20410.12841884721077671826@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167829028185.20410.12841884721077671826@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_prevent_forcewake_releases_during_BAR_resize_=28rev?=
 =?utf-8?q?3=29?=
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

On 08.03.2023 16:44, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/gt: prevent forcewake releases during BAR resize (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/114836/ 
> <https://patchwork.freedesktop.org/series/114836/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12827 -> Patchwork_114836v3
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_114836v3 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_114836v3, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/index.html
> 
> 
>     Participating hosts (35 -> 34)
> 
> Additional (1): bat-dg1-6
> Missing (2): bat-kbl-2 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_114836v3:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@execlists:
>       o fi-glk-j4005: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/fi-glk-j4005/igt@i915_selftest@live@execlists.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/fi-glk-j4005/igt@i915_selftest@live@execlists.html>
> 

Unrelated, and already observed [1].

[1]: 
http://gfx-ci.igk.intel.com/tree/drm-tip/IGT_7184/fi-bsw-nick/igt@i915_selftest@live@execlists.html

Regards
Andrzej

> 
>     Known issues
> 
> Here are the changes found in Patchwork_114836v3 that come from known 
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
>     igt@gem_mmap@basic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@gem_render_tiled_blits@basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 similar issue
>   *
> 
>     igt@gem_tiled_fence_blits@basic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 similar issues
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html> (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   *
> 
>     igt@i915_selftest@live@slpc:
> 
>       o bat-rpls-1: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-rpls-1/igt@i915_selftest@live@slpc.html> (i915#6367 <https://gitlab.freedesktop.org/drm/intel/issues/6367>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215>)
>   *
> 
>     igt@kms_addfb_basic@tile-pitch-mismatch:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +7 similar issues
>   *
> 
>     igt@kms_chamelium_hpd@common-hpd-after-suspend:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +8 similar issues
> 
>       o
> 
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>) +1 similar issue
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>)
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>) +3 similar issues
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-gtt:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@prime_vgem@basic-gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 similar issue
>   *
> 
>     igt@prime_vgem@basic-read:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@prime_vgem@basic-read.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +3 similar issues
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-6/igt@prime_vgem@basic-userptr.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4873 <https://gitlab.freedesktop.org/drm/intel/issues/4873>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-skl-guc: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/fi-skl-guc/igt@i915_selftest@live@hangcheck.html> (i915#8073 <https://gitlab.freedesktop.org/drm/intel/issues/8073>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/fi-skl-guc/igt@i915_selftest@live@hangcheck.html>
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o bat-rpls-1: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/bat-rpls-1/igt@i915_selftest@live@requests.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983> / i915#7694 <https://gitlab.freedesktop.org/drm/intel/issues/7694> / i915#7911 <https://gitlab.freedesktop.org/drm/intel/issues/7911> / i915#7981 <https://gitlab.freedesktop.org/drm/intel/issues/7981>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-rpls-1/igt@i915_selftest@live@requests.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:
> 
>       o bat-dg1-5: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114836v3/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html> +3 similar issues
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12827 -> Patchwork_114836v3
> 
> CI-20190529: 20190529
> CI_DRM_12827: b794b8d84dc0470ee58467386f41870e81a86580 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7183: 3434cef8be4e487644a740039ad15123cd094526 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_114836v3: b794b8d84dc0470ee58467386f41870e81a86580 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 6eed413c855f drm/i915/gt: prevent forcewake releases during BAR resize
> 

