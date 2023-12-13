Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADAC8118D8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 17:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B37210E27E;
	Wed, 13 Dec 2023 16:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AA110E27E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 16:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702483997; x=1734019997;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xbi7AUytJkDU/1afqBkIxuFHgEekgwPwzUatXtXtLtI=;
 b=QwtqlFW8ULr/c7IfeaE0s7LA3Ft0jUBiW95UYnSup6N1w2PEqfG7PnCf
 48yMV/3TETw5GWoi/MCkv01NKuPuMwpjqV79zkaC4aQxJADozrWUI1NT3
 tuxexZT6LMFO0AW4pIJCAWlHIllfk9pVy6Xr2gUK4eSY6vibWE6MGzMdr
 iKWX0rLQU6QjuVwDpNudbg8qY9KMXVDbqsuWjpzOC0yp1EU2j+MFra4Mz
 t/IC3IIFBcIh1Uzot/f4FiWdj2gacpUcNt/xDdJzEB+a8J4ynaoga5QPK
 RzhZJ8FPzWuwu0AJmbfxTFeRmhy16nyTTvhITHvGeQDFmCvF942UG6lz+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="392162775"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="392162775"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:13:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="723711780"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="723711780"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.31])
 ([10.213.24.31])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:13:14 -0800
Message-ID: <8be9ac53-0945-4371-91f2-40deed57fd11@intel.com>
Date: Wed, 13 Dec 2023 17:13:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IMOiIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IChz?=
 =?UTF-8?Q?tolen=29_memory_region_related_fixes?=
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <170243147264.10260.8557231803342985702@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <170243147264.10260.8557231803342985702@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 13.12.2023 02:37, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: (stolen) memory region related fixes
> *URL:*	https://patchwork.freedesktop.org/series/127721/ 
> <https://patchwork.freedesktop.org/series/127721/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127721v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_127721v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_127721v1, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html
> 
> 
>     Participating hosts (31 -> 33)
> 
> Additional (4): bat-dg2-8 bat-dg2-9 bat-mtlp-8 fi-pnv-d510
> Missing (2): bat-adlp-11 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_127721v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_module_load@load:
> 
>       o bat-mtlp-8: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-mtlp-8/igt@i915_module_load@load.html>


This is due to overlapping initial fb's vma with GuC reserved area on 
MTL, see ggtt_reserve_guc_top.

My dirty quick_fix proposed:
@@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
         if (IS_ERR(vma))
                 goto err_obj;

+       if (base + size > GUC_GGTT_TOP)
+               base = min(base, GUC_GGTT_TOP) - size;
+
         pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
         if (HAS_GMCH(i915))
                 pinctl |= PIN_MAPPABLE;


Regards
Andrzej


>   *
> 
>     igt@i915_selftest@live@gem_contexts:
> 
>       o bat-atsm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_127721v1 that come from known 
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
>     igt@gem_exec_suspend@basic-s0@smem:
> 
>       o bat-dg2-9: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html> (i915#9275 <https://gitlab.freedesktop.org/drm/intel/issues/9275>)
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-pnv-d510: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +28 other tests skip
>   *
> 
>     igt@gem_mmap@basic:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
> 
>   *
> 
>     igt@gem_mmap_gtt@basic:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 other tests skip
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 other tests skip
> 
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 other test skip
>   *
> 
>     igt@gem_tiled_pread_basic:
> 
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@gem_tiled_pread_basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 other test skip
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
> 
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html> (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>   *
> 
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
> 
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
> 
>   *
> 
>     igt@kms_addfb_basic@framebuffer-vs-set-tiling:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6 other tests skip
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6 other tests skip
> 
>   *
> 
>     igt@kms_addfb_basic@tile-pitch-mismatch:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1 other test skip
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1 other test skip
> 
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>   *
> 
>     igt@kms_force_connector_basic@prune-stale-modes:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html> (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html> (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
> 
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o fi-ivb-3770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>   *
> 
>     igt@kms_pm_backlight@basic-brightness:
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
> 
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
>   *
> 
>     igt@prime_vgem@basic-fence-flip:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
> 
>   *
> 
>     igt@prime_vgem@basic-fence-mmap:
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 other test skip
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 other test skip
> 
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o
> 
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-9/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
> 
>       o
> 
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-dg2-8/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
> 
> 
>         Possible fixes
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>       o fi-glk-j4005: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14010/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_14010 -> Patchwork_127721v1
> 
> CI-20190529: 20190529
> CI_DRM_14010: b4182ec1538e8cebf630083ec4296bed0061d594 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_127721v1: b4182ec1538e8cebf630083ec4296bed0061d594 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 499717049180 drm/i915: Simplify intel_initial_plane_config() calling 
> convention
> 3f12c223d707 drm/i915: Split the smem and lmem plane readout apart
> 2d21369e26a3 drm/i915: s/phys_base/dma_addr/
> be622e53615d drm/i915: Fix MTL initial plane readout
> 8ad9926fb883 drm/i915: Fix region start during initial plane readout
> 55b4a59fce27 drm/i915: Fix PTE decode during initial plane readout
> db38b8a8227c drm/i915: Rename the DSM/GSM registers
> f7b2179e3b69 drm/i915: Disable the "binder"
> 77e7c3085969 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
> ef59e22db9f6 drm/i915: Remove ad-hoc lmem/stolen debugs
> b001bcb6a48f drm/i915: Print memory region info during probe
> 5b54e278890d drm/i915: Use struct resource for memory region IO as well
> 

