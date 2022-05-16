Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4BE5282B5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 12:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DDA10F4C9;
	Mon, 16 May 2022 10:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB95710F4C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 10:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652698645; x=1684234645;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=w7YttDulqDYs9+wmpR3T1wb0okjfFhMrHiYSmZDpe9A=;
 b=cWk682FNj48rXuWIyrXZJAQrgQ1y8tbcwCOyGZrL7BkPMWd5Ys1sQLi/
 Kuyv/suVZFKKJzINuwqL/I1Sb1dbFVWVLADjGSuS12AMmVb4L36X9/ko3
 D9d65WMfJyzGLB61E2VrDwlyoYjHwKbRytHCzg+MDUj9XyeeSKZpVy56n
 vNRoZ3/Prpq5tMgKuXEgkZaFLETIDEtnEbZCfk8piieq5GGiEVPHeqWCq
 BAINEAPqA/iRrNEmk3e9aKEqJYT7PbW8GqSUlZvph1oNS9f+5jcwb6eiq
 6cgqp8/sHQ+R+mkH/ynTcWiuwXWv1BjewLCwqPSyYAYzZyXh63b59v0Dx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270494719"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; 
 d="scan'208,217";a="270494719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 03:57:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; 
 d="scan'208,217";a="596462351"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.34.77])
 ([10.249.34.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 03:57:22 -0700
Content-Type: multipart/alternative;
 boundary="------------xmm5wmDapJCtesVbYr2VSx5b"
Message-ID: <81dcc5b8-c8e3-e5c4-7662-f1e5654bf2a0@linux.intel.com>
Date: Mon, 16 May 2022 12:57:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>
References: <20220513113752.21265-1-nirmoy.das@intel.com>
 <165245364733.9637.17282980752364055557@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <165245364733.9637.17282980752364055557@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_individualize_fences_before_adding?=
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
--------------xmm5wmDapJCtesVbYr2VSx5b
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 5/13/2022 4:54 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: individualize fences before adding
> *URL:* 	https://patchwork.freedesktop.org/series/103981/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11649 -> Patchwork_103981v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_103981v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_103981v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html
>
>
>     Participating hosts (39 -> 40)
>
> Additional (3): fi-blb-e6850 fi-icl-u2 bat-dg1-5
> Missing (2): bat-adlm-1 bat-jsl-2
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_103981v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@gem:
>       o fi-blb-e6850: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@i915_selftest@live@gem.html>
>

Unrelated and this test on blb is failing for a while 
https://intel-gfx-ci.01.org/tree/drm-tip/fi-blb-e6850.html


Nirmoy



>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_103981v1 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@fbdev@write:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@fbdev@write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) +4
>         similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_mmap@basic:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>  *
>
>     igt@gem_tiled_fence_blits@basic:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         similar issues
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_tiled_pread_basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         similar issue
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#1155 <https://gitlab.freedesktop.org/drm/intel/issues/1155>)
>  *
>
>     igt@i915_selftest@live@gt_engines:
>
>       o bat-dg1-5: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html>
>         (i915#4418 <https://gitlab.freedesktop.org/drm/intel/issues/4418>)
>  *
>
>     igt@i915_selftest@live@gtt:
>
>       o fi-bdw-5557u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-bdw-5557u/igt@i915_selftest@live@gtt.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html>
>         (i915#5685 <https://gitlab.freedesktop.org/drm/intel/issues/5685>)
>  *
>
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215>)
>  *
>
>     igt@kms_addfb_basic@tile-pitch-mismatch:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +7
>         similar issues
>  *
>
>     igt@kms_busy@basic:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_busy@basic.html>
>         (i915#4303 <https://gitlab.freedesktop.org/drm/intel/issues/4303>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium@hdmi-hpd-fast:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +2
>         similar issues
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213>) +1
>         similar issue
>
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-dpms.html>
>         (i915#4078
>         <https://gitlab.freedesktop.org/drm/intel/issues/4078>) +23
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>       o fi-blb-e6850: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39
>         similar issues
>  *
>
>     igt@kms_psr@primary_page_flip:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072> /
>         i915#4078
>         <https://gitlab.freedesktop.org/drm/intel/issues/4078>) +3
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         similar issue
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html>
>         (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>
>      o
>
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4873 <https://gitlab.freedesktop.org/drm/intel/issues/4873>)
>
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-write.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +3
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         bat-dg1-5: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@runner@aborted.html>
>         (i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>
>      o
>
>         fi-blb-e6850: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403
>         <https://gitlab.freedesktop.org/drm/intel/issues/2403> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_suspend@basic-s0@smem:
>
>       o {fi-ehl-2}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html>
>         (i915#5122
>         <https://gitlab.freedesktop.org/drm/intel/issues/5122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html>
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o {fi-jsl-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@i915_suspend@system-suspend-without-i915:
>
>       o {bat-dg2-9}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/bat-dg2-9/igt@i915_suspend@system-suspend-without-i915.html>
>         (i915#5763
>         <https://gitlab.freedesktop.org/drm/intel/issues/5763>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg2-9/igt@i915_suspend@system-suspend-without-i915.html>
>  *
>
>     igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>
>       o {bat-adlp-6}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>         (i915#3576
>         <https://gitlab.freedesktop.org/drm/intel/issues/3576>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11649 -> Patchwork_103981v1
>
> CI-20190529: 20190529
> CI_DRM_11649: 41053495dd77aa5604144477ef59334a9492a169 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_103981v1: 41053495dd77aa5604144477ef59334a9492a169 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 4a604aeca9d8 drm/i915: individualize fences before adding
>
--------------xmm5wmDapJCtesVbYr2VSx5b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/13/2022 4:54 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165245364733.9637.17282980752364055557@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: individualize fences before adding</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/103981/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/103981/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11649 -&gt;
        Patchwork_103981v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_103981v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_103981v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/index.html</a></p>
      <h2>Participating hosts (39 -&gt; 40)</h2>
      <p>Additional (3): fi-blb-e6850 fi-icl-u2 bat-dg1-5 <br>
        Missing (2): bat-adlm-1 bat-jsl-2 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_103981v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@gem:
          <ul>
            <li>fi-blb-e6850: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@i915_selftest@live@gem.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>Unrelated and this test on blb is failing for a while
      <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/fi-blb-e6850.html">https://intel-gfx-ci.01.org/tree/drm-tip/fi-blb-e6850.html</a></p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:165245364733.9637.17282980752364055557@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_103981v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@fbdev@write:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@fbdev@write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap@basic:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_mmap@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                moz-do-not-send="true">i915#4083</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_fence_blits@basic:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@basic-brightness:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1155"
                moz-do-not-send="true">i915#1155</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_engines:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4418"
                moz-do-not-send="true">i915#4418</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gtt:</p>
          <ul>
            <li>fi-bdw-5557u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-bdw-5557u/igt@i915_selftest@live@gtt.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5685"
                moz-do-not-send="true">i915#5685</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                moz-do-not-send="true">i915#4215</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                moz-do-not-send="true">i915#4212</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@basic:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_busy@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4303"
                moz-do-not-send="true">i915#4303</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-fast:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                  moz-do-not-send="true">fdo#111827</a>) +8 similar
                issues</p>
            </li>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                  moz-do-not-send="true">fdo#111827</a>) +7 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109278"
                  moz-do-not-send="true">fdo#109278</a>) +2 similar
                issues</p>
            </li>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                  moz-do-not-send="true">i915#4103</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                  moz-do-not-send="true">i915#4213</a>) +1 similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4078"
                moz-do-not-send="true">i915#4078</a>) +23 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>fi-blb-e6850: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +39 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_page_flip:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4078"
                moz-do-not-send="true">i915#4078</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a>)</p>
            </li>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-mmap:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3301"
                  moz-do-not-send="true">i915#3301</a>)</p>
            </li>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4873"
                  moz-do-not-send="true">i915#4873</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@prime_vgem@basic-write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>bat-dg1-5: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg1-5/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                  moz-do-not-send="true">i915#5257</a>)</p>
            </li>
            <li>
              <p>fi-blb-e6850: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-blb-e6850/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2403"
                  moz-do-not-send="true">i915#2403</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s0@smem:</p>
          <ul>
            <li>{fi-ehl-2}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5122"
                moz-do-not-send="true">i915#5122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>{fi-jsl-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-hsw-4770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4785"
                moz-do-not-send="true">i915#4785</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@system-suspend-without-i915:</p>
          <ul>
            <li>{bat-dg2-9}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/bat-dg2-9/igt@i915_suspend@system-suspend-without-i915.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5763"
                moz-do-not-send="true">i915#5763</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-dg2-9/igt@i915_suspend@system-suspend-without-i915.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
          <ul>
            <li>{bat-adlp-6}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11649/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3576"
                moz-do-not-send="true">i915#3576</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103981v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11649 -&gt; Patchwork_103981v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11649: 41053495dd77aa5604144477ef59334a9492a169 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6472: c815c94f0ceb33ae852622538f0136cf44c5725d @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_103981v1: 41053495dd77aa5604144477ef59334a9492a169 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>4a604aeca9d8 drm/i915: individualize fences before adding</p>
    </blockquote>
  </body>
</html>

--------------xmm5wmDapJCtesVbYr2VSx5b--
