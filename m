Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E538836C7C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 18:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5AA10E73B;
	Mon, 22 Jan 2024 17:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Mon, 22 Jan 2024 17:06:36 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A460410EBF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 17:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705943196; x=1737479196;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=ID2IcjJsdi8zk6tNDr+sGX2q9UBIl+25MAyZYLbuzI0=;
 b=lhQwlY38go7US6OfP1QxFaSzlft/2BYlFiXwYiIk/DPr+wdk7Vxn/86u
 yu/LcpxJ7duSdXgmaGGu9TuaYH28Te4vcJz4NvifF7IM/VZKi1dAA6FKw
 yhvUoA4x7fVkZ96PZ2m8RfOi6J8ZK0jdqmsUZdJ6VLzUepb8k1RF+p3Cc
 Bp++tzSzbXp58jNqbm29nrUMpFqNzvVaJhkQdHvCkXJI2knoFOkauka4n
 KfFTMvjzW8R3oQx5xYpYlmPkcLrgq07W4wyqY5tpdcWCDEGtgZvPmeu1m
 jbLDFijQlFNV/eY+a4gXrqsdaGpTAx6x27NmSzR537dAXiNzRFpvmlNe4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="154317"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; 
   d="scan'208";a="154317"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 08:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="819780459"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="819780459"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Jan 2024 08:59:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Jan 2024 18:59:24 +0200
Date: Mon, 22 Jan 2024 18:59:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Cursor vblank evasion (rev4)
Message-ID: <Za6e7IWITbPCM_rE@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <170593578354.646838.4808994192479271047@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170593578354.646838.4808994192479271047@5338d5abeb45>
X-Patchwork-Hint: comment
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

On Mon, Jan 22, 2024 at 03:03:03PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Cursor vblank evasion (rev4)
> URL   : https://patchwork.freedesktop.org/series/127744/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14153_full -> Patchwork_127744v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_127744v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127744v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_127744v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-tglu:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-tglu-8/igt@gem_workarounds@suspend-resume.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-9/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@kms_cursor_legacy@torture-move@all-pipes:
>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb7/igt@kms_cursor_legacy@torture-move@all-pipes.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb7/igt@kms_cursor_legacy@torture-move@all-pipes.html

Hmm. So this time it was snb that ran afoul of the cpu scheduling
latency :(

I think I'll smash this in regardless now since it helps with some
more serious issues apparently. I'll keep an eye on the ci to see
how many flakes this generate, and try to think of something to
avoid them. Maybe qos or something...

> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab:
>     - shard-dg1:          [PASS][5] -> [DMESG-WARN][6] +1 other test dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg1-16/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono:
>     - shard-glk:          [PASS][7] -> [DMESG-WARN][8] +1 other test dmesg-warn
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_mono.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
>     - shard-rkl:          [FAIL][9] -> [DMESG-FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_127744v4_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49]) ([i915#8293])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk9/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk9/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk9/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk8/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk8/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk8/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk3/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk9/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk9/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk9/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk5/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk5/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#8411]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-check-all@ccs3:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#8414]) +9 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@drm_fdinfo@busy-check-all@ccs3.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#8414])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][53] ([i915#7297])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-2/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#7697])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#6335])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][56] -> [FAIL][57] ([i915#6268])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8555])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8555]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#1099]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb2/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#280])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4812])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271]) +42 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb2/igt@gem_exec_capture@many-4k-zero.html
>     - shard-dg1:          NOTRUN -> [FAIL][64] ([i915#9606])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][65] ([i915#2842])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [PASS][66] -> [FAIL][67] ([i915#2842]) +2 other tests fail
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([fdo#109313])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3539])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([fdo#112283])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3281]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3281]) +4 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4537] / [i915#4812])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4860])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4613])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#8289])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#284])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4077]) +6 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_mmap_gtt@basic-read-write-distinct.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4083])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4083]) +4 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3282]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_pread@self:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282]) +2 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_pread@self.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4270])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#4270])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#8428])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4885])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([fdo#110542])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3323])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3297])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#3281]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3297])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([fdo#109289]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#2527])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#2527])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#2856])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#2856])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [PASS][99] -> [INCOMPLETE][100] ([i915#9200])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#8399])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#6590])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#6621])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][104] -> [SKIP][105] ([i915#7984])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-mtlp-4/igt@i915_power@sanity.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#7707])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4215] / [i915#5190])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#9531])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#1769])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5286])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][112] ([fdo#111615] / [i915#5286])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [FAIL][113] ([i915#5138])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([fdo#111614] / [i915#3638])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([fdo#111614]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3638])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#5190]) +10 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4538])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([fdo#111615])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#110723]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([fdo#111615])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#2705])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#5354] / [i915#6095]) +7 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y-tiled-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#5354] / [i915#6095]) +8 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#5354] / [i915#6095]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#5354] / [i915#6095]) +6 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_ccs@pipe-d-bad-rotation-90-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#5354]) +5 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#3742])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4087]) +3 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#7828]) +7 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#111827]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#7828]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_chamelium_edid@dp-edid-read.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#7828]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7118])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3299])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3299])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#7118])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3555])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3359]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3359])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#3555])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#3555] / [i915#8814]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#109274] / [i915#5354]) +3 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#9809])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4103] / [i915#4213])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([fdo#109274])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([fdo#109274] / [fdo#111767] / [i915#5354]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][149] ([i915#2346])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][150] -> [FAIL][151] ([i915#2346])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#9833])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3555]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3555] / [i915#3840])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4854])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3637]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([fdo#109274] / [i915#3637])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([fdo#111825])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([fdo#109274] / [fdo#111767])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([fdo#111825] / [i915#9934])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([fdo#109274]) +5 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2672]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#2587] / [i915#2672])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#2672])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#8708]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-snb:          [PASS][166] -> [SKIP][167] ([fdo#109271]) +5 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#1825]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([fdo#111825]) +5 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3458]) +10 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8708]) +13 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#5354]) +50 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#3023]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#10055])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#3458]) +2 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([fdo#109280])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([fdo#111825] / [i915#1825]) +10 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([fdo#110189])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8228]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#6301])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([fdo#109289]) +1 other test skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][182] ([i915#4573]) +1 other test fail
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([fdo#109274] / [i915#5354] / [i915#9423])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#9423]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#9423]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9423]) +11 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5235]) +3 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#5235]) +15 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][189] ([fdo#109271]) +220 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5235] / [i915#9423]) +11 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#9812])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#3361])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9519])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#9519])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9683])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9683])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([fdo#111068] / [i915#9683])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#4235])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#8623])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][201] ([i915#9196])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][202] ([i915#9196])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][203] ([fdo#109271] / [i915#2437]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2435])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3708] / [i915#4077])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#9917])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][207] ([i915#9779])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk1/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-0:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([fdo#109315]) +2 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@v3d/v3d_create_bo@create-bo-0.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-exceed:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#2575]) +1 other test skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@v3d/v3d_perfmon@create-perfmon-exceed.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([fdo#109315] / [i915#2575]) +2 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@job-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2575]) +2 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@v3d/v3d_submit_cl@job-perfmon.html
> 
>   * igt@v3d/v3d_wait_bo@used-bo-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#2575]) +7 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-1/igt@v3d/v3d_wait_bo@used-bo-1ns.html
> 
>   * igt@vc4/vc4_label_bo@set-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#7711]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@vc4/vc4_label_bo@set-bad-handle.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#7711]) +3 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-0ns:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#7711]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-1/igt@vc4/vc4_wait_bo@used-bo-0ns.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-1ns:
>     - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#7711])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@vc4/vc4_wait_bo@used-bo-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [FAIL][217] ([i915#7742]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - shard-glk:          [ABORT][219] ([i915#8190]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk7/igt@gem_barrier_race@remote-request@rcs0.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk9/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][221] ([i915#7297]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][223] ([i915#2842]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][225] ([i915#9200] / [i915#9849]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [INCOMPLETE][227] ([i915#9820] / [i915#9849]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [WARN][229] ([i915#7356]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [FAIL][231] ([i915#3591]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          [DMESG-WARN][233] ([i915#118]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk3/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [FAIL][235] ([i915#10031]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [FAIL][237] ([i915#5138]) -> [PASS][238] +1 other test pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][239] ([i915#3743]) -> [PASS][240] +1 other test pass
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][241] ([fdo#109271]) -> [PASS][242] +9 other tests pass
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][243] ([i915#9519]) -> [PASS][244]
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][245] ([i915#9519]) -> [PASS][246] +1 other test pass
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-tglu:         [ABORT][247] -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-tglu-9/igt@kms_pm_rpm@system-suspend-modeset.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-tglu-4/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab:
>     - shard-snb:          [DMESG-WARN][249] -> [PASS][250] +1 other test pass
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
>     - shard-rkl:          [DMESG-WARN][251] -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
>     - shard-mtlp:         [DMESG-WARN][253] -> [PASS][254]
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-mtlp-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-7/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010:
>     - shard-dg1:          [DMESG-WARN][255] -> [PASS][256] +1 other test pass
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-dg1-16/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb2101010.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [FAIL][257] ([i915#4349]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-mtlp-4/igt@perf_pmu@busy-double-start@rcs0.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          [WARN][259] ([i915#2658]) -> [INCOMPLETE][260] ([i915#10042])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-glk8/igt@gem_pread@exhaustion.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-glk3/igt@gem_pread@exhaustion.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][261] ([i915#9820]) -> [ABORT][262] ([i915#10131] / [i915#9820])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-snb:          [INCOMPLETE][263] ([i915#8816]) -> [SKIP][264] ([fdo#109271])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-snb7/igt@kms_content_protection@type1.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-snb4/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][265] ([fdo#110189] / [i915#3955]) -> [SKIP][266] ([i915#3955])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14153/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
>   [i915#10042]: https://gitlab.freedesktop.org/drm/intel/issues/10042
>   [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8190]: https://gitlab.freedesktop.org/drm/intel/issues/8190
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14153 -> Patchwork_127744v4
> 
>   CI-20190529: 20190529
>   CI_DRM_14153: a5256604fb738d47d5dad7f398ef562734cae5cc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7683: 7683
>   Patchwork_127744v4: a5256604fb738d47d5dad7f398ef562734cae5cc @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v4/index.html

-- 
Ville Syrjälä
Intel
