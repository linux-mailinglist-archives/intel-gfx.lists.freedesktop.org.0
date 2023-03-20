Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA58E6C1EC0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60B810E210;
	Mon, 20 Mar 2023 17:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302AB10E2D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679335167; x=1710871167;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to;
 bh=dXflrv7YeXjHxA4eLUsd7D71UjbxBSPpiYJmLpcW3h4=;
 b=KH5ZuwwUDUjXz2nsdofP0lIAqdr8ZMxVGhOgHbAbDf4qFVX+moyULEaY
 0c5Ldtm+IaXCS5GilMsTrOh28UooFWzN4CeyLCJ8/RR4TSArDGEPp5VeH
 fF7SHBOrwnRsAzoy6pkITyEg8lkwoSu+hpiXDnS39ElEirtxEu1Id0xSo
 THmJSM0KKS9HnQaW4/p1/xbQ2fqj+9xryA3qK72ke5j1xF3JfEC1Bto25
 tiwkK/pMVlLMx+xwoZHVsizvAD23d6p5ON3P+DtE1pnYG7GJW94YFOZxt
 eQvs+mWGvWF7MdulIj14IwiJPMyOGJGLKEDGUCH1X9B863Y4OGErmD+Ds A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327107603"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
 d="scan'208,217";a="327107603"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745481267"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
 d="scan'208,217";a="745481267"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.45.176])
 ([10.249.45.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:59:23 -0700
Content-Type: multipart/alternative;
 boundary="------------GZ8xEJf90yHBhF6qVXXFgzcZ"
Message-ID: <1f73f9a9-a0d4-1924-8442-393dc124803b@linux.intel.com>
Date: Mon, 20 Mar 2023 18:59:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
References: <20230217223350.1124232-1-jonathan.cavitt@intel.com>
 <167672803203.30490.9152332856602713040@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <167672803203.30490.9152332856602713040@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Drop_igt=5Fcs=5Ftlb_=28rev2=29?=
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------GZ8xEJf90yHBhF6qVXXFgzcZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2/18/2023 2:47 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/selftests: Drop igt_cs_tlb (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/114154/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12759_full -> Patchwork_114154v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_114154v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_114154v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html
>
>
>     Participating hosts (11 -> 11)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_114154v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@perf_pmu@cpu-hotplug:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@perf_pmu@cpu-hotplug.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk3/igt@perf_pmu@cpu-hotplug.html>
>
Unrelated failure.

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
>     {igt@gem_barrier_race@remote-request@rcs0}:
>
>       o {shard-tglu}: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-1/igt@gem_barrier_race@remote-request@rcs0.html>
>  *
>
>     {igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling}:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html>
>  *
>
>     {igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1}:
>
>       o {shard-tglu}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html>
>         +3 similar issues
>  *
>
>     {igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1}:
>
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1.html>
>         +4 similar issues
>
>
>     Known issues
>
> Here are the changes found in Patchwork_114154v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@device_reset@cold-reset-bound:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@device_reset@cold-reset-bound.html>
>         (i915#7701 <https://gitlab.freedesktop.org/drm/intel/issues/7701>)
>  *
>
>     igt@drm_read@invalid-buffer:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@drm_read@invalid-buffer.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +6
>         similar issues
>  *
>
>     igt@gem_ccs@suspend-resume:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ccs@suspend-resume.html>
>         (i915#5325 <https://gitlab.freedesktop.org/drm/intel/issues/5325>)
>  *
>
>     igt@gem_ctx_sseu@invalid-sseu:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ctx_sseu@invalid-sseu.html>
>         (i915#280 <https://gitlab.freedesktop.org/drm/intel/issues/280>)
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-tglu-10: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_params@rsvd2-dirt:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html>
>         (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283>)
>  *
>
>     igt@gem_exec_reloc@basic-scanout@vcs0:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html>
>         (i915#3639
>         <https://gitlab.freedesktop.org/drm/intel/issues/3639>) +4
>         similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_lmem_swapping@parallel-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>  *
>
>     igt@gem_media_vme:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_media_vme.html>
>         (i915#284 <https://gitlab.freedesktop.org/drm/intel/issues/284>)
>  *
>
>     igt@gem_mmap_gtt@coherency:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_mmap_gtt@coherency.html>
>         (fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656>)
>  *
>
>     igt@gem_pxp@create-regular-buffer:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_pxp@create-regular-buffer.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +3
>         similar issues
>  *
>
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>  *
>
>     igt@gem_userptr_blits@access-control:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_userptr_blits@access-control.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2
>         similar issues
>  *
>
>     igt@gem_userptr_blits@dmabuf-unsync:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gen7_exec_parse@basic-allocation:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen7_exec_parse@basic-allocation.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +4
>         similar issues
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>  *
>
>     igt@gen9_exec_parse@unaligned-jump:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +4
>         similar issues
>  *
>
>     igt@i915_hwmon@hwmon-read:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html>
>         (i915#7707 <https://gitlab.freedesktop.org/drm/intel/issues/7707>)
>  *
>
>     igt@i915_module_load@resize-bar:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_module_load@resize-bar.html>
>         (i915#6412 <https://gitlab.freedesktop.org/drm/intel/issues/6412>)
>  *
>
>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rpm@modeset-pc8-residency-stress:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html>
>         (fdo#109506 <https://bugs.freedesktop.org/show_bug.cgi?id=109506>)
>  *
>
>     igt@i915_pm_rps@engine-order:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl6/igt@i915_pm_rps@engine-order.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl4/igt@i915_pm_rps@engine-order.html>
>         (i915#6537 <https://gitlab.freedesktop.org/drm/intel/issues/6537>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>)
>  *
>
>     igt@i915_selftest@live@dmabuf:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl7/igt@i915_selftest@live@dmabuf.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl1/igt@i915_selftest@live@dmabuf.html>
>         (i915#7562 <https://gitlab.freedesktop.org/drm/intel/issues/7562>)
>  *
>
>     igt@kms_big_fb@4-tiled-addfb-size-overflow:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-overflow.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +6
>         similar issues
>  *
>
>     igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +2
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +4
>         similar issues
>  *
>
>     igt@kms_big_joiner@2x-modeset:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html>
>         (i915#2705 <https://gitlab.freedesktop.org/drm/intel/issues/2705>)
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#7651
>         <https://gitlab.freedesktop.org/drm/intel/issues/7651>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +13
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +5
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +1
>         similar issue
>  *
>
>     igt@kms_chamelium_color@ctm-0-25:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_color@ctm-0-25.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium_color@ctm-blue-to-red:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_color@ctm-blue-to-red.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +7
>         similar issues
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1
>         similar issue
>  *
>
>     igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
>
>       o shard-tglu-10: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html>
>         (i915#315
>         <https://gitlab.freedesktop.org/drm/intel/issues/315> /
>         i915#6946
>         <https://gitlab.freedesktop.org/drm/intel/issues/6946>) +3
>         similar issues
>  *
>
>     igt@kms_color@ctm-max@pipe-a-hdmi-a-1:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-snb1/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +33
>         similar issues
>  *
>
>     igt@kms_color@gamma:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_color@gamma.html>
>         (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>)
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html>
>         (fdo#109279
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109279> /
>         i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +6
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html>
>         (i915#3804 <https://gitlab.freedesktop.org/drm/intel/issues/3804>)
>  *
>
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +1
>         similar issue
>  *
>
>     igt@kms_flip@2x-flip-vs-suspend:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +3
>         similar issues
>  *
>
>     igt@kms_flip@dpms-off-confusion-interruptible:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@dpms-off-confusion-interruptible.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +32
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +32
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) +19
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +3
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@alpha-opaque-fb:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-opaque-fb.html>
>         (i915#7128
>         <https://gitlab.freedesktop.org/drm/intel/issues/7128> /
>         i915#7294 <https://gitlab.freedesktop.org/drm/intel/issues/7294>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         similar issues
>  *
>
>     igt@kms_prime@basic-crc-vgem:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_prime@basic-crc-vgem.html>
>         (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_basic:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_psr@psr2_basic.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +2
>         similar issues
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>  *
>
>     igt@kms_selftest@all-tests:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_selftest@all-tests.html>
>         (i915#6433 <https://gitlab.freedesktop.org/drm/intel/issues/6433>)
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#7651
>         <https://gitlab.freedesktop.org/drm/intel/issues/7651>) +19
>         similar issues
>  *
>
>     igt@kms_writeback@writeback-fb-id:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/intel/issues/2437>) +1
>         similar issue
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>  *
>
>     igt@v3d/v3d_perfmon@create-perfmon-exceed:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-perfmon-exceed.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315> /
>         i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2
>         similar issues
>  *
>
>     igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315> /
>         i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>)
>  *
>
>     igt@vc4/vc4_perfmon@create-two-perfmon:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@vc4/vc4_perfmon@create-two-perfmon.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +6
>         similar issues
>  *
>
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +1
>         similar issue
>
>
>         Possible fixes
>
>  *
>
>     igt@drm_fdinfo@virtual-idle:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/intel/issues/7742>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html>
>  *
>
>     igt@fbdev@unaligned-write:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@fbdev@unaligned-write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@fbdev@unaligned-write.html>
>  *
>
>     igt@gem_ctx_persistence@engines-hang@bcs0:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html>
>         (i915#6252
>         <https://gitlab.freedesktop.org/drm/intel/issues/6252>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html>
>  *
>
>     igt@gem_eio@in-flight-suspend:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@gem_eio@in-flight-suspend.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-2/igt@gem_eio@in-flight-suspend.html>
>         +2 similar issues
>  *
>
>     igt@gem_exec_fair@basic-none-vip@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html>
>  *
>
>     igt@gem_exec_params@rel-constants-invalid-rel-gen5:
>
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html>
>         +8 similar issues
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@cursor_mmap_cpu:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html>
>         +1 similar issue
>  *
>
>     igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html>
>         +3 similar issues
>  *
>
>     igt@kms_vblank@pipe-b-ts-continuation-idle:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_vblank@pipe-b-ts-continuation-idle.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html>
>         +15 similar issues
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12759 -> Patchwork_114154v2
>
> CI-20190529: 20190529
> CI_DRM_12759: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7165: 509e7e63c6377d0fe77d1bd209857fb191f4a84c @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_114154v2: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
--------------GZ8xEJf90yHBhF6qVXXFgzcZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/18/2023 2:47 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:167672803203.30490.9152332856602713040@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/selftests: Drop igt_cs_tlb (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/114154/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/114154/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12759_full -&gt;
        Patchwork_114154v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_114154v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_114154v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html</a></p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_114154v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@perf_pmu@cpu-hotplug:
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@perf_pmu@cpu-hotplug.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk3/igt@perf_pmu@cpu-hotplug.html"
                moz-do-not-send="true">TIMEOUT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Unrelated failure. <br>
    </p>
    <blockquote type="cite"
      cite="mid:167672803203.30490.9152332856602713040@emeril.freedesktop.org">
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
          <p>{igt@gem_barrier_race@remote-request@rcs0}:</p>
          <ul>
            <li>{shard-tglu}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-1/igt@gem_barrier_race@remote-request@rcs0.html"
                moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling}:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1}:</p>
          <ul>
            <li>{shard-tglu}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1}:</p>
          <ul>
            <li>{shard-rkl}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1.html"
                moz-do-not-send="true">SKIP</a> +4 similar issues</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_114154v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@device_reset@cold-reset-bound:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@device_reset@cold-reset-bound.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7701"
                moz-do-not-send="true">i915#7701</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_read@invalid-buffer:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@drm_read@invalid-buffer.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@suspend-resume:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ccs@suspend-resume.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5325"
                moz-do-not-send="true">i915#5325</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@invalid-sseu:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ctx_sseu@invalid-sseu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/280"
                moz-do-not-send="true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@rsvd2-dirt:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109283"
                moz-do-not-send="true">fdo#109283</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-scanout@vcs0:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3639"
                moz-do-not-send="true">i915#3639</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_lmem_swapping@parallel-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_media_vme:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_media_vme.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/284"
                moz-do-not-send="true">i915#284</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@coherency:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_mmap_gtt@coherency.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111656"
                moz-do-not-send="true">fdo#111656</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@create-regular-buffer:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_pxp@create-regular-buffer.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4270"
                moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@access-control:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_userptr_blits@access-control.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@dmabuf-unsync:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-allocation:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen7_exec_parse@basic-allocation.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109289"
                moz-do-not-send="true">fdo#109289</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk4/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@unaligned-jump:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2527"
                moz-do-not-send="true">i915#2527</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2856"
                moz-do-not-send="true">i915#2856</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_hwmon@hwmon-read:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7707"
                moz-do-not-send="true">i915#7707</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@resize-bar:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_module_load@resize-bar.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6412"
                moz-do-not-send="true">i915#6412</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111644"
                moz-do-not-send="true">fdo#111644</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111644"
                moz-do-not-send="true">fdo#111644</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109506"
                moz-do-not-send="true">fdo#109506</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@engine-order:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl6/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl4/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6537"
                moz-do-not-send="true">i915#6537</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@dmabuf:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl7/igt@i915_selftest@live@dmabuf.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl1/igt@i915_selftest@live@dmabuf.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7562"
                moz-do-not-send="true">i915#7562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-overflow.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111614"
                moz-do-not-send="true">fdo#111614</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_joiner@2x-modeset:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2705"
                moz-do-not-send="true">i915#2705</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7651"
                moz-do-not-send="true">i915#7651</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a>) +13 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-0-25:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_color@ctm-0-25.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_color@ctm-blue-to-red.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/315"
                moz-do-not-send="true">i915#315</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6946"
                moz-do-not-send="true">i915#6946</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@ctm-max@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-snb1/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +33 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@gamma:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_color@gamma.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3546"
                moz-do-not-send="true">i915#3546</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109279"
                moz-do-not-send="true">fdo#109279</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3804"
                moz-do-not-send="true">i915#3804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-suspend:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@dpms-off-confusion-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2587"
                moz-do-not-send="true">i915#2587</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109280"
                moz-do-not-send="true">fdo#109280</a>) +32 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110189"
                moz-do-not-send="true">fdo#110189</a>) +32 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>) +19 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-opaque-fb.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7128"
                moz-do-not-send="true">i915#7128</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7294"
                moz-do-not-send="true">i915#7294</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5176"
                moz-do-not-send="true">i915#5176</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-crc-vgem:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_prime@basic-crc-vgem.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6524"
                moz-do-not-send="true">i915#6524</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_su@page_flip-p010.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109642"
                moz-do-not-send="true">fdo#109642</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_basic:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_psr@psr2_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110189"
                moz-do-not-send="true">fdo#110189</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5289"
                moz-do-not-send="true">i915#5289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_selftest@all-tests:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_selftest@all-tests.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6433"
                moz-do-not-send="true">i915#6433</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-idle-hang:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7651"
                moz-do-not-send="true">i915#7651</a>) +19 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2437"
                moz-do-not-send="true">i915#2437</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@prime_vgem@basic-userptr.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3301"
                moz-do-not-send="true">i915#3301</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_perfmon@create-perfmon-exceed:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-perfmon-exceed.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109315"
                moz-do-not-send="true">fdo#109315</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_perfmon@get-values-invalid-pointer:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109315"
                moz-do-not-send="true">fdo#109315</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2575"
                moz-do-not-send="true">i915#2575</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@vc4/vc4_perfmon@create-two-perfmon.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@virtual-idle:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7742"
                moz-do-not-send="true">i915#7742</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@unaligned-write:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@fbdev@unaligned-write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@fbdev@unaligned-write.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6252"
                moz-do-not-send="true">i915#6252</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-suspend:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@gem_eio@in-flight-suspend.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=103375"
                moz-do-not-send="true">fdo#103375</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-2/igt@gem_eio@in-flight-suspend.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@rel-constants-invalid-rel-gen5:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html"
                moz-do-not-send="true">DMESG-WARN</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html"
                moz-do-not-send="true">PASS</a> +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_mmap_cpu:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-b-ts-continuation-idle:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_vblank@pipe-b-ts-continuation-idle.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html"
                moz-do-not-send="true">PASS</a> +15 similar issues</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12759 -&gt; Patchwork_114154v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12759: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7165: 509e7e63c6377d0fe77d1bd209857fb191f4a84c @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_114154v2: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
    </blockquote>
  </body>
</html>

--------------GZ8xEJf90yHBhF6qVXXFgzcZ--
