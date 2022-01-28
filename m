Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4701B49FCB8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 16:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002B010EB39;
	Fri, 28 Jan 2022 15:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2C910EAE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643383313; x=1674919313;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Ammod8qKQvsnw+SoNa+jMH2uGlBHKCfUcSQy89uxJfM=;
 b=XIdzs8gCYi7KzixfRoblGSFGRpdcqaZfPcmZBHzVPz6uGC1b5zeVJnEe
 odGD0CGwPSnEYzNwCJrDgT5EplaAGig8JLkfoU/ZBDVZoob7W5WQRmRbN
 D0IqMyNhQVjSPAY0riOxT4Lu6TtvCyUUdLUrBHDSJhXz9JVab8lPL375l
 70LsKcMexdZqLZ26jvJnYYp0U4nP/Fv5HXtu3c4HwFPjlgQay6j1xhfmu
 /7BdGvcDV4XPZoJXtfaYrMbv4rHIx7nqaFLadQ6md1nKVOo9N1SwNZixh
 ZS2xmVV2e4lhFbSEWi6qLg3M2B8/oq7mXBW6acopqObHsttzSjr+JBIxf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="271600348"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="271600348"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 07:21:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="478317509"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 07:21:52 -0800
Date: Fri, 28 Jan 2022 07:21:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YfQKD5NxpY+EiUNZ@mdroper-desk1.amr.corp.intel.com>
References: <20220127234334.4016964-1-matthew.d.roper@intel.com>
 <164335945722.27321.17037754764505370678@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164335945722.27321.17037754764505370678@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?ond_round_of_i915=5Freg=2Eh_splitting_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 28, 2022 at 08:44:17AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Second round of i915_reg.h splitting (rev3)
> URL   : https://patchwork.freedesktop.org/series/99079/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11154_full -> Patchwork_22133_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22133_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22133_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22133_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@softpin:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-snb5/igt@gem_softpin@softpin.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-snb6/igt@gem_softpin@softpin.html

It's not really clear what the error was here, but it happened during
GTT reservation for an execbuf operation.  That doesn't seem like
anything that could be related to the register definition shuffling in
this series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22133_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#3063])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-tglb3/igt@gem_eio@in-flight-immediate.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-tglb5/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-iclb:         [PASS][10] -> [INCOMPLETE][11] ([i915#1895])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb6/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([i915#2295])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb7/igt@gem_mmap_gtt@fault-concurrent-y.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb4/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][17] ([i915#2658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +27 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#3297])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#3376])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-tglb2/igt@gem_userptr_blits@huge-split.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-tglb8/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][22] ([i915#4990])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +96 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl3/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110723])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278] / [i915#3886])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +75 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@kms_chamelium@dp-crc-single.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl6/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#2346])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#79])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#79])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][48] ([i915#2122]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#1188])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl7/igt@kms_hdr@bpc-switch.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl7/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb8/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][57] ([IGT#2])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#1542])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl9/igt@perf@polling-parameterized.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl8/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [PASS][60] -> [INCOMPLETE][61] ([i915#180])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl4/igt@perf_pmu@rc6-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl2/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109291])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb1/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109292])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb7/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl1/igt@sysfs_clients@fair-0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][65] ([i915#2410]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][67] ([i915#4525]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb7/igt@gem_exec_balancer@parallel.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][69] ([i915#2842]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [FAIL][71] ([i915#2842]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][73] ([i915#2842]) -> [PASS][74] +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][75] ([i915#2842]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [DMESG-WARN][77] ([i915#1436] / [i915#716]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl7/igt@gen9_exec_parse@allowed-all.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +4 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][83] ([i915#79]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-skl:          [INCOMPLETE][85] ([i915#4839]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-skl:          [FAIL][87] ([i915#2122]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][89] ([i915#3701]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
>     - shard-iclb:         [FAIL][91] ([i915#1888]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [PASS][94] +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][97] ([i915#31]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl2/igt@kms_setmode@basic.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl6/igt@kms_setmode@basic.html
>     - shard-glk:          [FAIL][99] ([i915#31]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-glk9/igt@kms_setmode@basic.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-glk6/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][101] ([i915#4525]) -> [FAIL][102] ([i915#4916])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][103] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][104] ([i915#4148])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][105] ([i915#4148]) -> [SKIP][106] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-iclb1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][107], [FAIL][108]) ([i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][109], [FAIL][110], [FAIL][111]) ([i915#180] / [i915#3002] / [i915#4312])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-kbl7/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-kbl7/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl7/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-kbl4/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl3/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl8/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl1/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl3/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl7/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl8/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-apl7/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl1/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl8/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl2/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl4/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl3/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-apl2/igt@runner@aborted.html
>     - shard-snb:          ([FAIL][126], [FAIL][127]) ([i915#3002] / [i915#4312]) -> ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#2426] / [i915#3002] / [i915#4312])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-snb2/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-snb5/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-snb4/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-snb6/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-snb6/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1436] / [i915#3002] / [i915#4312]) -> ([FAIL][135], [FAIL][136], [FAIL][137]) ([i915#3002] / [i915#4312])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl7/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-skl4/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl4/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-skl1/igt@runner@aborted.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4916]: https://gitlab.freedesktop.org/drm/intel/issues/4916
>   [i915#4990]: https://gitlab.freedesktop.org/drm/intel/issues/4990
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11154 -> Patchwork_22133
> 
>   CI-20190529: 20190529
>   CI_DRM_11154: 401e42aa274384a2660ad4b54af9ef6a86429cb1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22133: e79aa0dd9ff2cf32a10cf1851b68b18eec93ada4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
