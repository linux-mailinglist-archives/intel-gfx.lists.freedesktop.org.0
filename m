Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D32443DCF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 08:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E03730E7;
	Wed,  3 Nov 2021 07:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31D8730E7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 07:46:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218639886"
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="218639886"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 00:46:08 -0700
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="729042177"
Received: from badunne-mobl5.ger.corp.intel.com (HELO [10.252.16.100])
 ([10.252.16.100])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 00:46:06 -0700
Message-ID: <8557ddce-8cc5-46a4-7980-093d6eeeaf57@intel.com>
Date: Wed, 3 Nov 2021 07:46:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211102155055.100138-1-matthew.auld@intel.com>
 <163587890690.15504.17150768654925082347@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163587890690.15504.17150768654925082347@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fixup_dma=5Ffence=5Fwait_usage?=
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

On 02/11/2021 18:48, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: fixup dma_fence_wait usage
> *URL:*	https://patchwork.freedesktop.org/series/96504/ 
> <https://patchwork.freedesktop.org/series/96504/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10828_full -> Patchwork_21505_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21505_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21505_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
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
> Patchwork_21505_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html>
> 


False positive. Failure looks unrelated.


> 
>     Known issues
> 
> Here are the changes found in Patchwork_21505_full that come from known 
> issues:
> 
> 
>       CI changes
> 
> 
>         Issues hit
> 
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html>)
>         ([i915#4392])
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_create@create-massive:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_create@create-massive.html>
>         ([i915#3002])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb5/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_eio@unwedge-stress.html>
>         ([i915#2369] / [i915#3063] / [i915#3648])
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-uc:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-iclb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html>
>         ([i915#2295])
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>         ([i915#118])
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_pxp@fail-invalid-protected-context.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl1/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl4/igt@gen9_exec_parse@allowed-single.html>
>         ([i915#1436] / [i915#716])
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl8/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl1/igt@gen9_exec_parse@allowed-single.html>
>         ([i915#1436] / [i915#1982] / [i915#716])
> 
>   *
> 
>     igt@gen9_exec_parse@basic-rejected:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@gen9_exec_parse@basic-rejected.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
> 
>   *
> 
>     igt@i915_pm_rpm@pc8-residency:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@i915_pm_rpm@pc8-residency.html>
>         ([fdo#109293] / [fdo#109506])
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html>
>         ([i915#2411] / [i915#456])
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb2/igt@i915_suspend@forcewake.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb7/igt@i915_suspend@forcewake.html>
>         ([i915#456])
>   *
> 
>     igt@kms_big_fb@y-tiled-64bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html>
>         ([fdo#111614]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#111615]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +6 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +8 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886])
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs.html>
>         ([i915#3689]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271]) +135 similar issues
>   *
> 
>     igt@kms_chamelium@dp-mode-timings:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_chamelium@dp-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +14 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-for-each-pipe:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html>
>         ([fdo#109271] / [fdo#111827]) +7 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-after-suspend:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html>
>         ([fdo#109271] / [fdo#111827]) +13 similar issues
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-5:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html>
>         ([i915#1982]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-degamma:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109284] / [fdo#111827]) +7 similar issues
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o
> 
>         shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_content_protection@srm.html>
>         ([i915#1319])
> 
>       o
> 
>         shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_content_protection@srm.html>
>         ([i915#1319])
> 
>   *
> 
>     igt@kms_content_protection@uevent:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html>
>         ([i915#3359]) +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html>
>         ([i915#3319])
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html>
>         ([fdo#109279] / [i915#3359]) +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-suspend:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-suspend.html>
>         ([fdo#109278])
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern.html>
>         ([i915#426])
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) +3 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         ([i915#180])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html>
>         ([fdo#109280]) +1 similar issue
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html>
>         ([fdo#111825]) +20 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl7/igt@kms_hdr@bpc-switch.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#180]) +7 similar issues
>   *
> 
>     igt@kms_panel_fitting@legacy:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_panel_fitting@legacy.html>
>         ([fdo#109271]) +115 similar issues
>   *
> 
>     igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html>
>         ([fdo#109289])
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-none:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-none.html>
>         ([i915#3536]) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>         ([fdo#109271] / [i915#658]) +3 similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>         ([i915#2920])
> 
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html>
>         ([fdo#109271] / [i915#658]) +2 similar issues
>   *
> 
>     igt@kms_setmode@basic:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@kms_setmode@basic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@kms_setmode@basic.html>
>         ([i915#31])
>   *
> 
>     igt@kms_vblank@pipe-d-wait-forked-hang:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html>
>         ([fdo#109271]) +159 similar issues
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_writeback@writeback-fb-id.html>
>         ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_writeback@writeback-pixel-formats.html>
>         ([fdo#109271] / [i915#2437])
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html>
>         ([fdo#109271] / [i915#2437])
> 
>   *
> 
>     igt@nouveau_crc@pipe-a-source-outp-complete:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-complete.html>
>         ([i915#2530])
>   *
> 
>     igt@prime_nv_pcopy@test1_macro:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@prime_nv_pcopy@test1_macro.html>
>         ([fdo#109291]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@sysfs_clients@fair-7.html>
>         ([i915#2994])
>   *
> 
>     igt@sysfs_clients@recycle:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@sysfs_clients@recycle.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@recycle-many:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@sysfs_clients@recycle-many.html>
>         ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@sema-10:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@sysfs_clients@sema-10.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
>   *
> 
>     igt@sysfs_timeslice_duration@timeout@vecs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl1/igt@sysfs_timeslice_duration@timeout@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@sysfs_timeslice_duration@timeout@vecs0.html>
>         ([i915#1755])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         ([i915#456]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         +8 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@gem_exec_fair@basic-deadline.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842] / [i915#3468]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html>
>   *
> 
>     igt@gem_exec_gttfill@engines@rcs0:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/igt@gem_exec_gttfill@engines@rcs0.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html>
>         +2 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         +4 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-suspend:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html>
>         ([i915#2411] / [i915#456]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html>
>   *
> 
>     igt@kms_hdr@bpc-switch-d
> 
