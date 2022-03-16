Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D65194DAD4E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BFB10E401;
	Wed, 16 Mar 2022 09:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC9510E401
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 09:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647422163; x=1678958163;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xCaq4RPy2tFnOgYkD1wdqTsl+9yIkhEpx8oF6ntYdJ8=;
 b=aeVuyc4wUCfV6LqaeJ++VmXtTkHcu2iWYCYvU/8/kp6+uJQBDU79Q7hW
 OZxlDGGXg5vrKUOyHX/bD0zh5SHSsWqabxEe3hLGEg4dOLey2VcC4aBzE
 hOlqaj5HRtFp3tcHxIf2oXu69tctAOySGMA2mlAt0kwKFTD6MnQ17d7Xl
 ga7vUKLW75FQySyA6QNxzTxeqJ3tHJnA6V251xRSadP1Rbs8M/iBV4EWX
 wTa+OvApxlChfv29r2oF47A29qkKO9QPemDXCUkkbJ9g0njxq+DVJTFzk
 Jl8xackAWKisWr7aOK71gRYwYJnZiO6VxfspM/VSr8GydKALADfznSHhW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342961942"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="342961942"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:15:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="498362052"
Received: from ckrammel-mobl.ger.corp.intel.com (HELO [10.252.7.167])
 ([10.252.7.167])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:15:22 -0700
Message-ID: <01d1a3ee-8b36-c736-b572-e11cae14d1a3@intel.com>
Date: Wed, 16 Mar 2022 09:15:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
 <164739110929.29208.1766148045674473257@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164739110929.29208.1766148045674473257@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/7=5D_drm/i915/lmem=3A_don=27t_treat?=
 =?utf-8?q?_small_BAR_as_an_error?=
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

On 16/03/2022 00:38, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [CI,1/7] drm/i915/lmem: don't treat small 
> BAR as an error
> *URL:*	https://patchwork.freedesktop.org/series/101398/ 
> <https://patchwork.freedesktop.org/series/101398/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11365_full -> Patchwork_22576_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22576_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22576_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
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
> Patchwork_22576_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_sequence@queue-busy:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl1/igt@kms_sequence@queue-busy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl3/igt@kms_sequence@queue-busy.html>

Looks to be unrelated.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@gem_ccs@block-copy-inplace:
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-dg1-12/igt@gem_ccs@block-copy-inplace.html>
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o {shard-rkl}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@gem_eio@in-flight-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-4/igt@gem_eio@in-flight-suspend.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22576_full that come from known 
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
>     igt@feature_discovery@chamelium:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@feature_discovery@chamelium.html>
>         ([fdo#111827])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglb8/igt@gem_eio@unwedge-stress.html>
>         ([i915#232])
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl4/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl7/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063])
> 
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl3/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842]) +2 similar issues
>   *
> 
>     igt@gem_exec_params@secure-non-root:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@gem_exec_params@secure-non-root.html>
>         ([fdo#112283])
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk9/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         ([i915#118])
>   *
> 
>     igt@gem_lmem_swapping@heavy-random:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@gem_lmem_swapping@heavy-random.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl2/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl4/igt@gem_lmem_swapping@parallel-random.html>
>         ([fdo#109271] / [i915#4613]) +4 similar issues
>   *
> 
>     igt@gem_ppgtt@flink-and-close-vma-leak:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html>
>         ([i915#644])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
>   *
> 
>     igt@gen3_render_mixed_blits:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@gen3_render_mixed_blits.html>
>         ([fdo#109289])
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl7/igt@gen9_exec_parse@allowed-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl8/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#1436] / [i915#716])
>   *
> 
>     igt@gen9_exec_parse@bb-secure:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@gen9_exec_parse@bb-secure.html>
>         ([i915#2856])
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb5/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb6/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress:
> 
>       o
> 
>         shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@i915_pm_rpm@gem-execbuf-stress.html>
>         ([i915#151] / [i915#5324])
> 
>       o
> 
>         shard-iclb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@i915_pm_rpm@gem-execbuf-stress.html>
>         ([i915#5324])
> 
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html>
>         ([i915#2521])
>   *
> 
>     igt@kms_async_flips@crc:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@kms_async_flips@crc.html>
>         ([i915#4272])
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html>
>         ([i915#5286])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +4 similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-64bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html>
>         ([fdo#110725] / [fdo#111614])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         ([i915#3743])
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +13 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_chamelium@dp-hpd-with-enabled-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_chamelium@dp-hpd-with-enabled-mode.html>
>         ([fdo#109284] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-fast:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl2/igt@kms_chamelium@vga-hpd-fast.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-0-75:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_color@pipe-d-ctm-0-75.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-max:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +23 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html>
>         ([fdo#109278]) +9 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html>
>         ([fdo#109278] / [fdo#109279])
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html>
>         ([i915#1982])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         ([i915#79]) +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         ([i915#180]) +4 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         ([i915#2122]) +2 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         ([i915#4911])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html>
>         ([fdo#109280]) +5 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html>
>         ([i915#1888] / [i915#2546])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html>
>         ([fdo#109271]) +38 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         ([fdo#108145] / [i915#265]) +4 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html>
>         ([fdo#109271]) +277 similar issues
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html>
>         ([i915#5235]) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658]) +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_suspend:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb2/igt@kms_psr@psr2_suspend.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb3/igt@kms_psr@psr2_suspend.html>
>         ([fdo#109441]) +2 similar issues
>   *
> 
>     igt@kms_vblank@pipe-b-ts-continuation-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>         ([i915#180])
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl2/igt@perf@polling-parameterized.html>
>         ([i915#1542])
>   *
> 
>     igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>         ([fdo#109291])
>   *
> 
>     igt@syncobj_timeline@transfer-timeline-point:
> 
>       o shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl6/igt@syncobj_timeline@transfer-timeline-point.html>
>         ([i915#5098])
>   *
> 
>     igt@sysfs_clients@busy:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-skl6/igt@sysfs_clients@busy.html>
>         ([fdo#109271] / [i915#2994]) +3 similar issues
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@nullptr:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@fbdev@nullptr.html>
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@fbdev@nullptr.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk9/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk4/igt@gem_exec_fair@basic-deadline.html>
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o
> 
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html>
> 
>       o
> 
>         {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-2/igt@gem_exec_fair@basic-flow@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html>
> 
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_exec_schedule@smoketest@rcs0:
> 
>       o {shard-rkl}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@gem_exec_schedule@smoketest@rcs0.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@gem_exec_schedule@smoketest@rcs0.html>
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked-all:
> 
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         ([i915#1895]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked-all.html>
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@i915_pm_backlight@fade_with_dpms.html>
>         ([i915#3012]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html>
>         +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#3989]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html>
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o {shard-tglu}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html>
>         ([i915#4281]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglu-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>         ([i915#3825]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>   *
> 
>     igt@i915_pm_rpm@dpms-mode-unset-lpsp:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-dg1-18/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>         ([i915#1397]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-dg1-12/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>   *
> 
>     igt@kms_atomic@test-only:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_atomic@test-only.html>
>         ([i915#1845] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_atomic@test-only.html>
>         +41 similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-16bpp-rotate-0:
> 
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>         ([i915#1888] / [i915#3891]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-0:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         ([i915#402]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-25:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-25.html>
>         ([i915#1149] / [i915#4070] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html>
>   *
> 
>     igt@kms_color@pipe-a-ctm-max:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_color@pipe-a-ctm-max.html>
>         ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-c-invalid-gamma-lut-sizes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html>
>         ([i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-4/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html>
>         +6 similar issues
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html>
>         ([i915#1849] / [i915#4070] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html>
>         +6 similar issues
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge.html>
>         ([i915#4070] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-bottom-edge.html>
>   *
> 
>     igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html>
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html>
>         +6 similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html>
>         ([i915#4098] / [i915#4369]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html>
>         +2 similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>         ([fdo#111314] / [i915#4098] / [i915#4369]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>         +7 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@psr:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-1/igt@kms_fbcon_fbt@psr.html>
>         ([fdo#110189] / [i915#3955]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_fbcon_fbt@psr.html>
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html>
>         ([i915#3955]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend@b-dp1:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-apl4/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#3701]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22576/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.>
> 
