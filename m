Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074B04571A2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BBF6EB17;
	Fri, 19 Nov 2021 15:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E96F6EB08
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 15:30:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="221648954"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="221648954"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:30:42 -0800
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="455467954"
Received: from wchopkin-mobl1.ger.corp.intel.com (HELO [10.252.22.53])
 ([10.252.22.53])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:30:41 -0800
Message-ID: <7a1a78c3-0483-6374-3bc0-ebe9089e8a17@intel.com>
Date: Fri, 19 Nov 2021 15:30:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211117142024.1043017-1-matthew.auld@intel.com>
 <163733001993.2301.1340578809389194598@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163733001993.2301.1340578809389194598@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/6=5D_drm/i915=3A_move_the_pre=5Fpin?=
 =?utf-8?q?_earlier_=28rev3=29?=
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

On 19/11/2021 13:53, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/6] drm/i915: move the pre_pin 
> earlier (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/97026/ 
> <https://patchwork.freedesktop.org/series/97026/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10904_full -> Patchwork_21637_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21637_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21637_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (11 -> 10)
> 
> Missing (1): shard-rkl
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_21637_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_ctx_shared@q-smoketest@vecs0:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb2/igt@gem_ctx_shared@q-smoketest@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb7/igt@gem_ctx_shared@q-smoketest@vecs0.html>
> 

Looks like machine is killed by the runner(?), for some reason. Fairly 
sure this is not related. For the most part this series should only 
really impact some gen6/7 platforms.


> 
>     Known issues
> 
> Here are the changes found in Patchwork_21637_full that come from known 
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
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         ([i915#2369] / [i915#3063] / [i915#3648])
>   *
> 
>     igt@gem_exec_capture@pi@bcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl4/igt@gem_exec_capture@pi@bcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl6/igt@gem_exec_capture@pi@bcs0.html>
>         ([i915#2369])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([fdo#109271])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842])
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842])
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb5/igt@gem_exec_suspend@basic-s3.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb7/igt@gem_exec_suspend@basic-s3.html>
>         ([i915#456])
>   *
> 
>     igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html>
>         ([i915#768])
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
>   *
> 
>     igt@gem_workarounds@suspend-resume-context:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-apl3/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl8/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180]) +4 similar issues
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#2856])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#2856])
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-glk4/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#1436] / [i915#716])
> 
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb1/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb7/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         ([fdo#109271]) +20 similar issues
>   *
> 
>     igt@i915_pm_rpm@system-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl1/igt@i915_pm_rpm@system-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl2/igt@i915_pm_rpm@system-suspend.html>
>         ([i915#151])
>   *
> 
>     igt@kms_async_flips@crc:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl6/igt@kms_async_flips@crc.html>
>         ([i915#4272])
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-90:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#111614])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614])
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([i915#3743]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html>
>         ([fdo#111615])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886])
> 
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689])
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html>
>         ([fdo#109271]) +21 similar issues
>   *
> 
>     igt@kms_cdclk@plane-scaling:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_cdclk@plane-scaling.html>
>         ([i915#3742])
>   *
> 
>     igt@kms_chamelium@dp-crc-single:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl4/igt@kms_chamelium@dp-crc-single.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-crc-single:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_chamelium@hdmi-crc-single.html>
>         ([fdo#109284] / [fdo#111827])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@kms_chamelium@hdmi-crc-single.html>
>         ([fdo#109284] / [fdo#111827])
> 
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +9 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-negative:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-negative.html>
>         ([fdo#109271] / [fdo#111827]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html>
>         ([fdo#109278]) +3 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html>
>         ([i915#3319]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         ([i915#180]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html>
>         ([fdo#109279] / [i915#3359])
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_flip@2x-flip-vs-expired-vblank.html>
>         ([fdo#109274])
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) +5 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>         ([i915#3699])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html>
>         ([fdo#109271]) +149 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html>
>         ([fdo#109280]) +1 similar issue
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html>
>         ([fdo#111825]) +9 similar issues
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_hdr@static-swap.html>
>         ([i915#1187])
>   *
> 
>     igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html>
>         ([fdo#109271] / [i915#2733])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html>
>         ([i915#2920])
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
>   *
> 
>     igt@kms_psr2_su@frontbuffer:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl4/igt@kms_psr2_su@frontbuffer.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html>
>         ([fdo#109441]) +1 similar issue
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl10/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>   *
> 
>     igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb6/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html>
>         ([i915#2530])
>   *
> 
>     igt@nouveau_crc@pipe-c-source-outp-complete:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-complete.html>
>         ([i915#2530]) +1 similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-glk6/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-glk6/igt@perf@polling-parameterized.html>
>         ([i915#1542])
>   *
> 
>     igt@perf@polling-small-buf:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl7/igt@perf@polling-small-buf.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl6/igt@perf@polling-small-buf.html>
>         ([i915#1722])
>   *
> 
>     igt@perf_pmu@rc6-suspend:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@perf_pmu@rc6-suspend.html>
>         ([i915#180])
>   *
> 
>     igt@sysfs_clients@fair-1:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@sysfs_clients@fair-1.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_eio@in-flight-contexts-1us:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html>
>         ([i915#3063]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-sync@rcs0:
> 
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_mmap_gtt@big-copy-xy:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl4/igt@gem_mmap_gtt@big-copy-xy.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html>
>         +1 similar issue
>   *
> 
>     igt@i915_pm_rps@min-max-config-loaded:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl1/igt@i915_pm_rps@min-max-config-loaded.html>
>   *
> 
>     igt@i915_selftest@live@gem_contexts:
> 
>       o shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb2/igt@i915_selftest@live@gem_contexts.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb3/igt@i915_selftest@live@gem_contexts.html>
>   *
> 
>     igt@i915_selftest@live@perf:
> 
>       o shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-tglb2/igt@i915_selftest@live@perf.html>
>         ([i915#2867]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-tglb3/igt@i915_selftest@live@perf.html>
>         +4 similar issues
>   *
> 
>     igt@i915_suspend@debugfs-reader:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-apl8/igt@i915_suspend@debugfs-reader.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl6/igt@i915_suspend@debugfs-reader.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_cpu:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         ([fdo#109441]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         +1 similar issue
>   *
> 
>     igt@kms_vblank@pipe-c-ts-continuation-suspend:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html>
>         +1 similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl6/igt@perf@polling-parameterized.html>
>         ([i915#1542]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl4/igt@perf@polling-parameterized.html>
>   *
> 
>     igt@sysfs_heartbeat_interval@mixed@rcs0:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html>
>         ([i915#1731]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html>
>         +2 similar issues
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         ([i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         ([i915#588])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#1804] / [i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#2684])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#1804] / [i915#2684])
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-apl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-apl4/igt@kms_content_protection@atomic-dpms.html>
>         ([fdo#110321]) -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-apl4/igt@kms_content_protection@atomic-dpms.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html>
>         ([i915#2920]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html>
>         ([i915#658]) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html>
>         ([i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html>
>         ([i915#2920]) +2 similar issues
>   *
> 
>     igt@kms_psr2_su@page_flip:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-iclb2/igt@kms_psr2_su@page_flip.html>
>         ([i915#4148]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-iclb3/igt@kms_psr2_su@page_flip.html>
>         ([fdo#109642] / [fdo#111068] / [i915#658])
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10904/shard-kbl1/igt@runner@aborted.html>)
>         ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] /
>         [i915#3363] / [i915#4312] / [i915#602]) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21637/shard-kbl1/igt@runner@aborted.html>)
>         ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
> 
>       o
> 
>         shard-apl: ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149],
>         [FAIL][150], [FAIL][151]) ([i915#180] / [i915#3002] /
>         [i915#3363] / [i915#4312]) -> ([FAIL][152], [FAIL][153],
>         [FAIL][154], [FAIL][155], [FAIL][156],
> 
