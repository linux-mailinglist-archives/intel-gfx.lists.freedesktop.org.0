Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FC57E204A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 12:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A4810E06B;
	Mon,  6 Nov 2023 11:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9AAD10E06B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 11:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699271155; x=1730807155;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1gBfqpsyDvFEANKZdG0CGIBzH/Tp+ADco5OOOCNumVk=;
 b=Rtvz7zLg70nZSxqguk65F53kST6WLacmNo/rN6nrQNr35E2utO4C/u4u
 sdFG3pMh0Qq67N/OnyIqYK85sh7BiX8ZXh2WHceUNSZUc1EThhPtSlr2o
 ggZGKhhlvPFEWOd8ZWGtGKQSqYIF5NVf36aDMeCtyrjGi0xd7wr4U0oDq
 y9dGS4PFiTMSNTAnzYFWOrKqSwHkaBUGPfKFLlZmnmjC4ne7weEwPa6e3
 SdBD92yIWHtmlaNGyT5XdZ5nmxCWQJyp/eOhXdscf5OgFcZRaK6T1pdtp
 aMGCrTHkCwD7kS1Zzq8tE3RkApMq+Xjt0HFx5W+XbAFDkNOcj/RlS6mOS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="2248191"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="2248191"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 03:45:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="935774822"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="935774822"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 03:45:51 -0800
Date: Mon, 6 Nov 2023 13:45:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZUjR7DUWDIs7J15I@ideak-desk.fi.intel.com>
References: <20231102115935.2591979-1-imre.deak@intel.com>
 <169910582013.30093.18139252004336928504@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169910582013.30093.18139252004336928504@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=5Fmst=3A_Disable_DSC_on_ICL+_MST_outputs_=28rev3=29?=
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
Cc: lgci.bug.filing@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 04, 2023 at 01:50:20PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Disable DSC on ICL+ MST outputs (rev3)
> URL   : https://patchwork.freedesktop.org/series/125895/
> State : failure

Thanks for the review, pushed to -din with the commit log fixed.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13835_full -> Patchwork_125895v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_125895v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_125895v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/index.html
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_125895v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][1] +2 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress.html

Looks like a config issue, there's no graphics enumerated. Unrelated,
since the change only affects ICL hosts with DP MST sinks connected.

>   * igt@kms_flip@flip-vs-suspend@a-dp4:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_flip@flip-vs-suspend@a-dp4.html

Unrelated, since the change only affects ICL hosts with DP MST sinks
connected.

> #### Warnings ####
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          [SKIP][3] ([i915#6524] / [i915#6805]) -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane@pixel-format-source-clamping@pipe-a}:
>     - shard-rkl:          [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-4/igt@kms_plane@pixel-format-source-clamping@pipe-a.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_plane@pixel-format-source-clamping@pipe-a.html
> 
>   * {igt@kms_pm_rpm@basic-rte}:
>     - shard-dg2:          [PASS][7] -> [SKIP][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_pm_rpm@basic-rte.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_pm_rpm@basic-rte.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_125895v3_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33]) -> ([PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58]) ([i915#8293])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk9/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk9/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk9/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk8/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk8/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk8/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk8/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk5/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk5/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk3/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk3/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk3/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk2/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk3/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk5/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk6/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk6/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk6/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk8/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk8/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk8/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk9/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk9/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk9/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8411])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#7701])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][61] ([i915#9408])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy@vcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8414]) +5 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@drm_fdinfo@busy@vcs0.html
> 
>   * igt@drm_fdinfo@isolation@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#8414]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@drm_fdinfo@isolation@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][64] ([i915#7742])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8414]) +21 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@fbdev@unaligned-read:
>     - shard-rkl:          [PASS][66] -> [SKIP][67] ([i915#2582])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@fbdev@unaligned-read.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_caching@read-writes:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#4873])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_caching@read-writes.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#7697])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][70] ([i915#9364])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#6335])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [PASS][72] -> [FAIL][73] ([i915#6268])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([fdo#109314])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([fdo#109314])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#8555])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#8555])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#8555])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#280])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#280])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#280])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][82] ([i915#7892])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg1:          [PASS][83] -> [FAIL][84] ([i915#5784])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg1-17/igt@gem_eio@kms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-16/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4812])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4771])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4812]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#4525])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#6334])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl4/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg2:          NOTRUN -> [FAIL][90] ([i915#9606])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          NOTRUN -> [FAIL][91] ([i915#2842]) +4 other tests fail
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#3711])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3539])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3539] / [i915#4852]) +6 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([fdo#109283] / [i915#5107])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([fdo#112283]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#3281]) +7 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3281]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3281]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          [PASS][100] -> [SKIP][101] ([i915#3281]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3281]) +13 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4537] / [i915#4812])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4537] / [i915#4812])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-rkl:          NOTRUN -> [ABORT][105] ([i915#7975] / [i915#8213])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4860]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4860]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4613]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl2/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#4613]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#8289])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_media_vme:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#284])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4083]) +3 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4077]) +4 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_mmap_gtt@bad-object.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#4077]) +8 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4077]) +13 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4083]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4083]) +4 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3282]) +5 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#3282]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3282]) +4 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3282]) +6 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4270]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#4270]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4270])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#4270])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#8428]) +5 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#768])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#8411])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4079]) +3 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4079])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4885])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([fdo#109312])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3297]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3297] / [i915#4880]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#3297]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([fdo#109289])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([fdo#109289])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen7_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([fdo#109289]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@gen7_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#2527]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#2856])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#2856]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          [PASS][143] -> [SKIP][144] ([i915#2527])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#2527]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_fb_tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#4881])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#7178])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8925]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8925]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park@gt1.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8925])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#8925])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4387])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([fdo#109303])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-6/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([fdo#109302])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4215] / [i915#5190])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#4212])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#4212])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@crc@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][158] ([i915#8247]) +3 other tests fail
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html
> 
>   * igt@kms_atomic@plane-overlay-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#1845] / [i915#4098])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_atomic@plane-overlay-legacy.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#1769] / [i915#3555])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#4538] / [i915#5286])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#5286]) +4 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#5286])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-dg2:          [PASS][164] -> [SKIP][165] ([fdo#109315]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [FAIL][166] ([i915#5138])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#111614] / [i915#3638])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3638])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([fdo#111614]) +8 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([fdo#111614]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#6187]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         [PASS][172] -> [FAIL][173] ([i915#3743]) +1 other test fail
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([fdo#109315] / [i915#5190])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#5190]) +24 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4538]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([fdo#111615])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([fdo#111615]) +5 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([fdo#110723]) +2 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#2705])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3742])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#4087]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([fdo#111827])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([fdo#111827]) +2 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111827])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([fdo#111827])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#7828]) +10 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#7828]) +4 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#7828]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#7828]) +5 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#6944])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#3299])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#3299])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3299])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#7116])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#7118]) +1 other test skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3555]) +6 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#3359]) +2 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3555] / [i915#8814]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#3359]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3359])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#3359])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][204] -> [DMESG-FAIL][205] ([i915#118])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk2/igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([fdo#111767] / [fdo#111825])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([fdo#111825]) +16 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#4103])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#4103] / [i915#4213] / [i915#5608])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#1845] / [i915#4098]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3546]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([fdo#109274] / [i915#5354]) +6 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-apl:          NOTRUN -> [SKIP][214] ([fdo#109271] / [fdo#111767]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][215] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-apl:          [PASS][216] -> [FAIL][217] ([i915#2346])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][218] -> [FAIL][219] ([i915#2346])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#4103] / [i915#4213])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#9226] / [i915#9261]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#9227])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#8588])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3804])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#1257])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#8812])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#3840])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#3840])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([fdo#109274]) +9 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-snb:          NOTRUN -> [SKIP][230] ([fdo#109271]) +7 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-snb4/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#3637]) +5 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8381])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#8381])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([fdo#111825]) +7 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#8810])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#2672]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#2672]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([fdo#109315]) +5 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#2672] / [i915#3555])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#2672]) +4 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#1849] / [i915#4098]) +1 other test skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#8708]) +8 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#5354]) +43 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][246] ([fdo#109280])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#1825]) +25 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#8708]) +5 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#8708]) +22 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3023]) +16 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3458]) +5 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3458]) +20 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([fdo#111825] / [i915#1825]) +26 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8228]) +1 other test skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@kms_hdr@bpc-switch.html
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3555] / [i915#8228]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_invalid_mode@bad-vsync-end:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#3555] / [i915#4098])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#4816])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#6301])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([fdo#109289])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#2575]) +41 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][261] ([i915#7862]) +1 other test fail
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#3582]) +3 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#3555] / [i915#8821])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#3555]) +2 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#5176] / [i915#9423]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#5235]) +15 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#3555] / [i915#5235]) +2 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#5235]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#5235]) +15 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-dp-1:
>     - shard-apl:          NOTRUN -> [SKIP][271] ([fdo#109271]) +98 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#5235]) +8 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#6524] / [i915#6805])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#658])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#658]) +1 other test skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-apl:          NOTRUN -> [SKIP][276] ([fdo#109271] / [i915#658]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][277] ([fdo#111068] / [i915#658]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#658]) +3 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@cursor_blt:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#1072]) +4 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_psr@primary_render:
>     - shard-dg1:          NOTRUN -> [SKIP][280] ([i915#1072] / [i915#4078]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@kms_psr@primary_render.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#1072]) +8 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#5461] / [i915#658])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#5461] / [i915#658])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#5289])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#4235])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#3555]) +2 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][287] ([i915#5465]) +1 other test fail
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#3555] / [i915#4098]) +2 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#3555] / [i915#8809])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#8623])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-rkl:          [PASS][291] -> [FAIL][292] ([i915#9196])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vblank@wait-forked:
>     - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#4098]) +2 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_vblank@wait-forked.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#2437]) +1 other test skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@create-destroy-userspace-config:
>     - shard-dg2:          [PASS][295] -> [SKIP][296] ([i915#5608]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@perf@create-destroy-userspace-config.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@perf@create-destroy-userspace-config.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#7387])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-7/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][298] ([i915#7484])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-dg1:          NOTRUN -> [SKIP][299] ([fdo#109289] / [i915#2433])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#2433])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          NOTRUN -> [FAIL][301] ([i915#4349]) +3 other tests fail
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@faulting-read:
>     - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#5608]) +3 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@perf_pmu@faulting-read.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#8516])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_udl:
>     - shard-dg2:          NOTRUN -> [SKIP][304] ([fdo#109291])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#3291] / [i915#3708])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#3708])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
>     - shard-mtlp:         NOTRUN -> [FAIL][307] ([i915#9583])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-2/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
>     - shard-rkl:          NOTRUN -> [FAIL][308] ([i915#9583])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
>     - shard-apl:          NOTRUN -> [FAIL][309] ([i915#9583])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl4/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
>     - shard-dg2:          NOTRUN -> [FAIL][310] ([i915#9582])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-7/igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
>     - shard-dg2:          [PASS][311] -> [SKIP][312] ([i915#2575]) +26 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>     - shard-dg1:          NOTRUN -> [SKIP][313] ([i915#2575]) +5 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html
> 
>   * igt@v3d/v3d_submit_csd@bad-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#2575]) +8 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html
> 
>   * igt@v3d/v3d_wait_bo@bad-bo:
>     - shard-rkl:          NOTRUN -> [SKIP][315] ([fdo#109315]) +8 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-6/igt@v3d/v3d_wait_bo@bad-bo.html
> 
>   * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#7711]) +9 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-2/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
>     - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#7711]) +6 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-8/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-willneed:
>     - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#7711]) +4 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@vc4/vc4_purgeable_bo@mark-willneed.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][319] ([i915#7711]) +2 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-13/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][320] ([i915#7742]) -> [PASS][321]
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@fbdev@pan:
>     - shard-rkl:          [SKIP][322] ([i915#2582]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@fbdev@pan.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@fbdev@pan.html
> 
>   * igt@gem_ctx_shared@q-smoketest@vcs1:
>     - shard-dg2:          [INCOMPLETE][324] -> [PASS][325]
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-7/igt@gem_ctx_shared@q-smoketest@vcs1.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-6/igt@gem_ctx_shared@q-smoketest@vcs1.html
> 
>   * igt@gem_eio@wait-wedge-10ms:
>     - shard-mtlp:         [ABORT][326] ([i915#9414]) -> [PASS][327] +2 other tests pass
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-mtlp-8/igt@gem_eio@wait-wedge-10ms.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-7/igt@gem_eio@wait-wedge-10ms.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-rkl:          [SKIP][328] ([i915#9591]) -> [PASS][329]
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [FAIL][330] ([i915#2842]) -> [PASS][331]
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][332] ([i915#2842]) -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [FAIL][334] ([i915#2842]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-mtlp:         [DMESG-FAIL][336] ([i915#8962]) -> [PASS][337]
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-1/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-rkl:          [SKIP][338] ([i915#3281]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [ABORT][340] ([i915#7975] / [i915#8213]) -> [PASS][341]
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-apl:          [INCOMPLETE][342] -> [PASS][343]
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-apl6/igt@gem_mmap_gtt@cpuset-medium-copy.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl7/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          [SKIP][344] ([i915#3282]) -> [PASS][345] +3 other tests pass
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          [SKIP][346] ([i915#8411]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          [SKIP][348] ([i915#2527]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][350] ([i915#3743]) -> [PASS][351] +2 other tests pass
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][352] ([i915#1845] / [i915#4098]) -> [PASS][353] +2 other tests pass
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * {igt@kms_ccs@pipe-a-bad-rotation-90-y-tiled-gen12-rc-ccs}:
>     - shard-rkl:          [SKIP][354] ([i915#4098]) -> [PASS][355]
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_ccs@pipe-a-bad-rotation-90-y-tiled-gen12-rc-ccs.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_ccs@pipe-a-bad-rotation-90-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][356] ([i915#2346]) -> [PASS][357]
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][358] ([i915#79]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][360] ([i915#1849] / [i915#4098]) -> [PASS][361] +3 other tests pass
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
>     - shard-rkl:          [SKIP][362] ([i915#9519]) -> [PASS][363] +1 other test pass
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][364] ([i915#9196]) -> [PASS][365] +1 other test pass
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-tglu:         [FAIL][366] ([i915#9196]) -> [PASS][367]
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [FAIL][368] ([i915#4349]) -> [PASS][369] +1 other test pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-3/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-mtlp:         [SKIP][370] ([i915#9432]) -> [PASS][371]
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-mtlp-2/igt@perf_pmu@frequency@gt0.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-mtlp-3/igt@perf_pmu@frequency@gt0.html
>     - shard-dg1:          [SKIP][372] ([i915#9432]) -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg1-18/igt@perf_pmu@frequency@gt0.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg1-18/igt@perf_pmu@frequency@gt0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-dg2:          [SKIP][374] ([i915#3281]) -> [SKIP][375] ([i915#2575])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_bad_reloc@negative-reloc-lut.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          [SKIP][376] ([i915#3936]) -> [SKIP][377] ([i915#2575])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_busy@semaphore.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_busy@semaphore.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          [SKIP][378] ([i915#4771]) -> [SKIP][379] ([i915#2575])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          [SKIP][380] ([i915#4036]) -> [SKIP][381] ([i915#2575])
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_mmap_gtt@ptrace:
>     - shard-dg2:          [SKIP][382] ([i915#4077]) -> [SKIP][383] ([i915#2575]) +1 other test skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_mmap_gtt@ptrace.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_mmap_gtt@ptrace.html
> 
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - shard-dg2:          [SKIP][384] ([i915#4083]) -> [SKIP][385] ([i915#2575])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_mmap_wc@write-gtt-read-wc.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_mmap_wc@write-gtt-read-wc.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg2:          [SKIP][386] ([i915#3282]) -> [SKIP][387] ([i915#2575])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg2:          [SKIP][388] ([i915#4270]) -> [SKIP][389] ([i915#2575])
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          [SKIP][390] ([i915#5190]) -> [SKIP][391] ([i915#2575] / [i915#5190])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-dg2:          [SKIP][392] ([fdo#109289]) -> [SKIP][393] ([i915#2575])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@gen3_mixed_blits.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@gen3_mixed_blits.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][394] ([i915#1845] / [i915#4098]) -> [SKIP][395] ([i915#1769] / [i915#3555])
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][396] ([i915#4098]) -> [SKIP][397] ([i915#5286]) +1 other test skip
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          [SKIP][398] ([i915#5286]) -> [SKIP][399] ([i915#4098])
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][400] ([i915#1845] / [i915#4098]) -> [SKIP][401] ([fdo#111614] / [i915#3638])
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-dg2:          [SKIP][402] ([fdo#111614]) -> [SKIP][403] ([fdo#109315])
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-dg2:          [SKIP][404] ([i915#5190]) -> [SKIP][405] ([fdo#109315] / [i915#5190])
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-rkl:          [SKIP][406] ([fdo#110723]) -> [SKIP][407] ([i915#1845] / [i915#4098])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][408] ([i915#1845] / [i915#4098]) -> [SKIP][409] ([fdo#110723]) +1 other test skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg2:          [SKIP][410] ([i915#4538] / [i915#5190]) -> [SKIP][411] ([fdo#109315] / [i915#5190]) +1 other test skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          [SKIP][412] ([fdo#111615]) -> [SKIP][413] ([i915#1845] / [i915#4098])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
>     - shard-dg2:          [SKIP][414] ([i915#7828]) -> [SKIP][415] ([i915#2575]) +1 other test skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][416] ([i915#3116]) -> [SKIP][417] ([i915#1845] / [i915#4098])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          [SKIP][418] ([i915#7118]) -> [SKIP][419] ([i915#1845] / [i915#4098])
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_content_protection@srm.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-rkl:          [SKIP][420] ([i915#4098]) -> [SKIP][421] ([i915#3555]) +1 other test skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          [SKIP][422] ([i915#3359]) -> [SKIP][423] ([i915#4098])
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][424] ([fdo#111825]) -> [SKIP][425] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-dg2:          [SKIP][426] ([fdo#109274] / [i915#5354]) -> [SKIP][427] ([i915#2575])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][428] ([i915#3555] / [i915#3840]) -> [SKIP][429] ([i915#4098])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][430] ([fdo#110189] / [i915#3955]) -> [SKIP][431] ([i915#3955])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          [SKIP][432] ([i915#4881]) -> [SKIP][433] ([i915#2575])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_fence_pin_leak.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2:          [SKIP][434] ([fdo#109274]) -> [SKIP][435] ([i915#2575]) +1 other test skip
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          [SKIP][436] ([fdo#111825] / [i915#1825]) -> [SKIP][437] ([i915#1849] / [i915#4098]) +6 other tests skip
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][438] ([i915#1849] / [i915#4098]) -> [SKIP][439] ([fdo#111825] / [i915#1825]) +7 other tests skip
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][440] ([i915#5354]) -> [SKIP][441] ([fdo#109315]) +4 other tests skip
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][442] ([i915#3023]) -> [SKIP][443] ([i915#1849] / [i915#4098]) +5 other tests skip
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][444] ([i915#1849] / [i915#4098]) -> [SKIP][445] ([fdo#111825])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          [SKIP][446] ([i915#8708]) -> [SKIP][447] ([fdo#109315]) +5 other tests skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][448] ([i915#1849] / [i915#4098]) -> [SKIP][449] ([i915#3023]) +3 other tests skip
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][450] ([i915#3458]) -> [SKIP][451] ([fdo#109315]) +4 other tests skip
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][452] ([i915#4070] / [i915#4816]) -> [SKIP][453] ([i915#4816])
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          [SKIP][454] ([i915#6301]) -> [SKIP][455] ([i915#2575])
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-dg2:          [SKIP][456] ([i915#1072]) -> [SKIP][457] ([fdo#109315])
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13835/shard-dg2-11/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/shard-dg2-11/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_scal
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125895v3/index.html
