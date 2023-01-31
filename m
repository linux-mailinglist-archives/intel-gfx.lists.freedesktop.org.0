Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0566A682C84
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 13:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D365510E32A;
	Tue, 31 Jan 2023 12:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C25210E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 12:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675167962; x=1706703962;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gXVrHdMZNJgfvtVxpc/WDIAauGwBtgDc+ZM2Ht/mI50=;
 b=fO2c6r4fxkMOAfdlV0JYBOwaA0PQg3sX2ThGMbhMcKhNjFJRjQyWD/ep
 Jru/y+L0ZUeByJeO3y0GogcgfSsWzmimt+scEmP3CF+EyddQUSDGja+62
 CV9vWL3FG10lFGzBpz8tqAZan4Kb/bP7m2YlLfypTfeJVvGRu+o8G8c2H
 x/HlkMh6nYVd+MdFk3Y23yzgkm0G+9+37v2eFMzaR7Goq51tuHghfmC0B
 LeATY6hlN3A2L6xSu0dwJzLYz9AAC+ApAr5my2IF+wQ/MBpTu1y/lgqQS
 P1VSj2ByhbIKMeRS8apa+yn4CyH77IbOZcPn+j5Bzv8cK4u4YsRRv/ccz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390188549"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="390188549"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 04:26:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="788433080"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788433080"
Received: from rdorchar-mobl.ger.corp.intel.com (HELO [10.213.217.6])
 ([10.213.217.6])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 04:26:00 -0800
Message-ID: <888b0008-0d15-36cf-c688-f014e17a9438@linux.intel.com>
Date: Tue, 31 Jan 2023 12:25:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>
References: <20230128195907.1837-1-michal.wajdeczko@intel.com>
 <167494387386.4075.4893675892579837266@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <167494387386.4075.4893675892579837266@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgR3VD?=
 =?utf-8?q?_oriented_print_macros_=28rev3=29?=
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


On 28/01/2023 22:11, Patchwork wrote:
> *Patch Details*
> *Series:*	GuC oriented print macros (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/113162/ 
> <https://patchwork.freedesktop.org/series/113162/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12658_full -> Patchwork_113162v3_full
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.

Pushed to drm-intel-gt-next, thanks for the patches and reviews!

Regards,

Tvrtko

> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/index.html
> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_113162v3_full:
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
>   *
> 
>     igt@gem_exec_suspend@basic-s3-devices@smem:
> 
>       o {shard-rkl}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices@smem.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-3/igt@gem_exec_suspend@basic-s3-devices@smem.html>
>   *
> 
>     igt@gem_exec_whisper@basic-fds-priority-all:
> 
>       o {shard-tglu-10}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-tglu-10/igt@gem_exec_whisper@basic-fds-priority-all.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_113162v3_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@drm_fdinfo@idle@rcs0:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html> (i915#7742 <https://gitlab.freedesktop.org/drm/intel/issues/7742>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html>
>   *
> 
>     igt@fbdev@eof:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-1/igt@fbdev@eof.html> (i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@fbdev@eof.html> +1 similar issue
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o {shard-rkl}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-6/igt@gem_exec_capture@pi@vcs0.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-4/igt@gem_exec_capture@pi@vcs0.html>
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> +6 similar issues
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html> +3 similar issues
>   *
> 
>     igt@gem_sync@basic-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk4/igt@gem_sync@basic-all.html> (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-glk1/igt@gem_sync@basic-all.html>
>   *
> 
>     igt@gen9_exec_parse@unaligned-access:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html> +1 similar issue
>   *
> 
>     igt@i915_pipe_stress@stress-xrgb8888-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html>
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html> (i915#3361 <https://gitlab.freedesktop.org/drm/intel/issues/3361>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o {shard-rkl}: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_dp_aux_dev:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@kms_dp_aux_dev.html> (i915#1257 <https://gitlab.freedesktop.org/drm/intel/issues/1257>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@kms_dp_aux_dev.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html> (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html> +21 similar issues
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@kms_psr@primary_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html> +1 similar issue
>   *
> 
>     igt@kms_universal_plane@universal-plane-pipe-a-functional:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-functional.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html>
>   *
> 
>     igt@kms_vblank@pipe-b-query-idle:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@kms_vblank@pipe-b-query-idle.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html> +23 similar issues
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/intel/issues/2434>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-5/igt@perf@mi-rpc.html>
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113162v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12658 -> Patchwork_113162v3
> 
> CI-20190529: 20190529
> CI_DRM_12658: a9e72f4e0baf2e3e306da0063f98099044d85285 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7141: a978df7912acda18eada1b1d2ae4b438ed3e940b @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_113162v3: a9e72f4e0baf2e3e306da0063f98099044d85285 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
