Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D92599CD4A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 16:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B153B10E45F;
	Mon, 14 Oct 2024 14:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSV2VIzK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2FD10E2A4;
 Mon, 14 Oct 2024 14:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728916277; x=1760452277;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0pXlzsoN8KuTuvlwttwHVs1X27Ic1t3Cls6E7akjnVI=;
 b=FSV2VIzKLmBNxI6EMgGkFRW8BFXy7NuYLE23vuOROd8klaQQv593cEP1
 fqFrMN3vNoF6Tu5DPDY8Gz7ytWCi4nv706rRVTpH0NH2nDBME05ITk+6W
 vWSaNZ/GHQYnncgkUj+vq0/T9k2yWWq4QMFW9/HDan1zVmi8lf2lqlBAM
 CgoopwdUAOeRLwQhg3EDALoTyj4pr5u/RHQ6hPK0qnuo5F72pJXeDaCZv
 /7NoLtQLQDAwZO0ez4PRRG6M56Qum15DsjhxYbsimsur3r1CC3Nb0GvtM
 EL4Njatr954nAdjMRN2rjdn6+tbT6h5OexivUemrezrSnEa9kac1bt0Cp g==;
X-CSE-ConnectionGUID: uHzhEaCOTtOOfw66dAsogg==
X-CSE-MsgGUID: GQQFRDCbTLGtP7f3xdz8qA==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="27722608"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="27722608"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 07:31:16 -0700
X-CSE-ConnectionGUID: Vr21RfLsT2qLT4znJlwt/Q==
X-CSE-MsgGUID: PA6szcA2TpWGgnaJsWEsHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="108384397"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 07:31:15 -0700
Date: Mon, 14 Oct 2024 17:31:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_with_=5B1=2F2=5D_drm=2Fi915=2Fdp=5Fmst?=
 =?utf-8?Q?=3A?= Handle error during DSC BW overhead/slice calculation
Message-ID: <Zw0rUI25HjbJ6zgu@ideak-desk.fi.intel.com>
References: <20241009110135.1216498-1-imre.deak@intel.com>
 <172858185470.1237157.5142483566477537201@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172858185470.1237157.5142483566477537201@2413ebb6fbb6>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 10, 2024 at 05:37:34PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/dp_mst: Handle error during DSC BW overhead/slice calculation
> URL   : https://patchwork.freedesktop.org/series/139771/
> State : failure

All the hosts with a Possible new issue have only HDMI outputs
connected, where the DP DSC changes should have no effect, so those
failures are unrelated.

The patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15502_full -> Patchwork_139771v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_139771v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_139771v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 9)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_139771v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-snb:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [ABORT][6] +1 other test abort
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_flip@flip-vs-fences-interruptible@a-hdmi-a2.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15502_full and Patchwork_139771v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_universal_plane@universal-plane-functional@pipe-b-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.25] s
> 
>   * igt@kms_universal_plane@universal-plane-functional@pipe-c-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.20] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_139771v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#8411])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8411])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@fbdev@eof:
>     - shard-dg2:          [PASS][10] -> [SKIP][11] ([i915#2582])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@fbdev@eof.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@fbdev@eof.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#7697]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6335])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-rkl:          [PASS][16] -> [FAIL][17] ([i915#12027])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
>     - shard-mtlp:         [PASS][18] -> [FAIL][19] ([i915#12031])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][21] -> [FAIL][22] ([i915#5784])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-14/igt@gem_eio@unwedge-stress.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4525]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#6344])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@gem_exec_fair@basic-none.html
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4473] / [i915#4771])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][27] ([i915#2842]) +1 other test fail
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2842]) +1 other test fail
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-range-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3281])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@gem_exec_reloc@basic-range-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3281]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3281]) +11 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4860])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#2190])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@gem_lmem_swapping@heavy-verify-multi.html
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#4613]) +4 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_gtt@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4077]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@gem_mmap_gtt@bad-object.html
> 
>   * igt@gem_mmap_gtt@big-bo-tiledy:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4077]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@gem_mmap_gtt@big-bo-tiledy.html
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4077])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@gem_mmap_gtt@big-bo-tiledy.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4083])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4083]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@gem_mmap_wc@write-read.html
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#3282]) +11 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@gem_pxp@create-protected-buffer.html
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4270])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#4270])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4270]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#8428])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4079])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@gem_set_tiling_vs_gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4079])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3297] / [i915#3323])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3297]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3297])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3281] / [i915#3297])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#3297])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3297]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#2527]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#2527])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-far.html
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#2856])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#2527] / [i915#2856])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-8/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][62] -> [ABORT][63] ([i915#9820])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-rkl:          NOTRUN -> [ABORT][64] ([i915#9820])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#8399])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rpm@gem-evict-pwrite:
>     - shard-glk:          [PASS][66] -> [DMESG-WARN][67] ([i915#118])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk1/igt@i915_pm_rpm@gem-evict-pwrite.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk3/igt@i915_pm_rpm@gem-evict-pwrite.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#4387])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#6245])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         NOTRUN -> [ABORT][70] ([i915#12216])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-6/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][71] -> [ABORT][72] ([i915#12216])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][73] ([i915#7443])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#7707]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#8709]) +11 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-3-4-mc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#9531])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#9531])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-dg2:          [PASS][78] -> [FAIL][79] ([i915#5956])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg1:          [PASS][80] -> [FAIL][81] ([i915#5956])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][83] ([i915#5956])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][84] ([i915#5956])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#5286]) +8 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5286])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#5286])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3638]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3638]) +6 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][90] +27 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4538]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5190] / [i915#9197])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4538] / [i915#5190]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_busy@basic:
>     - shard-dg2:          [PASS][94] -> [SKIP][95] ([i915#9197]) +14 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_busy@basic.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_busy@basic.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#10307] / [i915#6095]) +178 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#6095]) +99 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#6095]) +4 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#6095]) +24 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#12313])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#12313])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][102] +39 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#6095]) +84 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#3742])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#7828]) +2 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-8/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#7828])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#7828]) +11 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [PASS][109] -> [SKIP][110] ([i915#3555]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-10/igt@kms_color@deep-color.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][111] ([i915#7173])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3116]) +2 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#9424]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_content_protection@mei-interface.html
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#6944] / [i915#9424]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3555]) +6 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3555]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#11453]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8814])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3555] / [i915#8814])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#4103]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#9723])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#9723])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#8588])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#1257])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3840])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3840])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-dg2:          [PASS][127] -> [SKIP][128] ([i915#1849])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_fbcon_fbt@fbc.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1839])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#658])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3637])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3637]) +4 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][133] +37 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][134] -> [FAIL][135] ([i915#2122]) +1 other test fail
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-mtlp:         [PASS][136] -> [FAIL][137] ([i915#11989] / [i915#2122])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>     - shard-mtlp:         [PASS][138] -> [FAIL][139] ([i915#2122]) +1 other test fail
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
>     - shard-tglu:         NOTRUN -> [FAIL][140] ([i915#2122]) +1 other test fail
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1:
>     - shard-tglu:         [PASS][141] -> [FAIL][142] ([i915#2122])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-10/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#2672]) +3 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#3555] / [i915#8813])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#3555] / [i915#8810])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3555])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#2672]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#2672] / [i915#8813])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-snb:          [PASS][151] -> [SKIP][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#1825]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#5354]) +3 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#10433] / [i915#3458])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3458]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3458]) +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][159] +7 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#5439])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#9766])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3023]) +32 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8708]) +4 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#8708]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#8708])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5354]) +4 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#1825]) +48 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
>     - shard-snb:          NOTRUN -> [SKIP][168] +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#433])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_hdmi_inject@inject-audio.html
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#433])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3555] / [i915#8228]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#8228]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-14/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_hdr@static-toggle-dpms.html
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#3555] / [i915#8228])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#10656])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#10656])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#12394]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#12394])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#12394])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#10656])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
>     - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#8152] / [i915#9423])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:
>     - shard-dg2:          [PASS][184] -> [SKIP][185] ([i915#12247]) +2 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:
>     - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#8152])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#12247] / [i915#6953]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#12247]) +5 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#12247]) +4 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#5354])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#5354]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_pm_backlight@fade-with-suspend.html
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#9812])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#8430])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#9519]) +1 other test skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][196] -> [SKIP][197] ([i915#9519])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#11520]) +2 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#9808])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#12316]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#11520])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#11520])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#11520]) +11 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#9683])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr2-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#9688]) +4 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_psr@fbc-psr2-primary-render.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#1072] / [i915#9732]) +28 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#9732]) +10 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_psr@pr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr-no-drrs:
>     - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#1072] / [i915#9732])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_psr@psr-no-drrs.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9685])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#5289]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9197]) +5 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#11131])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][214] ([i915#12231]) +1 other test abort
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-2/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][215] -> [FAIL][216] ([i915#9196]) +2 other tests fail
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555] / [i915#9906])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_vrr@negative-basic.html
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3555] / [i915#9906])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-5/igt@kms_vrr@negative-basic.html
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#3555] / [i915#9906])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_vrr@negative-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#3555] / [i915#9906])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-3/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#9906])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#2437])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] +6 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-mtlp-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@stress-open-close@0-rcs0:
>     - shard-glk:          [PASS][224] -> [ABORT][225] ([i915#8190] / [i915#9853]) +1 other test abort
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk3/igt@perf@stress-open-close@0-rcs0.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk2/igt@perf@stress-open-close@0-rcs0.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3708] / [i915#4077])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][227] ([i915#9781])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-6/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-write:
>     - shard-dg2:          [SKIP][228] ([i915#2582]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@fbdev@unaligned-write.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][230] ([i915#7297]) -> [PASS][231] +1 other test pass
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-7/igt@gem_ccs@suspend-resume.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglu:         [FAIL][232] ([i915#11980]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-tglu-9/igt@gem_ctx_persistence@hostile.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-2/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][234] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-7/igt@gem_eio@hibernate.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][236] ([i915#2842]) -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [FAIL][238] ([i915#2842]) -> [PASS][239] +2 other tests pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [ABORT][240] ([i915#12375] / [i915#5566]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][242] ([i915#9820]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [FAIL][244] ([i915#3591]) -> [PASS][245] +2 other tests pass
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [INCOMPLETE][246] ([i915#4817]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_atomic_transition@modeset-transition-fencing:
>     - shard-glk:          [FAIL][248] ([i915#12238]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
>     - shard-glk:          [FAIL][250] ([i915#11859]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-snb:          [SKIP][252] -> [PASS][253] +1 other test pass
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][254] ([i915#2346]) -> [PASS][255]
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][256] ([i915#2122]) -> [PASS][257] +5 other tests pass
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg2:          [FAIL][258] ([i915#2122]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
>     - shard-tglu:         [FAIL][260] ([i915#2122]) -> [PASS][261] +1 other test pass
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-tglu-7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-dg1:          [DMESG-WARN][262] ([i915#4423]) -> [PASS][263] +1 other test pass
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-13/igt@kms_flip@flip-vs-suspend.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-13/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-dg1:          [FAIL][264] ([i915#11989] / [i915#2122]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3:
>     - shard-dg1:          [FAIL][266] -> [PASS][267] +1 other test pass
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][268] ([i915#5354]) -> [PASS][269] +21 other tests pass
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg2:          [FAIL][270] ([i915#6880]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][272] ([i915#3555] / [i915#8228]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@bad-vsync-end:
>     - shard-dg2:          [SKIP][274] ([i915#3555]) -> [PASS][275] +4 other tests pass
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_invalid_mode@bad-vsync-end.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-dg2:          [SKIP][276] ([i915#9581]) -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane@plane-position-covered:
>     - shard-dg2:          [SKIP][278] ([i915#8825]) -> [PASS][279] +1 other test pass
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane@plane-position-covered.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_plane@plane-position-covered.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-mid:
>     - shard-dg2:          [SKIP][280] ([i915#7294]) -> [PASS][281]
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-mid.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
>     - shard-dg2:          [SKIP][282] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][283]
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d:
>     - shard-dg2:          [SKIP][284] ([i915#8152]) -> [PASS][285]
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
>     - shard-dg2:          [SKIP][286] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][287]
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
>     - shard-dg2:          [SKIP][288] ([i915#12247]) -> [PASS][289] +11 other tests pass
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
>     - shard-dg2:          [SKIP][290] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][291] +1 other test pass
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
>     - shard-dg2:          [SKIP][292] ([i915#12247] / [i915#8152]) -> [PASS][293] +2 other tests pass
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][294] ([i915#4281]) -> [PASS][295]
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][296] ([i915#9519]) -> [PASS][297] +3 other tests pass
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][298] ([i915#9519]) -> [PASS][299] +3 other tests pass
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-dg2:          [SKIP][300] ([i915#11521]) -> [PASS][301]
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_properties@crtc-properties-legacy.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_universal_plane@universal-plane-sanity:
>     - shard-dg2:          [SKIP][302] ([i915#9197]) -> [PASS][303] +44 other tests pass
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_universal_plane@universal-plane-sanity.html
> 
>   * igt@prime_mmap_kms@buffer-sharing:
>     - shard-dg2:          [SKIP][304] -> [PASS][305]
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@prime_mmap_kms@buffer-sharing.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@mock:
>     - shard-glk:          [DMESG-WARN][306] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][307] ([i915#9311])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-glk6/igt@i915_selftest@mock.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-glk6/igt@i915_selftest@mock.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-dg2:          [SKIP][308] ([i915#9197]) -> [SKIP][309] +1 other test skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][310] ([i915#3638]) -> [ABORT][311] ([i915#10354])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-dg2:          [SKIP][312] ([i915#4538] / [i915#5190]) -> [SKIP][313] ([i915#5190] / [i915#9197])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg2:          [SKIP][314] ([i915#5190] / [i915#9197]) -> [SKIP][315] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-dg2:          [SKIP][316] ([i915#5190] / [i915#9197]) -> [SKIP][317] ([i915#5190])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          [SKIP][318] ([i915#10307] / [i915#6095]) -> [SKIP][319] ([i915#9197]) +2 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          [SKIP][320] ([i915#4423] / [i915#6095]) -> [SKIP][321] ([i915#6095])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-12/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          [SKIP][322] ([i915#9197]) -> [SKIP][323] ([i915#12313]) +1 other test skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:
>     - shard-dg2:          [SKIP][324] ([i915#9197]) -> [SKIP][325] ([i915#10307] / [i915#6095]) +7 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          [SKIP][326] ([i915#12313]) -> [SKIP][327] ([i915#9197])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][328] ([i915#7118] / [i915#9424]) -> [TIMEOUT][329] ([i915#7173])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][330] ([i915#9197]) -> [SKIP][331] ([i915#9424])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][332] ([i915#9424]) -> [SKIP][333] ([i915#9433])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-14/igt@kms_content_protection@mei-interface.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [SKIP][334] ([i915#9197]) -> [SKIP][335] ([i915#7118])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_content_protection@srm.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          [SKIP][336] ([i915#9197]) -> [SKIP][337] ([i915#5354]) +5 other tests skip
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          [SKIP][338] ([i915#9197]) -> [SKIP][339] ([i915#9067])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          [SKIP][340] ([i915#9197]) -> [SKIP][341] ([i915#4103] / [i915#4213])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          [SKIP][342] ([i915#9197]) -> [SKIP][343] ([i915#3555] / [i915#3840]) +1 other test skip
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          [SKIP][344] ([i915#3555] / [i915#3840]) -> [SKIP][345] ([i915#9197])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-dg2:          [SKIP][346] ([i915#3555] / [i915#5190]) -> [SKIP][347] ([i915#2672] / [i915#3555] / [i915#5190])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-dg2:          [SKIP][348] ([i915#3555]) -> [SKIP][349] ([i915#2672] / [i915#3555]) +1 other test skip
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          [SKIP][350] ([i915#8708]) -> [SKIP][351] ([i915#5354]) +2 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          [SKIP][352] ([i915#5354]) -> [SKIP][353] ([i915#8708]) +18 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][354] ([i915#5354]) -> [SKIP][355] ([i915#3458]) +13 other tests skip
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][356] ([i915#10433] / [i915#3458]) -> [SKIP][357] ([i915#5354])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][358] ([i915#10433] / [i915#3458]) -> [SKIP][359] ([i915#3458])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][360] ([i915#3458]) -> [SKIP][361] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [SKIP][362] ([i915#3458]) -> [SKIP][363] ([i915#5354])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-dg1:          [SKIP][364] ([i915#4423]) -> [SKIP][365]
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][366] ([i915#9197]) -> [SKIP][367] ([i915#3555] / [i915#8228]) +1 other test skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_hdr@static-swap.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
>     - shard-dg2:          [SKIP][368] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][369] ([i915#12247] / [i915#9423])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-dg2:          [SKIP][370] ([i915#12247] / [i915#8152]) -> [SKIP][371] ([i915#12247]) +1 other test skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-dg2:          [SKIP][372] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][373] ([i915#12247] / [i915#6953] / [i915#9423])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [FAIL][374] ([i915#9295]) -> [SKIP][375] ([i915#3361])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          [SKIP][376] ([i915#5190] / [i915#9197]) -> [SKIP][377] ([i915#11131] / [i915#5190])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          [SKIP][378] ([i915#9197]) -> [SKIP][379] ([i915#11131]) +2 other tests skip
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          [SKIP][380] ([i915#9197]) -> [SKIP][381] ([i915#3555]) +6 other tests skip
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-2/igt@kms_scaling_modes@scaling-mode-none.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-7/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][382] ([i915#9100]) -> [FAIL][383] ([i915#7484]) +1 other test fail
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15502/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>   [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
>   [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
>   [i915#12231]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12375]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8190
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9853]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9853
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15502 -> Patchwork_139771v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15502: f1561e6c62b5b5c3fe0276f2fbe7325e0d7c262d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8061: 8061
>   Patchwork_139771v1: f1561e6c62b5b5c3fe0276f2fbe7325e0d7c262d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139771v1/index.html
