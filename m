Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF64572006
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 17:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02168D834;
	Tue, 12 Jul 2022 15:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092EC8BCDE
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 15:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657641320; x=1689177320;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qlqozZFgXhwY39VZQfVwmO9+n5yUiqVMHOwQGqpmFCo=;
 b=mIV2dx9E5WCxQtLdP2A2vI1iD5VAY33ctz3yRw5ZbjhKhUx7JUNYolHS
 sxkdjl3ymUhcHmZv21qoqEOI+7E5QsG+DY90lV7gCMV0j65F5VxX5mULc
 xiDqTby38EW/osM8TPHfY6P7RhQQBcIaXzlLIbv/kScWq3QZR8+lIRqvz
 MyPhTX/hUgXhh6MYEq1gLdII5z6SjvVsuD/gduDNeQ2HVHf+seBnoHnl8
 UUsk6l9yFOc94V3WGsfApJhjmqhbTn50FMIII+iTs5XtGAnKSx/UKm0SR
 O1JhluA1QFqnVAVDSDzQgazn3HPlEYo/+QHQnuj9BcdUVNEL+EbLXi9z8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="268010820"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="268010820"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 08:55:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="722014078"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 08:55:19 -0700
Date: Tue, 12 Jul 2022 08:55:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ys2ZZsDyF1gRVdJA@mdroper-desk1.amr.corp.intel.com>
References: <20220708215804.2889246-1-matthew.d.roper@intel.com>
 <165735250576.7096.657066931227902030@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165735250576.7096.657066931227902030@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dg2=3A_Add_Wa=5F1501059973?=
 =?utf-8?q?7?=
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

On Sat, Jul 09, 2022 at 07:41:45AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/dg2: Add Wa_15010599737
> URL   : https://patchwork.freedesktop.org/series/106130/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11862_full -> Patchwork_106130v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_106130v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_106130v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_106130v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-tglb:         [PASS][1] -> [FAIL][2] +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

This is an expected regression in functionality due to the new
restrictions imposed by the workaround:  the test now fails because
FBC is turned off whenever PSR1 is active.  However that's exactly
what the workaround asks us to do (in order to avoid incorrect hardware
behavior).

> 
>   * igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d:
>     - shard-tglb:         NOTRUN -> [SKIP][3] +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d.html

https://gitlab.freedesktop.org/drm/intel/-/issues/6403


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - {shard-rkl}:        NOTRUN -> [FAIL][4] +7 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_invalid_mode@zero-vdisplay@hdmi-a-1-pipe-a:
>     - {shard-dg1}:        NOTRUN -> [WARN][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-dg1-19/igt@kms_invalid_mode@zero-vdisplay@hdmi-a-1-pipe-a.html
> 
>   * {igt@kms_rmfb@rmfb-ioctl@pipe-d-hdmi-a-1}:
>     - {shard-dg1}:        NOTRUN -> [FAIL][6] +3 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-dg1-19/igt@kms_rmfb@rmfb-ioctl@pipe-d-hdmi-a-1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_106130v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][7] ([i915#4991])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl3/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-snb4/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglb:         NOTRUN -> [FAIL][9] ([i915#2410])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271]) +26 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-snb4/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#4270])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109312])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][24] ([i915#3318])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl6/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#5566] / [i915#716])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-glk:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#658])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglb:         NOTRUN -> [WARN][32] ([i915#2681]) +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][33] ([i915#1886])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl10/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3743])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689] / [i915#3886])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#6095]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615] / [i915#3689])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@dp-hpd-after-suspend:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-snb4/igt@kms_chamelium@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - shard-glk:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk6/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#1063])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][46] ([i915#1319])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109274] / [fdo#111825])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-apl:          [PASS][48] -> [FAIL][49] ([i915#2346])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>     - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#2346])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>     - shard-skl:          NOTRUN -> [FAIL][52] ([i915#2346]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109274] / [fdo#111825] / [i915#3637])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2122])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#2672]) +8 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2672] / [i915#3555])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][61] ([i915#180])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#5439])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#160]) +60 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +100 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109280] / [fdo#111825]) +3 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>     - shard-tglb:         NOTRUN -> [FAIL][67] ([i915#160])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109289]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy-hang:
>     - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271]) +16 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk6/igt@kms_vblank@pipe-d-wait-busy-hang.html
> 
>   * igt@prime_nv_api@i915_nv_import_twice:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109291])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@prime_nv_api@i915_nv_import_twice.html
> 
>   * igt@prime_nv_pcopy@test2:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +12 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@prime_nv_pcopy@test2.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-skl:          NOTRUN -> [FAIL][77] ([i915#6140])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl6/igt@sysfs_clients@fair-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_busy@close-race:
>     - shard-snb:          [TIMEOUT][79] ([i915#5748]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-snb6/igt@gem_busy@close-race.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-snb4/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +4 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][83] ([i915#4525]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@gem_exec_balancer@parallel.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][85] ([i915#2842]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [FAIL][87] ([i915#2842]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][89] ([i915#2849]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-glk:          [DMESG-WARN][91] ([i915#118]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [INCOMPLETE][93] ([i915#3614] / [i915#4939] / [i915#794]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl4/igt@gem_softpin@noreloc-s3.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [DMESG-WARN][95] ([i915#5566] / [i915#716]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl9/igt@gen9_exec_parse@allowed-all.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [TIMEOUT][97] ([i915#3953]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][99] ([i915#3921]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-snb7/igt@i915_selftest@live@hangcheck.html
>     - shard-tglb:         [DMESG-WARN][101] ([i915#5591]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb3/igt@i915_selftest@live@hangcheck.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl3/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>     - shard-skl:          [FAIL][105] ([i915#2521]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][107] -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl3/igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl3/igt@kms_cursor_legacy@short-flip-before-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1:
>     - shard-kbl:          [FAIL][109] ([i915#2122]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][111] ([i915#2122]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-b-planes:
>     - shard-tglb:         [INCOMPLETE][113] -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb8/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb1/igt@kms_plane@plane-position-covered@pipe-b-planes.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
>     - shard-glk:          [DMESG-FAIL][115] ([i915#118] / [i915#1888]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2:
>     - shard-glk:          [FAIL][117] ([i915#1888]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-glk7/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][121] ([i915#5519]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][123] ([i915#1888] / [i915#5639]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl7/igt@perf@polling-parameterized.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl4/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][125] ([i915#4525]) -> [FAIL][126] ([i915#6117])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-iclb:         [FAIL][127] ([i915#2684]) -> [WARN][128] ([i915#2684])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
>     - shard-skl:          [SKIP][129] ([fdo#109271] / [i915#1888]) -> [SKIP][130] ([fdo#109271])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][131] ([i915#2920]) -> [SKIP][132] ([i915#658])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][133] ([i915#658]) -> [SKIP][134] ([i915#2920]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][135] ([fdo#111068] / [i915#658]) -> [SKIP][136] ([i915#2920])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([fdo#111068] / [i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][139], [FAIL][140]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl8/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-apl4/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl3/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl8/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-apl6/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([fdo#109271] / [i915#180] / [i915#4312] / [i915#5257] / [i915#716])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl1/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl4/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl7/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/shard-kbl1/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl1/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl1/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl4/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl4/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl4/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl7/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl6/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#160]: https://gitlab.freedesktop.org/drm/intel/issues/160
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3953]: https://gitlab.freedesktop.org/drm/intel/issues/3953
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4231]: https://gitlab.freedesktop.org/drm/intel/issues/4231
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6331]: https://gitlab.freedesktop.org/drm/intel/issues/6331
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11862 -> Patchwork_106130v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11862: ffee806d103b9604db7eb9cd689c098aca1ffa96 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6563: 7d43b49bf10788d4870668f93a800888fc8ab339 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_106130v1: ffee806d103b9604db7eb9cd689c098aca1ffa96 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106130v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
