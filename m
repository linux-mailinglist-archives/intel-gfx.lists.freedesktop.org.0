Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAA07D8E6D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 08:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6914210E92A;
	Fri, 27 Oct 2023 06:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9215810E926
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 06:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698386820; x=1729922820;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=0mXiFnu9blfj/zhEIPBIwtvxYW63ZUDxJzJHJGRd0ZM=;
 b=ElUU7WRpZWBvYj6duhQjl0QvPjHJaLREHxmkqliOoQ9fC6vj9ieiMPey
 84hj0SPow+vavHGA8PY4kf/t3gcQcnRIk+cwv168/IVte2o/E5Wb+a/hW
 lb4855odRwq8Xms5IX2MYdWjOaxZxyUqhgeNKTReVBXw+5w62AUPXzHNG
 02qrTRdtCw2eIfFG0KT/Alf1qh2d2ifIIb+MXhJjphGldYQYQwMlfMau9
 OpJI1U2nWrz6yzMi5Vaxl9T8bdg3vZSNBn/wjenp9ipUsGJ6w2X4mNPRi
 pNvxONhkMkoYPbG9b5hEsrOrOl3RCsAPGPJhbqMgakWaXHj/8hKpIHR1a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384920856"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
 d="scan'208,217";a="384920856"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 23:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="876224053"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
 d="scan'208,217";a="876224053"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.37])
 ([10.213.18.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 23:06:58 -0700
Content-Type: multipart/alternative;
 boundary="------------FoLI42b2Q5Pi0adPtpGmTSjg"
Message-ID: <358bb42b-21cd-496e-beb7-003687fb9b90@intel.com>
Date: Fri, 27 Oct 2023 08:06:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
 <169838489861.19710.2650466488058809001@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169838489861.19710.2650466488058809001@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F16018031267_/_Wa=5F16018063123?=
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
--------------FoLI42b2Q5Pi0adPtpGmTSjg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 27.10.2023 07:34, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Apply Wa_16018031267 / Wa_16018063123
> *URL:* 	https://patchwork.freedesktop.org/series/125650/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13799 -> Patchwork_125650v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_125650v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_125650v1, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html
>
>
>     Participating hosts (36 -> 36)
>
> Additional (3): bat-dg2-8 bat-dg2-9 fi-bsw-n3050
> Missing (3): bat-adlp-11 fi-snb-2520m bat-dg1-5
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_125650v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@hangcheck:
>       o fi-ivb-3770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html>
>

This is known regression:
https://gitlab.freedesktop.org/drm/intel/-/issues/9523

Requested re-test.

Regards
Andrzej

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_125650v1 that come from known 
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
>     igt@gem_exec_suspend@basic-s3@lmem0:
>
>       o bat-atsm-1: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html>
>         (i915#8841
>         <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +4
>         other tests dmesg-warn
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o fi-bsw-n3050: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +18
>         other tests skip
>  *
>
>     igt@gem_mmap@basic:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>
>  *
>
>     igt@gem_mmap_gtt@basic:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         other tests skip
>
>  *
>
>     igt@gem_render_tiled_blits@basic:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         other test skip
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_tiled_pread_basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         other test skip
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>      o
>
>         bat-atsm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>
>  *
>
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>  *
>
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/intel/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/intel/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>  *
>
>     igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6
>         other tests skip
>
>  *
>
>     igt@kms_addfb_basic@tile-pitch-mismatch:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212> /
>         i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212> /
>         i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213> /
>         i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1
>         other test skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213> /
>         i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1
>         other test skip
>
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>
>  *
>
>     igt@kms_hdmi_inject@inject-audio:
>
>       o fi-bsw-n3050: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html>
>         (IGT#3
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3>)
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc:
>
>       o bat-atsm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>         (i915#1836 <https://gitlab.freedesktop.org/drm/intel/issues/1836>)
>  *
>
>     igt@kms_psr@cursor_plane_move:
>
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>
>  *
>
>     igt@prime_vgem@basic-write:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>
>         Possible fixes
>
>   * igt@i915_selftest@live@gem_contexts:
>       o bat-atsm-1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html>
>         (i915#9174
>         <https://gitlab.freedesktop.org/drm/intel/issues/9174>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * IGT: IGT_7559 -> IGTPW_10075
>   * Linux: CI_DRM_13799 -> Patchwork_125650v1
>
> CI-20190529: 20190529
> CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGTPW_10075: 
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html
> IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_125650v1: 76ad050e075bcd86919ed755602ded34c0d9e276 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 1322bd829384 drm/i915: Set copy engine arbitration for Wa_16018031267 
> / Wa_16018063123
> 2212709f247c drm/i915/gt: add selftest to exercise WABB
> 4ec6d754d01b drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
> 2627cd7e0b47 drm/i915: Reserve some kernel space per vm
>

--------------FoLI42b2Q5Pi0adPtpGmTSjg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font face="monospace">Hi,</font><br>
    <br>
    <div class="moz-cite-prefix">On 27.10.2023 07:34, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:169838489861.19710.2650466488058809001@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Apply Wa_16018031267 / Wa_16018063123</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/125650/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/125650/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13799 -&gt;
        Patchwork_125650v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_125650v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_125650v1, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:lgci.bug.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/index.html</a></p>
      <h2>Participating hosts (36 -&gt; 36)</h2>
      <p>Additional (3): bat-dg2-8 bat-dg2-9 fi-bsw-n3050 <br>
        Missing (3): bat-adlp-11 fi-snb-2520m bat-dg1-5 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_125650v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@hangcheck:
          <ul>
            <li>fi-ivb-3770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    This is known regression:<br>
    <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/9523">https://gitlab.freedesktop.org/drm/intel/-/issues/9523</a><br>
    <br>
    Requested re-test.<br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
cite="mid:169838489861.19710.2650466488058809001@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_125650v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
          <ul>
            <li>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8841"
                moz-do-not-send="true">i915#8841</a>) +4 other tests
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>fi-bsw-n3050: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +18 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap@basic:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_mmap@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                  moz-do-not-send="true">i915#4083</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_mmap@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                  moz-do-not-send="true">i915#4083</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +2 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +2 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_tiled_blits@basic:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                  moz-do-not-send="true">i915#6621</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                  moz-do-not-send="true">i915#6621</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>
              <p>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6645"
                  moz-do-not-send="true">i915#6645</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6645"
                  moz-do-not-send="true">i915#6645</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                  moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                  moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a>) +6 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a>) +6 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                  moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                  moz-do-not-send="true">i915#4213</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                  moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                  moz-do-not-send="true">i915#4213</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>) +1 other test
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5274"
                  moz-do-not-send="true">i915#5274</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5274"
                  moz-do-not-send="true">i915#5274</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdmi_inject@inject-audio:</p>
          <ul>
            <li>fi-bsw-n3050: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3"
                moz-do-not-send="true">IGT#3</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
          <ul>
            <li>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1836"
                moz-do-not-send="true">i915#1836</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_plane_move:</p>
          <ul>
            <li>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                  moz-do-not-send="true">i915#4098</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                  moz-do-not-send="true">i915#4098</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-mmap:</p>
          <ul>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +1 other test
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-9/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                  moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-dg2-8/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                  moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@i915_selftest@live@gem_contexts:
          <ul>
            <li>bat-atsm-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/9174"
                moz-do-not-send="true">i915#9174</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>IGT: IGT_7559 -&gt; IGTPW_10075</li>
        <li>Linux: CI_DRM_13799 -&gt; Patchwork_125650v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGTPW_10075:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html</a><br>
        IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_125650v1: 76ad050e075bcd86919ed755602ded34c0d9e276 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>1322bd829384 drm/i915: Set copy engine arbitration for
        Wa_16018031267 / Wa_16018063123<br>
        2212709f247c drm/i915/gt: add selftest to exercise WABB<br>
        4ec6d754d01b drm/i915: Add WABB blit for Wa_16018031267 /
        Wa_16018063123<br>
        2627cd7e0b47 drm/i915: Reserve some kernel space per vm</p>
    </blockquote>
    <br>
  </body>
</html>

--------------FoLI42b2Q5Pi0adPtpGmTSjg--
