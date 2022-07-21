Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C9957C5D8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 10:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D00982B039;
	Thu, 21 Jul 2022 08:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456DB2B0B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 08:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658390991; x=1689926991;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=oslZ+fw6KXDiU7faMsdxFQ4vYokjVjzleDXd6YjjCWo=;
 b=TBtTpXkBoDeKfB1uwlH7oYalabmjjdgTZRo7moAKQcAs8eVfDYcC020p
 RHXJENUxouqeUcIFG16MzPqkMInn+azD3XgDao8HIEI7YlOYaD22L7n/7
 Kyci7HDx+lBnhT/t/KQQKuAdCSR66qwQLcLw1yWtuNvZAJGhoskSKJCZ8
 WqcvfbrqamgqwCJwJAYZynUTQvExR7FXOBZTlYdP1Yxy6A8S54mqnQMG8
 IFkI13qkxkKogsO1vtjUuxPTWn9CkJSmCSpM37SsHUMlee5n4w1jO2RJc
 vWWMnMY7szif/sJqjoP7UbasOInsz2CDZXUdpJGVaaAJaxN+v41M4iH0u w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284539135"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; 
 d="scan'208,217";a="284539135"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:09:50 -0700
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; 
 d="scan'208,217";a="626016293"
Received: from fklos-mobl.ger.corp.intel.com (HELO [10.252.20.65])
 ([10.252.20.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:09:48 -0700
Content-Type: multipart/alternative;
 boundary="------------q501PqfTxQvSbBNAwz7Mk8HD"
Message-ID: <ac43e59b-5060-b086-e748-c83a1ec02faf@linux.intel.com>
Date: Thu, 21 Jul 2022 10:09:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20220720122321.18270-1-nirmoy.das@intel.com>
 <165837075466.29951.4781624981413145735@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <165837075466.29951.4781624981413145735@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suppress_oom_warning_for_shmemfs_object_allocation_fai?=
 =?utf-8?q?lure_=28rev2=29?=
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

This is a multi-part message in MIME format.
--------------q501PqfTxQvSbBNAwz7Mk8HD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 7/21/2022 4:32 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Suppress oom warning for shmemfs object 
> allocation failure (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/106528/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11928_full -> Patchwork_106528v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_106528v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_106528v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_106528v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         +1 similar issue
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html>
>

Unrelated test failure as the patch is not related to KMS.


Nirmoy


>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@kms_color@invalid-degamma-lut-sizes:
>
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@kms_color@invalid-degamma-lut-sizes.html>
>  *
>
>     igt@kms_cursor_edge_walk@top-bottom:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_cursor_edge_walk@top-bottom.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@kms_cursor_edge_walk@top-bottom.html>
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_11928_full and 
> Patchwork_106528v2_full:
>
>
>       New IGT tests (4)
>
>  *
>
>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.68] s
>  *
>
>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-hdmi-a4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.60] s
>  *
>
>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@c-hdmi-a4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.65] s
>  *
>
>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.62] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_106528v2_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Possible fixes
>
>   * boot:
>       o shard-skl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html>)
>         (i915#5032
>         <https://gitlab.freedesktop.org/drm/intel/issues/5032>) ->
>         (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_create@create-massive:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +7
>         similar issues
>  *
>
>     igt@gem_eio@in-flight-10ms:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb8/igt@gem_eio@in-flight-10ms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb5/igt@gem_eio@in-flight-10ms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) +1
>         similar issue
>  *
>
>     igt@gem_eio@in-flight-contexts-immediate:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none@vcs1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +3
>         similar issues
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +5
>         similar issues
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vecs0:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849 <https://gitlab.freedesktop.org/drm/intel/issues/2849>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@smem-oom:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_lmem_swapping@smem-oom.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_userptr_blits@vma-merge:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@i915_pm_dc@dc9-dpms:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html>
>         (i915#4281 <https://gitlab.freedesktop.org/drm/intel/issues/4281>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405 <https://gitlab.freedesktop.org/drm/intel/issues/6405>)
>  *
>
>     igt@i915_suspend@fence-restore-untiled:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk8/igt@i915_suspend@fence-restore-untiled.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk8/igt@i915_suspend@fence-restore-untiled.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +10
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-b-gamma:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_color_chamelium@pipe-b-gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-c-gamma:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_color_chamelium@pipe-c-gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +16
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#6328 <https://gitlab.freedesktop.org/drm/intel/issues/6328>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +3
>         similar issues
>  *
>
>     igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#5160 <https://gitlab.freedesktop.org/drm/intel/issues/5160>)
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +308
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +2 similar issues
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>  *
>
>     igt@kms_flip@flip-vs-suspend@b-vga1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-snb6/igt@kms_flip@flip-vs-suspend@b-vga1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/intel/issues/4839> /
>         i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>  *
>
>     igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +7
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +73
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#5776
>         <https://gitlab.freedesktop.org/drm/intel/issues/5776>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +1
>         similar issue
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +5
>         similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_su@page_flip-xrgb8888:
>
>      o
>
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>
>  *
>
>     igt@kms_psr@psr2_sprite_blt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>  *
>
>     igt@kms_writeback@writeback-pixel-formats:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@kms_writeback@writeback-pixel-formats.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@nouveau_crc@pipe-c-source-outp-inactive:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@nouveau_crc@pipe-c-source-outp-inactive.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +42
>         similar issues
>  *
>
>     igt@perf@enable-disable:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@perf@enable-disable.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@perf@enable-disable.html>
>         (i915#1352 <https://gitlab.freedesktop.org/drm/intel/issues/1352>)
>  *
>
>     igt@perf@non-zero-reason:
>
>       o shard-skl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@perf@non-zero-reason.html>
>         (i915#6473 <https://gitlab.freedesktop.org/drm/intel/issues/6473>)
>  *
>
>     igt@sysfs_clients@fair-3:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@sysfs_clients@fair-3.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +2
>         similar issues
>  *
>
>     igt@sysfs_clients@recycle-many:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@sysfs_clients@recycle-many.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@sysfs_clients@split-10:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@sysfs_clients@split-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@drm_read@short-buffer-block:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@drm_read@short-buffer-block.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@drm_read@short-buffer-block.html>
>  *
>
>     igt@fbdev@read:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@fbdev@read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@fbdev@read.html>
>  *
>
>     igt@gem_ctx_persistence@hostile:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@gem_ctx_persistence@hostile.html>
>         (i915#2410
>         <https://gitlab.freedesktop.org/drm/intel/issues/2410>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html>
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-18/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html>
>  *
>
>     igt@gem_ctx_persistence@smoketest:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb2/igt@gem_ctx_persistence@smoketest.html>
>         (i915#5099
>         <https://gitlab.freedesktop.org/drm/intel/issues/5099>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb3/igt@gem_ctx_persistence@smoketest.html>
>  *
>
>     igt@gem_exec_balancer@parallel-out-fence:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_endless@dispatch@bcs0:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html>
>         (i915#6247
>         <https://gitlab.freedesktop.org/drm/intel/issues/6247>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html>
>  *
>
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         +16 similar issues
>  *
>
>     igt@gem_exec_schedule@semaphore-power:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html>
>         (fdo#110254
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110254>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html>
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         +4 similar issues
>  *
>
>     igt@gen9_exec_parse@shadow-peek:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html>
>         +5 similar issues
>  *
>
>     igt@i915_pm_backlight@fade_with_suspend:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html>
>         (i915#3012
>         <https://gitlab.freedesktop.org/drm/intel/issues/3012>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html>
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>         (i915#1937
>         <https://gitlab.freedesktop.org/drm/intel/issues/1937>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-13/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>  *
>
>     igt@i915_pm_rpm@dpms-lpsp:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-15/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-13/igt@i915_pm_rpm@dpms-lpsp.html>
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387
>         <https://gitlab.freedesktop.org/drm/intel/issues/4387>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@i915_pm_sseu@full-enable.html>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o {shard-tglu}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglu-6/igt@i915_selftest@live@gt_pm.html>
>         (i915#3987
>         <https://gitlab.freedesktop.org/drm/intel/issues/3987>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglu-6/igt@i915_selftest@live@gt_pm.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o {shard-dg1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-18/igt@i915_selftest@live@hangcheck.html>
>         (i915#4494
>         <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>         i915#4957
>         <https://gitlab.freedesktop.org/drm/intel/issues/4957>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-18/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@i915_selftest@live@migrate:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb5/igt@i915_selftest@live@migrate.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb4/igt@i915_selftest@live@migrate.html>
>         +6 similar issues
>  *
>
>     igt@i915_suspend@fence-restore-untiled:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl1/igt@i915_suspend@fence-restore-untiled.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@i915_suspend@fence-restore-untiled.html>
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>  *
>
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         +9 similar issues
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         (i915#72 <https://gitlab.freedesktop.org/drm/intel/issues/72>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>
>  *
>
>     igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098> /
>         i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html>
>         +1 similar issue
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         +3 similar issues
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
>
>      o
>
>         shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>
>      o
>
>         shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html>
>
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html>
>         +5 similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3546
>         <https://gitlab.freedesktop.org/drm/intel/issues/3546> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html>
>  *
>
>     igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>  *
>
>     igt@kms_prime@basic-crc@second-to-first:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html>
>  *
>
>     igt@kms_psr@cursor_render:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_psr@cursor_render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_psr@cursor_render.html>
>  *
>
>     igt@kms_psr@psr2_cursor_blt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html>
>         +1 similar issue
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel-ordering:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117 <https://gitlab.freedesktop.org/drm/intel/issues/6117>)
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2852
>         <https://gitlab.freedesktop.org/drm/intel/issues/2852>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11928 -> Patchwork_106528v2
>
> CI-20190529: 20190529
> CI_DRM_11928: 8aa8753730556013fd562e01965e5dd571ae55ea @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6593: 6ac554e19b3bb4232877367911e9185e5d35296f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_106528v2: 8aa8753730556013fd562e01965e5dd571ae55ea @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------q501PqfTxQvSbBNAwz7Mk8HD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/21/2022 4:32 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165837075466.29951.4781624981413145735@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Suppress oom warning for shmemfs object
              allocation failure (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/106528/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/106528/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11928_full -&gt;
        Patchwork_106528v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_106528v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_106528v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (13 -&gt; 13)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_106528v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html"
                moz-do-not-send="true">TIMEOUT</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>Unrelated test failure as the patch is not related to KMS.<br>
    </p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:165837075466.29951.4781624981413145735@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@kms_color@invalid-degamma-lut-sizes:</p>
          <ul>
            <li>{shard-rkl}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@kms_color@invalid-degamma-lut-sizes.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_edge_walk@top-bottom:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_cursor_edge_walk@top-bottom.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@kms_cursor_edge_walk@top-bottom.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_11928_full and
        Patchwork_106528v2_full:</p>
      <h3>New IGT tests (4)</h3>
      <ul>
        <li>
          <p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.68] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-hdmi-a4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.60] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@c-hdmi-a4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.65] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.62] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_106528v2_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Possible fixes</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-skl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>) (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5032"
                moz-do-not-send="true">i915#5032</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/boot.html"
                moz-do-not-send="true">PASS</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@feature_discovery@psr2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@feature_discovery@psr2.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-massive:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@gem_create@create-massive.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4991"
                moz-do-not-send="true">i915#4991</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-10ms:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb8/igt@gem_eio@in-flight-10ms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb5/igt@gem_eio@in-flight-10ms.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-contexts-immediate:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@gem_eio@in-flight-contexts-immediate.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@gem_eio@in-flight-contexts-immediate.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2846"
                moz-do-not-send="true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>) +5 similar
                issues</p>
            </li>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vecs0:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2849"
                moz-do-not-send="true">i915#2849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_lmem_swapping@smem-oom.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@gem_pwrite@basic-exhaustion.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2658"
                moz-do-not-send="true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@vma-merge:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@gem_userptr_blits@vma-merge.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3318"
                moz-do-not-send="true">i915#3318</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@i915_pm_dc@dc3co-vpb-simulation.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc9-dpms:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4281"
                moz-do-not-send="true">i915#4281</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6405"
                moz-do-not-send="true">i915#6405</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@fence-restore-untiled:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk8/igt@i915_suspend@fence-restore-untiled.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk8/igt@i915_suspend@fence-restore-untiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2521"
                moz-do-not-send="true">i915#2521</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3743"
                moz-do-not-send="true">i915#3743</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-gamma:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_color_chamelium@pipe-b-gamma.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-gamma:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_color_chamelium@pipe-c-gamma.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +16 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6328"
                moz-do-not-send="true">i915#6328</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1888"
                moz-do-not-send="true">i915#1888</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5160"
                moz-do-not-send="true">i915#5160</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +308 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-snb6/igt@kms_flip@flip-vs-suspend@b-vga1.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4839"
                moz-do-not-send="true">i915#4839</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4939"
                moz-do-not-send="true">i915#4939</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl9/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +73 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5776"
                moz-do-not-send="true">i915#5776</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5176"
                moz-do-not-send="true">i915#5176</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
          <ul>
            <li>
              <p>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109642"
                  moz-do-not-send="true">fdo#109642</a> / <a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                  moz-do-not-send="true">fdo#111068</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                  moz-do-not-send="true">i915#658</a>)</p>
            </li>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                  moz-do-not-send="true">i915#658</a>) +2 similar issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_blt:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-pixel-formats:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl4/igt@kms_writeback@writeback-pixel-formats.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@nouveau_crc@pipe-c-source-outp-inactive.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +42 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@enable-disable:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@perf@enable-disable.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@perf@enable-disable.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1352"
                moz-do-not-send="true">i915#1352</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@non-zero-reason:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@perf@non-zero-reason.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6473"
                moz-do-not-send="true">i915#6473</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-3:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl10/igt@sysfs_clients@fair-3.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@recycle-many:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@sysfs_clients@recycle-many.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-10:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@sysfs_clients@split-10.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@drm_read@short-buffer-block:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@drm_read@short-buffer-block.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@drm_read@short-buffer-block.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@read:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@fbdev@read.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@fbdev@read.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@hostile:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@gem_ctx_persistence@hostile.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2410"
                moz-do-not-send="true">i915#2410</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-18/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4883"
                moz-do-not-send="true">i915#4883</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@smoketest:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglb2/igt@gem_ctx_persistence@smoketest.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5099"
                moz-do-not-send="true">i915#5099</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglb3/igt@gem_ctx_persistence@smoketest.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-out-fence:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_endless@dispatch@bcs0:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6247"
                moz-do-not-send="true">i915#6247</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3281"
                moz-do-not-send="true">i915#3281</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html"
                moz-do-not-send="true">PASS</a> +16 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@semaphore-power:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110254"
                moz-do-not-send="true">fdo#110254</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html"
                moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@shadow-peek:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2527"
                moz-do-not-send="true">i915#2527</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html"
                moz-do-not-send="true">PASS</a> +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@fade_with_suspend:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3012"
                moz-do-not-send="true">i915#3012</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1937"
                moz-do-not-send="true">i915#1937</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-13/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-lpsp:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-15/igt@i915_pm_rpm@dpms-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-13/igt@i915_pm_rpm@dpms-lpsp.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-1/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4387"
                moz-do-not-send="true">i915#4387</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-5/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-tglu-6/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3987"
                moz-do-not-send="true">i915#3987</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-tglu-6/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-dg1-18/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4494"
                moz-do-not-send="true">i915#4494</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4957"
                moz-do-not-send="true">i915#4957</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-dg1-18/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb5/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2867"
                moz-do-not-send="true">i915#2867</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb4/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">PASS</a> +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@fence-restore-untiled:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl1/igt@i915_suspend@fence-restore-untiled.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl4/igt@i915_suspend@fence-restore-untiled.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2521"
                moz-do-not-send="true">i915#2521</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">PASS</a> +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/72"
                moz-do-not-send="true">i915#72</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html"
                moz-do-not-send="true">INCOMPLETE</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111314"
                moz-do-not-send="true">fdo#111314</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4369"
                moz-do-not-send="true">i915#4369</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4767"
                moz-do-not-send="true">i915#4767</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:</p>
          <ul>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-apl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                  moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                  moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html"
                moz-do-not-send="true">PASS</a> +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3546"
                moz-do-not-send="true">i915#3546</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4070"
                moz-do-not-send="true">i915#4070</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3558"
                moz-do-not-send="true">i915#3558</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4070"
                moz-do-not-send="true">i915#4070</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-crc@second-to-first:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_render:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-rkl-2/igt@kms_psr@cursor_render.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-rkl-6/igt@kms_psr@cursor_render.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_blt:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-ordering:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6117"
                moz-do-not-send="true">i915#6117</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2852"
                moz-do-not-send="true">i915#2852</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-skl10/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1888"
                moz-do-not-send="true">i915#1888</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-skl9/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11928/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106528v2/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11928 -&gt; Patchwork_106528v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11928: 8aa8753730556013fd562e01965e5dd571ae55ea @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6593: 6ac554e19b3bb4232877367911e9185e5d35296f @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_106528v2: 8aa8753730556013fd562e01965e5dd571ae55ea @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------q501PqfTxQvSbBNAwz7Mk8HD--
