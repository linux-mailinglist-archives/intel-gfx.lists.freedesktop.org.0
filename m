Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D269A473F59
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 10:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C310A10EAAB;
	Tue, 14 Dec 2021 09:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F68D10EAAB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 09:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639473954; x=1671009954;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=mj8IH6xvlMMcMiCoPf+ISk4s3hYOQa7eIff3OdW3N/U=;
 b=DoiqB/sM2Fw5azuk1tPWhflFZ0HjEO4xVStHtuDOVynfoNC+29hycsv8
 VoEdb9pygQ6KcSepx6t/1LPxWW/V5jpso3epWKx//ZF8onpZTgeFcKHCp
 hq+0L5L5Hp9MYJNON1qHlwQ/70tQx28eOrkCteeIDZjnR4FYp74PBplEX
 jVxzfYMgwBTuNt3jVVdGxP6RnUyz/H1Gyrd781rSvcNwdePz2U4cp7Wjg
 6Q9dm9yg+0nrssPr8vBhZq/JxnIjC3YIb07xuRRtastZ7tQDQ89A7aHNx
 SSlQ0+e1lVKslzbVeRx5DoJM66G37QcJuoHYKAvTYSpV2mr2yEz1xAQw4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219623304"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219623304"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:25:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="505291564"
Received: from vgavinx-mobl1.ger.corp.intel.com (HELO [10.252.22.20])
 ([10.252.22.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:25:52 -0800
Message-ID: <394afee7-cdef-7087-f682-81fcc40c172d@intel.com>
Date: Tue, 14 Dec 2021 09:25:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211213125530.3960007-1-matthew.auld@intel.com>
 <163945770501.24609.1290587215869009964@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <163945770501.24609.1290587215869009964@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_add_noreclaim_annotations_=28rev2=29?=
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

On 14/12/2021 04:55, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/debugfs: add noreclaim annotations (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/97966/ 
> <https://patchwork.freedesktop.org/series/97966/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10996_full -> Patchwork_21842_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21842_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21842_full, please notify your bug team to allow 
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
> Patchwork_21842_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
> 
>   *
> 
>     igt@perf@enable-disable:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-glk1/igt@perf@enable-disable.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-glk1/igt@perf@enable-disable.html>
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
> 

These all look to be unrelated.

> 
>     Known issues
> 
> Here are the changes found in Patchwork_21842_full that come from known 
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
>     igt@gem_ctx_isolation@preservation-s3@rcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         ([i915#180]) +5 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@parallel-multi:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb2/igt@gem_lmem_swapping@parallel-multi.html>
>         ([i915#4613]) +2 similar issues
>   *
> 
>     igt@gem_lmem_swapping@random:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613])
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
> 
>   *
> 
>     igt@gem_lmem_swapping@smem-oom:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@gem_lmem_swapping@smem-oom.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o
> 
>         shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-kbl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
> 
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@gem_pxp@fail-invalid-protected-context.html>
>         ([i915#4270])
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-on:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@gem_pxp@reject-modify-context-protection-on.html>
>         ([i915#4270])
>   *
> 
>     igt@gem_userptr_blits@coherency-unsync:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@gem_userptr_blits@coherency-unsync.html>
>         ([i915#3297])
>   *
> 
>     igt@gem_workarounds@suspend-resume:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@gem_workarounds@suspend-resume.html>
>         ([i915#180])
>   *
> 
>     igt@gen9_exec_parse@batch-without-end:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html>
>         ([i915#2856])
>   *
> 
>     igt@gen9_exec_parse@bb-start-param:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@gen9_exec_parse@bb-start-param.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@i915_pm_dc@dc9-dpms.html>
>         ([i915#4281])
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>   *
> 
>     igt@kms_big_fb@y-tiled-64bpp-rotate-270:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html>
>         ([fdo#111614]) +2 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html>
>         ([fdo#110725] / [fdo#111614]) +1 similar issue
> 
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html>
>         ([fdo#111615]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
> 
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886])
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html>
>         ([fdo#109271]) +86 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@kms_cdclk@mode-transition.html>
>         ([fdo#109271]) +60 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-green-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +8 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html>
>         ([fdo#109284] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-degamma:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_color_chamelium@pipe-c-degamma.html>
>         ([fdo#109284] / [fdo#111827]) +5 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-25:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +4 similar issues
> 
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html>
>         ([i915#3359]) +4 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html>
>         ([i915#3319])
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html>
>         ([fdo#109279] / [i915#3359]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html>
>         ([fdo#109274] / [fdo#109278]) +1 similar issue
>   *
> 
>     igt@kms_dsc@basic-dsc-enable:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_dsc@basic-dsc-enable.html>
>         ([i915#3840])
>   *
> 
>     igt@kms_flip@2x-blocking-wf_vblank:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblank.html>
>         ([fdo#109274]) +1 similar issue
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-iclb5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         ([i915#2122]) +2 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html>
>         ([fdo#109271]) +49 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html>
>         ([fdo#109280]) +6 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html>
>         ([fdo#111825]) +22 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl1/igt@kms_hdr@bpc-switch.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_hdr@static-swap.html>
>         ([i915#1187])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_hdr@static-swap.html>
>         ([i915#1187])
> 
>   *
> 
>     igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl9/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o
> 
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
> 
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb.html>
>         ([fdo#109278]) +7 similar issues
>   *
> 
>     igt@kms_plane_lowres@pipe-b-tiling-none:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_plane_lowres@pipe-b-tiling-none.html>
>         ([i915#3536]) +1 similar issue
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-y:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_plane_lowres@pipe-c-tiling-y.html>
>         ([i915#3536])
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-yf:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@kms_plane_lowres@pipe-c-tiling-yf.html>
>         ([fdo#111615] / [fdo#112054])
>   *
> 
>     igt@kms_psr@psr2_basic:
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_psr@psr2_basic.html>
>         ([i915#132] / [i915#3467]) +1 similar issue
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_psr@psr2_basic.html>
>         ([fdo#109441])
> 
>   *
> 
>     igt@kms_psr@psr2_sprite_mmap_cpu:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html>
>         ([fdo#109441])
>   *
> 
>     igt@kms_tv_load_detect@load-detect:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
> 
>   *
> 
>     igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>         ([i915#2828])
>   *
> 
>     igt@nouveau_crc@pipe-b-ctx-flip-detection:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb3/igt@nouveau_crc@pipe-b-ctx-flip-detection.html>
>         ([i915#2530]) +3 similar issues
>   *
> 
>     igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html>
>         ([i915#2530]) +1 similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-glk2/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-glk3/igt@perf@polling-parameterized.html>
>         ([i915#1542])
>   *
> 
>     igt@perf@unprivileged-single-ctx-counters:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@perf@unprivileged-single-ctx-counters.html>
>         ([fdo#109289])
>   *
> 
>     igt@prime_nv_pcopy@test3_1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb6/igt@prime_nv_pcopy@test3_1.html>
>         ([fdo#109291])
>   *
> 
>     igt@sysfs_clients@fair-0:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl10/igt@sysfs_clients@fair-0.html>
>         ([fdo#109271] / [i915#2994])
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb2/igt@sysfs_clients@fair-0.html>
>         ([i915#2994]) +2 similar issues
> 
>   *
> 
>     igt@sysfs_clients@recycle-many:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl4/igt@sysfs_clients@recycle-many.html>
>         ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@sema-25:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb8/igt@sysfs_clients@sema-25.html>
>         ([i915#2994])
>   *
> 
>     igt@sysfs_clients@sema-50:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl7/igt@sysfs_clients@sema-50.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@drm_read@short-buffer-block:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-1/igt@drm_read@short-buffer-block.html>
>         ([i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@drm_read@short-buffer-block.html>
>   *
> 
>     igt@fbdev@nullptr:
> 
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-4/igt@fbdev@nullptr.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-1/igt@fbdev@nullptr.html>)
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@fbdev@nullptr.html>
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-iclb8/igt@feature_discovery@psr2.html>
>         ([i915#658]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-2/igt@i915_pm_backlight@fade_with_dpms.html>
>         ([i915#3012]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html>
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@uc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-2/igt@i915_pm_rpm@gem-mmap-type@uc.html>
>         ([fdo#109308]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html>
>         +4 similar issues
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html>
>         ([i915#1397]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>         +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-270:
> 
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>)
>         ([i915#1845]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>
>         +7 similar issues
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-5:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-5.html>
>         ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html>
>   *
> 
>     igt@kms_color@pipe-c-ctm-0-75:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-skl7/igt@kms_color@pipe-c-ctm-0-75.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html>
>         +7 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10996/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21842/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         +6 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-c
> 
