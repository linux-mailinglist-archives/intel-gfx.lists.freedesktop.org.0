Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F244C86A6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 09:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7152510E55F;
	Tue,  1 Mar 2022 08:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED99110E55F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 08:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646123961; x=1677659961;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=L6Z1XRyyq/fdmbkvKRIrhHk/4nERTs7Do8XK2JRu43M=;
 b=f4XVHFxuTFholpv8VAifikRVKI+nGMNNt/a3eG1ZFzbHelNRbOOQSs3s
 w+jcEpIsraFDdggQ61E488Pg8DwvCDs+o77erTMM1nIMKJjdn3hAc1DdQ
 gPh1D3WCTujOMM8LUG+xVRJgjVlQcK8qik+OcqgagV9atYKJMtBLm4Z8E
 J8duwm5mPctn4ELCaPYgWF4A+ipn/e2se7LyTYQz2uWSrZKoKQVvDnkX/
 7gtpEwJq7+7z9ZL/ZkOeUexvFgCHorUSuuJb3M3B48Zqg0mT5Kj3mqLD2
 Gi6QIz/NtIKSOK52Sv5UwFP/zgDpvz5ulBVpA3NS9BbLFpLbu3ApdoNYG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="236597933"
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="236597933"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 00:39:21 -0800
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="641183416"
Received: from daithiby-mobl.ger.corp.intel.com (HELO [10.252.15.82])
 ([10.252.15.82])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 00:39:20 -0800
Message-ID: <70810bde-5ff8-b5bb-a6e0-37b2c9b533cf@intel.com>
Date: Tue, 1 Mar 2022 08:39:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220228123607.580432-1-matthew.auld@intel.com>
 <164610691676.8600.17489258855229845748@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164610691676.8600.17489258855229845748@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/ttm=3A_make_eviction_?=
 =?utf-8?q?mappable_aware?=
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

On 01/03/2022 03:55, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [CI,1/4] drm/i915/ttm: make eviction 
> mappable aware
> *URL:*	https://patchwork.freedesktop.org/series/100818/ 
> <https://patchwork.freedesktop.org/series/100818/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11299_full -> Patchwork_22433_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22433_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22433_full, please notify your bug team to allow 
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
> Patchwork_22433_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@syncobj_timeline@wait-all-for-submit-snapshot:
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl1/igt@syncobj_timeline@wait-all-for-submit-snapshot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl4/igt@syncobj_timeline@wait-all-for-submit-snapshot.html>

Unrelated to this series.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format}:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html>
>         +2 similar issues
>   *
> 
>     {igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation}:
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation.html>
>         +8 similar issues
>   *
> 
>     {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html>
>         +3 similar issues

Fairly sure these are also unrelated to this series.

> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11299_full and 
> Patchwork_22433_full:
> 
> 
>       New IGT tests (1)
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
>       o Statuses : 1 pass(s)
>       o Exec time: [1.28] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22433_full that come from known 
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
>     igt@gem_ctx_param@set-priority-not-supported:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@gem_ctx_param@set-priority-not-supported.html>
>         ([fdo#109314])
>   *
> 
>     igt@gem_eio@in-flight-contexts-10ms:
> 
>       o shard-iclb: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@gem_eio@in-flight-contexts-10ms.html>
>         ([i915#3070])
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl3/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#5076])
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl1/igt@gem_exec_capture@pi@vcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl6/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([fdo#109271]) +7 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842]) +4 similar issues
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190])
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@gem_lmem_swapping@basic.html>
>         ([i915#4613]) +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk2/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_pxp@create-regular-context-1:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@gem_pxp@create-regular-context-1.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html>
>         ([i915#768]) +2 similar issues
>   *
> 
>     igt@gem_spin_batch@spin-each:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl8/igt@gem_spin_batch@spin-each.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl1/igt@gem_spin_batch@spin-each.html>
>         ([i915#2898])
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-cycles:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>         ([i915#3297]) +1 similar issue
>   *
> 
>     igt@gen7_exec_parse@batch-without-end:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@gen7_exec_parse@batch-without-end.html>
>         ([fdo#109289]) +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@batch-zero-length:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@gen9_exec_parse@batch-zero-length.html>
>         ([i915#2856])
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html>
>         ([i915#2527] / [i915#2856])
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         ([fdo#109293] / [fdo#109506])
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@i915_pm_sseu@full-enable.html>
>         ([i915#4387])
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-apl6/igt@i915_suspend@forcewake.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl4/igt@i915_suspend@forcewake.html>
>         ([i915#180])
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>         ([i915#118])
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614]) +3 similar issues
>   *
> 
>     igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-snb5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-snb2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html>
>         ([fdo#109271]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-tglb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3743])
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html>
>         ([fdo#111615])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html>
>         ([fdo#110723]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109278] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-multiple:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@kms_chamelium@dp-crc-multiple.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>         ([fdo#109284] / [fdo#111827]) +9 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-a-degamma:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@kms_color_chamelium@pipe-a-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +7 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk2/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html>
>         ([fdo#109271] / [fdo#111827])
>   *
> 
>     igt@kms_content_protection@type1:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_content_protection@type1.html>
>         ([fdo#109300] / [fdo#111066])
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html>
>         ([fdo#109278] / [fdo#109279]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html>
>         ([fdo#109278]) +30 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-suspend:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html>
>         ([fdo#109271]) +52 similar issues
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_flip@2x-flip-vs-panning-vs-hang:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html>
>         ([fdo#109274]) +4 similar issues
>   *
> 
>     igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) +4 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html>
>         ([i915#3701])
>   *
> 
>     igt@kms_flip_tiling@flip-change-tiling:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-snb2/igt@kms_flip_tiling@flip-change-tiling.html>
>         ([fdo#109271])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html>
>         ([fdo#109280]) +29 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o
> 
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
> 
>   *
> 
>     igt@kms_plane_lowres@pipe-a-tiling-x:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-x.html>
>         ([i915#3536]) +1 similar issue
>   *
> 
>     igt@kms_plane_lowres@pipe-b-tiling-x:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb6/igt@kms_plane_lowres@pipe-b-tiling-x.html>
>         ([i915#3536])
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         ([fdo#111068] / [i915#658]) +1 similar issue
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_no_drrs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_psr@psr2_no_drrs.html>
>         ([fdo#109441]) +3 similar issues
>   *
> 
>     igt@kms_tv_load_detect@load-detect:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
>   *
> 
>     igt@kms_vblank@pipe-d-ts-continuation-idle:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html>
>         ([fdo#109271]) +81 similar issues
>   *
> 
>     igt@kms_vrr@flip-suspend:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@kms_vrr@flip-suspend.html>
>         ([fdo#109502])
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@kms_writeback@writeback-fb-id.html>
>         ([i915#2437])
>   *
> 
>     igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html>
>         ([i915#2530])
>   *
> 
>     igt@nouveau_crc@pipe-b-source-outp-complete:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk2/igt@nouveau_crc@pipe-b-source-outp-complete.html>
>         ([fdo#109271]) +18 similar issues
>   *
> 
>     igt@nouveau_crc@pipe-d-source-outp-complete:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-complete.html>
>         ([fdo#109278] / [i915#2530]) +1 similar issue
>   *
> 
>     igt@perf@blocking:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl1/igt@perf@blocking.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl4/igt@perf@blocking.html>
>         ([i915#1542])
>   *
> 
>     igt@prime_nv_pcopy@test3_5:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@prime_nv_pcopy@test3_5.html>
>         ([fdo#109291]) +2 similar issues
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@prime_vgem@coherency-gtt.html>
>         ([fdo#109292])
>   *
> 
>     igt@prime_vgem@fence-flip-hang:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@prime_vgem@fence-flip-hang.html>
>         ([fdo#109295])
>   *
> 
>     igt@sysfs_clients@split-10:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb5/igt@sysfs_clients@split-10.html>
>         ([i915#2994]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@split-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-kbl1/igt@sysfs_clients@split-25.html>
>         ([fdo#109271] / [i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@nullptr:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-1/igt@fbdev@nullptr.html>
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@fbdev@nullptr.html>
>         +1 similar issue
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-iclb6/igt@feature_discovery@psr2.html>
>         ([i915#658]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html>
>         ([i915#2410]) -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html>)
>   *
> 
>     igt@gem_eio@in-flight-contexts-1us:
> 
>       o shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html>
>         ([i915#3070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o
> 
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-tglb3/igt@gem_eio@unwedge-stress.html>
>         ([i915#232]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb2/igt@gem_eio@unwedge-stress.html>
> 
>       o
> 
>         shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-iclb6/igt@gem_eio@unwedge-stress.html>
>         ([i915#2481] / [i915#3070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb2/igt@gem_eio@unwedge-stress.html>
> 
>       o
> 
>         {shard-rkl}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-5/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-1/igt@gem_eio@unwedge-stress.html>
> 
>   *
> 
>     igt@gem_exec_capture@pi@bcs0:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-skl6/igt@gem_exec_capture@pi@bcs0.html>
>         ([i915#4547]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-skl1/igt@gem_exec_capture@pi@bcs0.html>
>   *
> 
>     igt@gem_exec_gttfill@engines@vecs0:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-5/igt@gem_exec_gttfill@engines@vecs0.html>
>         ([i915#5080]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@gem_exec_gttfill@engines@vecs0.html>
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-forked-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         +1 similar issue
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#1436] / [i915#716]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-glk2/igt@gen9_exec_parse@allowed-all.html>
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o {shard-tglu}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-tglu-5/igt@i915_selftest@live@gt_pm.html>
>         ([i915#3987]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglu-6/igt@i915_selftest@live@gt_pm.html>
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html>
>         ([i915#1845]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html>
>         +20 similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3743]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html>
>         ([i915#1845] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html>
>   *
> 
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>)
>         ([i915#1845] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-5:
> 
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-4/igt@kms_color@pipe-a-ctm-0-5.html>)
>         ([i915#1149] / [i915#1849] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html>
>   *
> 
>     igt@kms_color@pipe-b-ctm-0-75:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-1/igt@kms_color@pipe-b-ctm-0-75.html>
>         ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11299/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html>
>         ([fdo#112022]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
> 
>       o {shard-rkl}:
> 
