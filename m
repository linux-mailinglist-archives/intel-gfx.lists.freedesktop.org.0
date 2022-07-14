Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4302575086
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 16:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F019F10F07E;
	Thu, 14 Jul 2022 14:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A126710F07E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657808048; x=1689344048;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=eZ4Ep0Y8bE5nhToqRAfug7bmGXgSmKDHkxq5/qsDUNU=;
 b=NlOeEDOsu/rQFq0B7fLx+RUQBsAhlC1PlwxyYselqcaNdSLRS5GeOvzh
 ggiCh2Ar1JrkROs/WHMlEWfqozo82PbLFQXqw1mwyIVI1RAXwtNu5mCyt
 Bxgc37KjBBfNBOgYOV7ux9Wx8lLWaeDL0zVpBtAB5MTlErW85t7NeheIz
 kkTMmsvMyEdP8xYhnb5X3rci+XqK42IPLvG3Ccv6qLZZcXa6bq8ibqovS
 pAcmaTO08V9sTDjDDccS+UGud2PTAzGL3UZpOO+m6oTDO1tt1NUlYdaIz
 h8ROaZeVMksC5m1Ey86mcuqrvCW/Dl5RDLsX2C3ryEnTblMKuwxYix01C g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="286264154"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="286264154"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 07:14:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="653887265"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.176])
 ([10.213.19.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 07:14:05 -0700
Message-ID: <563631e7-140c-f756-c882-cf027b4f0f00@intel.com>
Date: Thu, 14 Jul 2022 16:14:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220713152019.343432-1-andrzej.hajda@intel.com>
 <165779535816.7510.7654882876245034083@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165779535816.7510.7654882876245034083@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_stop_HPD_workers_before_display_driver_unregis?=
 =?utf-8?q?ter_=28rev6=29?=
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

On 14.07.2022 12:42, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/display: stop HPD workers before display driver 
> unregister (rev6)
> *URL:*	https://patchwork.freedesktop.org/series/105557/ 
> <https://patchwork.freedesktop.org/series/105557/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11877_full -> Patchwork_105557v6_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105557v6_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105557v6_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 12)
> 
> Missing (1): shard-dg1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_105557v6_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_fair@basic-deadline:
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>


This is known issue, recently reopened, obviously unrelated:
https://gitlab.freedesktop.org/drm/intel/-/issues/2846

Regards
Andrzej


> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105557v6_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_busy@close-race:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-snb4/igt@gem_busy@close-race.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-snb2/igt@gem_busy@close-race.html>
>         (i915#6234 <https://gitlab.freedesktop.org/drm/intel/issues/6234>)
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb7/igt@gem_eio@kms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb3/igt@gem_eio@kms.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_endless@dispatch@rcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl7/igt@gem_exec_endless@dispatch@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl3/igt@gem_exec_endless@dispatch@rcs0.html>
>         (i915#3778 <https://gitlab.freedesktop.org/drm/intel/issues/3778>)
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
> 
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl5/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl2/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-kbl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl4/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@create-regular-buffer:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@gem_pxp@create-regular-buffer.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3323 <https://gitlab.freedesktop.org/drm/intel/issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl5/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen7_exec_parse@bitmasks:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@gen7_exec_parse@bitmasks.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         similar issue
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl6/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl3/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>   *
> 
>     igt@i915_module_load@load:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@i915_module_load@load.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#6227 <https://gitlab.freedesktop.org/drm/intel/issues/6227>)
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb8/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb4/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>
>         / i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@i915_suspend@forcewake.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl7/igt@i915_suspend@forcewake.html>
>         (i915#4817 <https://gitlab.freedesktop.org/drm/intel/issues/4817>)
>   *
> 
>     igt@i915_suspend@sysfs-reader:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl8/igt@i915_suspend@sysfs-reader.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl7/igt@i915_suspend@sysfs-reader.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1
>         similar issue
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +16
>         similar issues
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-90:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html>
>         (i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) +2
>         similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +4
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +9
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +2
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-0-75:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-0-75.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl5/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +20
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_content_protection@dp-mst-type-1.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/intel/issues/3116> /
>         i915#3299 <https://gitlab.freedesktop.org/drm/intel/issues/3299>)
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         (i915#72 <https://gitlab.freedesktop.org/drm/intel/issues/72>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-panning-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_flip@2x-flip-vs-panning-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>
>         / i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +1
>         similar issue
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +6
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#2546 <https://gitlab.freedesktop.org/drm/intel/issues/2546>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +9
>         similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +279
>         similar issues
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         similar issues
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +4
>         similar issues
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_cpu:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         (i915#132 <https://gitlab.freedesktop.org/drm/intel/issues/132>
>         / i915#3467 <https://gitlab.freedesktop.org/drm/intel/issues/3467>)
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +1
>         similar issue
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>   *
> 
>     igt@kms_setmode@clone-exclusive-crtc:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@kms_setmode@clone-exclusive-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>   *
> 
>     igt@kms_vblank@pipe-d-wait-idle:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl1/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl5/igt@kms_writeback@writeback-pixel-formats.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@nouveau_crc@pipe-c-source-outp-inactive:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@nouveau_crc@pipe-c-source-outp-inactive.html>
>         (i915#2530 <https://gitlab.freedesktop.org/drm/intel/issues/2530>)
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl6/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>   *
> 
>     igt@prime_nv_api@i915_nv_double_export:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@prime_nv_api@i915_nv_double_export.html>
>         (fdo#109291
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109291>) +1
>         similar issue
>   *
> 
>     igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +72
>         similar issues
>   *
> 
>     igt@sysfs_clients@recycle:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb7/igt@sysfs_clients@recycle.html>
>         (i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@sema-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@sysfs_clients@sema-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@split-50:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl2/igt@sysfs_clients@split-50.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +2
>         similar issues
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglu-5/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglu-6/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         +7 similar issues
>   *
> 
>     igt@gem_exec_schedule@semaphore-power:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html>
>         (fdo#110254
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110254>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html>
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>   *
> 
>     igt@gem_mmap_gtt@coherency:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@gem_mmap_gtt@coherency.html>
>         (fdo#111656
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111656>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@gem_mmap_gtt@coherency.html>
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         +9 similar issues
>   *
> 
>     igt@gen9_exec_parse@batch-without-end:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@gen9_exec_parse@batch-without-end.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html>
>         +4 similar issues
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@i915_pm_dc@dc6-psr.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html>
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o {shard-tglu}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglu-4/igt@i915_selftest@live@gt_pm.html>
>         (i915#3987
>         <https://gitlab.freedesktop.org/drm/intel/issues/3987>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglu-2/igt@i915_selftest@live@gt_pm.html>
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html>
>         +2 similar issues
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html>
>   *
> 
>     igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         (i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         +8 similar issues
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558 <https://gitlab.freedesktop.org/drm/intel/issues/3558>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html>
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html>
>         +5 similar issues
>   *
> 
>     igt@kms_properties@plane-properties-legacy:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html>
>   *
> 
>     igt@kms_psr@primary_page_flip:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_psr@primary_page_flip.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_psr@primary_page_flip.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr@psr2_suspend:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb8/igt@kms_psr@psr2_suspend.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb2/igt@kms_psr@psr2_suspend.html>
>         +2 similar issues
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html>
>         +9 similar issues
>   *
> 
>     igt@perf@blocking:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl9/igt@perf@blocking.html>
>         (i915#1542
>         <https://gitlab.freedesktop.org/drm/intel/issues/1542>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl7/igt@perf@blocking.html>
>   *
> 
>     igt@perf@gen12-mi-rpc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@perf@gen12-mi-rpc.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-2/igt@perf@gen12-mi-rpc.html>
>   *
> 
>     igt@prime_vgem@basic-fence-read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@prime_vgem@basic-fence-read.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@prime_vgem@basic-fence-read.html>
>         +1 similar issue
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-2/igt@prime_vgem@coherency-gtt.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117
>         <https://gitlab.freedesktop.org/drm/intel/issues/6117>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb5/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2849
>         <https://gitlab.freedesktop.org/drm/intel/issues/2849>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-tglb8/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl4/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#5939
>         <https://gitlab.freedesktop.org/drm/intel/issues/5939>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068>
>         / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-skl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl4/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl5/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl10/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-skl2/igt@runner@aborted.html>)
>         (i915#2029
>         <https://gitlab.freedesktop.org/drm/intel/issues/2029> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v6/shard-kbl7/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11877 -> Patchwork_105557v6
> 
> CI-20190529: 20190529
> CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105557v6: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

