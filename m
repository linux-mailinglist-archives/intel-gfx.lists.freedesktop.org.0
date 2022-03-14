Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A6A4D8981
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 17:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B8E10E35F;
	Mon, 14 Mar 2022 16:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80C610E35F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 16:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647275997; x=1678811997;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=lSn6nd9Qaw0WQ3pAde0Jm/l3D13nixCi0zFzOPvGW9k=;
 b=WTWMxjWMeXUOox9VMYHz2W17uyi9mgNQYnTqzMNHU/muR7MhEMF7XkfM
 sNyOP6m7kguaX3cFI0XeGwBeck9WXlFhMMbgdJ3Il01AKSo5QGUTXbFyd
 LRA55UUKTrgmB/hxFqY9bzcdNyN22Aa9+n01pU26RDgMwXL99gRTLpSMm
 2GAbizXa7encncDfbzBLforNn0uHrgBzsvHUoZFRhVbLdPg54kmmZqfIY
 SeaaLXlYN7bEnNUp8tocdLFWx47DoBt1cR9tzcdUEoeyQY28KXDaIsEC9
 piza7voH9RGIjSXuda2RYX+u78pGtTI+GCo8ft7WYzTXHet0+6EdzASNm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="254910564"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="254910564"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:39:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="549275545"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:39:44 -0700
Date: Mon, 14 Mar 2022 09:39:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yi9vz3sz2UzcY0LO@mdroper-desk1.amr.corp.intel.com>
References: <20220311225459.385515-1-matthew.d.roper@intel.com>
 <164705030891.29601.783167081120092383@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164705030891.29601.783167081120092383@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/sseu=3A_Don=27t_overa?=
 =?utf-8?q?llocate_subslice_storage?=
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

On Sat, Mar 12, 2022 at 01:58:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915/sseu: Don't overallocate subslice storage
> URL   : https://patchwork.freedesktop.org/series/101305/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11353_full -> Patchwork_22549_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Lucas for the reviews.


Matt

> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-tglu 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22549_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][1] ([i915#4991])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#1373] / [i915#4793])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-snb5/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#232])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-tglb6/igt@gem_eio@kms.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#2481] / [i915#3070])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][8] ([i915#5076])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] ([i915#3371])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb6/igt@gem_exec_capture@pi@vecs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb1/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2849])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#109283] / [i915#4877])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl8/igt@gem_huc_copy@huc-copy.html
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2190])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][23] ([i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@gem_pread@exhaustion.html
>     - shard-skl:          NOTRUN -> [WARN][24] ([i915#2658])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#4270])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#4270])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#768])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][28] ([i915#3318])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#4939] / [i915#5129])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl6/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109289]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110892])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][33] ([i915#2373])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][34] ([i915#1759])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-kbl3/igt@i915_suspend@forcewake.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl1/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#5286]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111614]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][40] ([i915#3763])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][43] ([i915#3743])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl3/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3689] / [i915#3886]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb1/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +113 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3116] / [i915#3299])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb6/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][59] ([i915#1319])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278] / [fdo#109279])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#3319]) +3 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#300])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109278]) +4 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3359]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271]) +65 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109274] / [fdo#109278])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#5287]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][70] -> [INCOMPLETE][71] ([i915#180] / [i915#636])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109274])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#79])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][75] -> [DMESG-WARN][76] ([i915#180]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#2122])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([i915#3701])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109285])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +77 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#1888])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +79 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109280]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109280] / [fdo#111825]) +12 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
>     - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1188])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl4/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl3/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][91] ([fdo#108145] / [i915#265])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][92] ([fdo#108145] / [i915#265])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][93] ([fdo#108145] / [i915#265])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][94] -> [FAIL][95] ([fdo#108145] / [i915#265])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-4:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#5288]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_plane_lowres@pipe-b-tiling-4.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#3536])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][98] -> [SKIP][99] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#658])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109441])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-tglb:         NOTRUN -> [FAIL][102] ([i915#132] / [i915#3467])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109441]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb7/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
>     - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#5030]) +3 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-snb:          [PASS][106] -> [SKIP][107] ([fdo#109271])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-snb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-snb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][108] ([i915#180])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#2437])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@kms_writeback@writeback-fb-id.html
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2437])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#2530])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][112] -> [FAIL][113] ([i915#51])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl9/igt@perf@short-reads.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl8/igt@perf@short-reads.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][114] ([i915#5098])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2994])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl10/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl2/igt@sysfs_clients@recycle.html
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#2994])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-apl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +3 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][120] ([i915#4525]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [INCOMPLETE][122] ([i915#4547]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-skl6/igt@gem_exec_capture@pi@bcs0.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-skl4/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_capture@pi@vcs1:
>     - shard-tglb:         [INCOMPLETE][124] ([i915#3371]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-tglb3/igt@gem_exec_capture@pi@vcs1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb8/igt@gem_exec_capture@pi@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [FAIL][126] ([i915#2842]) -> [PASS][127] +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][128] ([i915#2842]) -> [PASS][129] +2 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [FAIL][130] ([i915#2842]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-apl:          [INCOMPLETE][132] -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11353/shard-apl6/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/shard-apl4/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_mmap_gtt@fault-co
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22549/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
