Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F14B6EEC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 15:36:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31CD010E53C;
	Tue, 15 Feb 2022 14:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B7D10E53C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 14:35:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id C11701F44B09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644935756;
 bh=4T0yn70k7kdJCWj465bkA5SroUWQpRDV+IVJsVR2Cho=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=h9FVSJMaw/NjudqkdX0D4pllWSBCKgSoanT+CM2ltARxVLxBXQWpTSxtDZYzUNq99
 CPq0R2v8zGPOG6fmGHTwOTlfpDlEvvf+u683oGwrExeZ8tRPSkU2LRXbz+q/yKAnFK
 1fKXcPkmG3Q41mcTO022yMEiMJoiX3kx+1B0gAQqty4alHLtDwIP21g5q0e+69ZKEG
 6st2gIh+j49DBNRFjZ1OA1MHn2N/QVlbFZQSydS2vGbnMdfg/bEcXbH2p46sSVuDfT
 9bPU+zQRVZ4sAmQzU3NxLo8RgFuQ8eUdUIc233zHmRtFCjmeULEBwYk35116HEPEqv
 fZzruq0/ptXpQ==
Message-ID: <753f0a2a-4a03-0d6b-8cbd-037ec4466680@collabora.com>
Date: Tue, 15 Feb 2022 14:35:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, "C, Ramalingam" <ramalingam.c@intel.com>
References: <20220208203419.1094362-1-bob.beckett@collabora.com>
 <164436678791.23775.9137526465866274324@emeril.freedesktop.org>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <164436678791.23775.9137526465866274324@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?crete_card_64K_page_support_=28rev6=29?=
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



On 09/02/2022 00:33, Patchwork wrote:
> *Patch Details*
> *Series:*	discrete card 64K page support (rev6)
> *URL:*	https://patchwork.freedesktop.org/series/99119/ 
> <https://patchwork.freedesktop.org/series/99119/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11205_full -> Patchwork_22213_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22213_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22213_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
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
> Patchwork_22213_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_selftest@mock@vma:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@i915_selftest@mock@vma.html>

I am unable to repro this locally.
It appears to be just taking longer than usual.
 From the log, it appears to actually finish after ~56s

<7> [358.691983] intel_gt_set_wedged called from 
intel_gt_set_wedged_on_fini+0x15/0x40 [i915]

Perhaps just an infrastructure issue?
I can't come up with a scenario where this series causes this hang.

>   *
> 
>     igt@kms_cursor_legacy@pipe-c-torture-bo:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@kms_cursor_legacy@pipe-c-torture-bo.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb6/igt@kms_cursor_legacy@pipe-c-torture-bo.html>

This one seems to just be taking longer than usual like the one above.
Locally it takes ~22 seconds but succeeds fine.
Again, nothing to do with this patch series.

>   *
> 
>     igt@syncobj_timeline@invalid-transfer-non-existent-point:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@syncobj_timeline@invalid-transfer-non-existent-point.html>
>
This one is due to upstream commit 270b48bb8da7452b4357d8726933beba72652310

It adds a warning for incorrect chained fences, which this test is 
deliberately testing.
This is a test issue, nothing to do with this patch series.

> 
>     Known issues
> 
> Here are the changes found in Patchwork_22213_full that come from known 
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
>     igt@feature_discovery@display-4x:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@feature_discovery@display-4x.html>
>         ([i915#1839])
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb6/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb2/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#3371])
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb1/igt@gem_exec_capture@pi@vcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb3/igt@gem_exec_capture@pi@vcs0.html>
>         ([i915#3371])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
> 
>       o
> 
>         shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl8/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk1/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-glk4/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
> 
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html>
>         ([i915#2842]) +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_params@no-vebox:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@gem_exec_params@no-vebox.html>
>         ([fdo#109283])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@gem_lmem_swapping@random-engines.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl3/igt@gem_lmem_swapping@verify-random.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_pxp@create-protected-buffer:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb3/igt@gem_pxp@create-protected-buffer.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@gem_pxp@fail-invalid-protected-context.html>
>         ([i915#4270])
>   *
> 
>     igt@gem_render_copy@yf-tiled-to-vebox-linear:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@gem_render_copy@yf-tiled-to-vebox-linear.html>
>         ([i915#768]) +1 similar issue
>   *
> 
>     igt@gem_softpin@evict-snoop-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@gem_softpin@evict-snoop-interruptible.html>
>         ([fdo#109312])
>   *
> 
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@gem_userptr_blits@readonly-pwrite-unsync.html>
>         ([i915#3297])
>   *
> 
>     igt@gem_workarounds@suspend-resume-context:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-apl8/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl3/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@batch-zero-length:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@gen9_exec_parse@batch-zero-length.html>
>         ([i915#2856])
>   *
> 
>     igt@gen9_exec_parse@valid-registers:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@gen9_exec_parse@valid-registers.html>
>         ([i915#2527] / [i915#2856])
>   *
> 
>     igt@i915_pm_rpm@pc8-residency:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@i915_pm_rpm@pc8-residency.html>
>         ([fdo#109293] / [fdo#109506])
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-180:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         ([i915#118])
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html>
>         ([fdo#110725] / [fdo#111614]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([i915#3743])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +3 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html>
>         ([fdo#111615])
>   *
> 
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886])
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html>
>         ([i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +6 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271]) +205 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-for-each-pipe:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-0-25:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@kms_color@pipe-d-ctm-0-25.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-0-75:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_color_chamelium@pipe-a-ctm-0-75.html>
>         ([fdo#109284] / [fdo#111827]) +4 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-0-5:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html>
>         ([fdo#109284] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-gamma:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl7/igt@kms_color_chamelium@pipe-c-gamma.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-25:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +8 similar issues
>   *
> 
>     igt@kms_content_protection@mei_interface:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_content_protection@mei_interface.html>
>         ([i915#1063])
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html>
>         ([fdo#109271]) +66 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html>
>         ([fdo#109279] / [i915#3359]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html>
>         ([i915#3319])
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346])
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346])
>   *
> 
>     igt@kms_dsc@xrgb8888-dsc-compression:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_dsc@xrgb8888-dsc-compression.html>
>         ([i915#3828])
>   *
> 
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html>
>         ([fdo#109274] / [fdo#111825]) +1 similar issue
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         ([fdo#109274]) +3 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html>
>         ([i915#4911]) +1 similar issue
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html>
>         ([fdo#109285])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html>
>         ([fdo#109280]) +17 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html>
>         ([fdo#109280] / [fdo#111825]) +7 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_hdr@static-toggle.html>
>         ([i915#1187])
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         ([i915#180])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb3/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html>
>         ([fdo#109278]) +20 similar issues
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         ([fdo#111068] / [i915#658])
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         ([i915#1911])
>   *
> 
>     igt@kms_psr@psr2_primary_blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@kms_psr@psr2_primary_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@kms_psr@psr2_primary_blt.html>
>         ([fdo#109441])
>   *
> 
>     igt@kms_tv_load_detect@load-detect:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
>   *
> 
>     igt@kms_vrr@flip-dpms:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_vrr@flip-dpms.html>
>         ([fdo#109502])
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb3/igt@kms_writeback@writeback-check-output.html>
>         ([i915#2437]) +1 similar issue
>   *
> 
>     igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html>
>         ([fdo#109271]) +35 similar issues
>   *
> 
>     igt@perf_pmu@event-wait@rcs0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@perf_pmu@event-wait@rcs0.html>
>         ([fdo#112283])
>   *
> 
>     igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html>
>         ([fdo#109291]) +1 similar issue
>   *
> 
>     igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html>
>         ([fdo#109291])
>   *
> 
>     igt@sysfs_clients@busy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@sysfs_clients@busy.html>
>         ([i915#2994])
>   *
> 
>     igt@sysfs_clients@create:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl8/igt@sysfs_clients@create.html>
>         ([fdo#109271] / [i915#2994]) +2 similar issues
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl3/igt@sysfs_clients@fair-3.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_eio@in-flight-contexts-immediate:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html>
>         ([i915#3063]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html>
>         +2 similar issues
>   *
> 
>     igt@i915_selftest@live@gtt:
> 
>       o shard-skl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl3/igt@i915_selftest@live@gtt.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl9/igt@i915_selftest@live@gtt.html>
>   *
> 
>     igt@i915_suspend@sysfs-reader:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-apl8/igt@i915_suspend@sysfs-reader.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-apl3/igt@i915_suspend@sysfs-reader.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         ([i915#2411] / [i915#2828] / [i915#456]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>         ([i915#3701]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-skl1/igt@kms_hdr@bpc-switch.html>
>         ([i915#1188]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-skl7/igt@kms_hdr@bpc-switch.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html>
>         ([fdo#109441]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>         +1 similar issue
>   *
> 
>     igt@perf@non-zero-reason:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-glk1/igt@perf@non-zero-reason.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-glk4/igt@perf@non-zero-reason.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-in-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         ([i915#4525]) -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         ([i915#5076])
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-iclb: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#5076]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#4525]) +1 similar issue
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#1804] / [i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#2684])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#1804] / [i915#2684])
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         ([fdo#111068] / [i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22213/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         ([i915#2920])
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-iclb: SKIP <https://intel-gfx-ci.> ([fdo#109642] /
>         [fdo#111068] / [i915#658]) -> [FAIL][133] ([i915#4148])
> 
