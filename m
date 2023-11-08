Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23387E5ABF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 16:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F1B10E16D;
	Wed,  8 Nov 2023 15:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC9B10E16D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699459162; x=1730995162;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=4Wo6JsOVxTFub6YZgOAWwZ3dCA/2UmqRve+H0GvN1z4=;
 b=ONWbtWklT1ESIb2j1KFenFaJm9+BCQLn4sTQO66TI4dOScp9UtGELwiB
 9sXtGYDVPXdjk6QBmgq1LJM5oCoO2U0ov4dIEs/qLQ2gJLtfzKZA8KRJJ
 tqRYyl0oI2N6obhtla3ftjDoCXNr49ZXGbpMAgmtrl59BFUgHgKcOk+A5
 2gtXI00AgA+mFVf0ZKObUGkv5KN+j0Un+eaXbA4Cr1zl+mvzgrA472hzp
 ZHXF8sOlZ9ZnIMyMnLc62zF0UpA4AcSMEr8VzlNY+xCK8/DoBH0FOw3Z8
 DGC/yK98rtNqSuMc6vE76IqkGzT83HsoKWY+lwVjNhwLmEH1yHx1ww/Lh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="454096454"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="454096454"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 07:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="833522277"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="833522277"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 07:59:17 -0800
Date: Wed, 8 Nov 2023 17:59:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Lyude Paul <lyude@redhat.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>
Message-ID: <ZUuwMg6HketUguJs@ideak-desk.fi.intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <169935062346.21169.11113061710102761076@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169935062346.21169.11113061710102761076@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev16=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 07, 2023 at 09:50:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Improve BW management on MST links (rev16)
> URL   : https://patchwork.freedesktop.org/series/125490/
> State : success

Patchset pushed to drm-intel-next, thanks for the reviews, acks.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13844_full -> Patchwork_125490v16_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_125490v16_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_125490v16_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-mtlp0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_125490v16_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-snb:          [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-snb2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-snb6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_125490v16_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [PASS][3] -> [SKIP][4] ([i915#8411]) +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@render-ccs:
>     - shard-dg2:          NOTRUN -> [FAIL][6] ([i915#6122])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@api_intel_bb@render-ccs.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@fbdev@eof:
>     - shard-rkl:          [PASS][8] -> [SKIP][9] ([i915#2582]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@fbdev@eof.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@fbdev@eof.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#4098] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#7697])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#6335])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#8562])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@ccs2:
>     - shard-dg2:          [PASS][16] -> [FAIL][17] ([fdo#103375]) +4 other tests fail
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@ccs2.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@ccs2.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#8555])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#5882]) +9 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_ctx_sseu@invalid-args.html
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#280])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-mtlp:         [PASS][22] -> [ABORT][23] ([i915#7975] / [i915#8213] / [i915#9414])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-1/igt@gem_eio@hibernate.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4771])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4812]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4525]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-rkl:          [PASS][27] -> [SKIP][28] ([i915#9591])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4473])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][30] ([i915#2842])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [PASS][31] -> [FAIL][32] ([i915#2842])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][33] -> [FAIL][34] ([i915#2842]) +2 other tests fail
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +5 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([fdo#112283])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([fdo#112283])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3281]) +14 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#3281])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3281]) +12 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-rkl:          [PASS][41] -> [SKIP][42] ([i915#3281]) +10 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_exec_reloc@basic-write-wc-noreloc.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-rkl:          NOTRUN -> [ABORT][43] ([i915#7975] / [i915#8213])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4860]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-glk5/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4613]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][47] -> [TIMEOUT][48] ([i915#5493])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4613]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-apl4/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4613]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@big-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4083]) +6 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_mmap@big-bo.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +17 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@isolation:
>     - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4077])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_mmap_gtt@isolation.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4083]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3282]) +5 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3282]) +5 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [PASS][57] -> [SKIP][58] ([i915#3282]) +10 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_pwrite@basic-random.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270]) +3 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_pxp@create-regular-context-2.html
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4270]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3282]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#768]) +3 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#8428]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8411])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4079])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4885])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_spin_batch@spin-all-new:
>     - shard-dg2:          NOTRUN -> [FAIL][67] ([i915#5889])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_spin_batch@spin-all-new.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4079]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4879])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3323])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3297])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3297]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3297]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3297] / [i915#4880]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#3318])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@gem_userptr_blits@vma-merge.html
>     - shard-rkl:          NOTRUN -> [FAIL][76] ([i915#3318])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#2856]) +5 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#2856])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [PASS][79] -> [SKIP][80] ([i915#2527]) +5 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#2527]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#6412])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#8399]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#8925])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [PASS][85] -> [SKIP][86] ([i915#7984])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@i915_power@sanity.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([fdo#109302])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#5723])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][89] ([i915#9311])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4212]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4212])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4215] / [i915#5190])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#1845] / [i915#4098]) +10 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_async_flips@crc.html
> 
>   * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [FAIL][94] ([i915#8247]) +3 other tests fail
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_async_flips@crc@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][95] ([i915#8247]) +3 other tests fail
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#6228])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#1769] / [i915#3555])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#5286]) +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [PASS][99] -> [FAIL][100] ([i915#5138])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([fdo#111614]) +5 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([fdo#111614]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#5190]) +17 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([fdo#111614] / [i915#3638]) +5 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([fdo#111615]) +3 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([fdo#110723]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#2705])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4087] / [i915#7213])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#7213] / [i915#9010]) +3 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([fdo#111827]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_chamelium_color@ctm-negative.html
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([fdo#111827])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#7828]) +4 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#7828]) +9 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#7828]) +5 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd.html
> 
>   * igt@kms_color@ctm-green-to-red@pipe-b:
>     - shard-rkl:          [PASS][116] -> [SKIP][117] ([i915#4098]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_color@ctm-green-to-red@pipe-b.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#6944])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3299]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3116])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][121] ([i915#7173]) +1 other test timeout
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-apl3/igt@kms_content_protection@lic@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#7118]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3359]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8814])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3555]) +7 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3359])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109274] / [i915#5354]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([fdo#111767] / [fdo#111825])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#4103]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3546]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4103] / [i915#4213])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3804])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#1257])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#8812])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3555] / [i915#3840])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3555] / [i915#3840])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([fdo#109274]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([fdo#109274] / [fdo#111767])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8381]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([fdo#111825]) +4 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#3637]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][144] ([i915#8841])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@bo-too-big-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3637] / [i915#4098]) +10 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_flip@bo-too-big-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#2672]) +5 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8810])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#2672] / [i915#3555])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#2672])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3555]) +11 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2672]) +6 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([fdo#109285])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2:          [PASS][153] -> [FAIL][154] ([i915#6880])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [PASS][155] -> [SKIP][156] ([i915#1849] / [i915#4098]) +17 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8708]) +12 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#8708]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3023]) +18 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#1825]) +13 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#111825] / [i915#1825]) +25 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-apl:          NOTRUN -> [SKIP][162] ([fdo#109271]) +131 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#5460])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3458]) +22 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#5354]) +36 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#6118])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8228])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3555] / [i915#4098])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#6301])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([fdo#109289]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([fdo#109289]) +2 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@bad-source:
>     - shard-rkl:          [PASS][172] -> [SKIP][173] ([i915#1845] / [i915#4098]) +22 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_pipe_crc_basic@bad-source.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][174] ([fdo#109271]) +28 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-snb1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          [PASS][175] -> [ABORT][176] ([i915#180])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#4098] / [i915#8825])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][178] ([i915#4573]) +1 other test fail
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-glk5/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][179] ([i915#8292])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][180] ([i915#8292])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#4098] / [i915#8152])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5235]) +7 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5235]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#8152]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#4098] / [i915#6953] / [i915#8152])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#5235]) +2 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#5235])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5235]) +5 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#6524] / [i915#6805]) +1 other test skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [PASS][191] -> [SKIP][192] ([i915#1849]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#658])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#658])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-glk5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][195] ([fdo#109271] / [i915#658]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#658]) +3 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([fdo#111068] / [i915#658]) +1 other test skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#1072]) +4 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-glk:          NOTRUN -> [SKIP][199] ([fdo#109271]) +36 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-glk5/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#1072]) +7 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#5461] / [i915#658])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#5289])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#4235]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8809])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([fdo#109309])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
>     - shard-mtlp:         [PASS][206] -> [FAIL][207] ([i915#9196])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
> 
>   * igt@kms_vblank@wait-forked-busy-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#4098]) +21 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_vblank@wait-forked-busy-hang.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#3555] / [i915#8808])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-8/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#2437])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#2437])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@enable-disable@0-rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][212] ([i915#8724])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [PASS][213] -> [SKIP][214] ([i915#2436])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#7387])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#8850])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][217] ([i915#6806])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][218] ([i915#5793])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#8516])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_udl:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([fdo#109291])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3708] / [i915#4077])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3291] / [i915#3708])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([fdo#109295] / [i915#3708])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
>     - shard-rkl:          NOTRUN -> [FAIL][224] ([i915#9583]) +1 other test fail
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
>     - shard-dg2:          NOTRUN -> [FAIL][225] ([i915#9583])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
>     - shard-snb:          NOTRUN -> [FAIL][226] ([i915#9583])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-snb7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([fdo#109315]) +7 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#2575]) +4 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_submit_csd@bad-flag:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#2575]) +13 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-11/igt@v3d/v3d_submit_csd@bad-flag.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-4096:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#7711]) +9 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-2/igt@vc4/vc4_create_bo@create-bo-4096.html
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#7711]) +6 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@vc4/vc4_create_bo@create-bo-4096.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#7711]) +3 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][233] ([i915#7742]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@fbdev@nullptr:
>     - shard-rkl:          [SKIP][235] ([i915#2582]) -> [PASS][236] +1 other test pass
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@fbdev@nullptr.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@fbdev@nullptr.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][237] ([i915#6268]) -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [FAIL][239] ([i915#6268]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - shard-rkl:          [SKIP][241] ([i915#6252]) -> [PASS][242] +1 other test pass
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-mtlp:         [ABORT][243] ([i915#9414]) -> [PASS][244]
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-5/igt@gem_eio@in-flight-contexts-10ms.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-mtlp-5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - shard-rkl:          [SKIP][245] ([Intel XE#874]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][247] ([i915#2842]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][249] ([i915#2842]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          [SKIP][251] ([fdo#109313]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          [SKIP][253] ([i915#3281]) -> [PASS][254] +13 other tests pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-noreloc.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][255] ([i915#7276]) -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-rkl:          [SKIP][257] ([fdo#111656]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gem_mmap_gtt@coherency.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pread@snoop:
>     - shard-rkl:          [SKIP][259] ([i915#3282]) -> [PASS][260] +3 other tests pass
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_pread@snoop.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_pread@snoop.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          [SKIP][261] ([i915#8411]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          [SKIP][263] ([i915#2527]) -> [PASS][264] +3 other tests pass
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_hangman@engine-engine-error@bcs0:
>     - shard-rkl:          [SKIP][265] ([i915#9588]) -> [PASS][266]
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-dg1:          [FAIL][267] ([i915#3591]) -> [PASS][268]
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][269] ([i915#7790]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-snb7/igt@i915_pm_rps@reset.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][271] ([i915#1845] / [i915#4098]) -> [PASS][272] +33 other tests pass
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:
>     - shard-rkl:          [SKIP][273] ([i915#4098]) -> [PASS][274] +18 other tests pass
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][275] ([i915#1849] / [i915#4098]) -> [PASS][276] +12 other tests pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * {igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:
>     - shard-rkl:          [SKIP][277] ([i915#9519]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [SKIP][279] ([i915#1849]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-rkl:          [INCOMPLETE][281] ([i915#8875] / [i915#9569]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_rotation_crc@bad-pixel-format.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * {igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3}:
>     - shard-dg1:          [FAIL][283] ([i915#9196]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][285] ([i915#9196]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][287] ([i915#7484]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][289] ([i915#7957]) -> [SKIP][290] ([i915#3555])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][291] ([i915#7957]) -> [SKIP][292] ([i915#9323])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_ccs@suspend-resume.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [SKIP][293] ([i915#9591]) -> [FAIL][294] ([i915#2842])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg1:          [SKIP][295] ([i915#2527] / [i915#4423]) -> [SKIP][296] ([i915#2527])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-16/igt@gen9_exec_parse@bb-secure.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][297] ([i915#1769] / [i915#3555]) -> [SKIP][298] ([i915#1845] / [i915#4098]) +1 other test skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][299] ([i915#4098]) -> [SKIP][300] ([i915#5286]) +6 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][301] ([i915#5286]) -> [SKIP][302] ([i915#4098]) +6 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][303] ([i915#1845] / [i915#4098]) -> [SKIP][304] ([fdo#111614] / [i915#3638]) +4 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][305] ([fdo#111614] / [i915#3638]) -> [SKIP][306] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][307] ([fdo#110723]) -> [SKIP][308] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          [SKIP][309] ([fdo#111615]) -> [SKIP][310] ([i915#1845] / [i915#4098])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][311] ([i915#1845] / [i915#4098]) -> [SKIP][312] ([fdo#110723]) +7 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][313] ([i915#1845] / [i915#4098]) -> [SKIP][314] ([i915#3116]) +1 other test skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-rkl:          [SKIP][315] ([i915#7118]) -> [SKIP][316] ([i915#1845] / [i915#4098])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_content_protection@lic.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][317] ([i915#3359]) -> [SKIP][318] ([i915#4098]) +1 other test skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-rkl:          [SKIP][319] ([i915#3555]) -> [SKIP][320] ([i915#4098]) +4 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-max-size.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][321] ([fdo#111825]) -> [SKIP][322] ([i915#1845] / [i915#4098]) +7 other tests skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-rkl:          [SKIP][323] ([i915#1845] / [i915#4098]) -> [SKIP][324] ([fdo#111767] / [fdo#111825]) +1 other test skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][325] ([i915#1845] / [i915#4098]) -> [SKIP][326] ([fdo#111825]) +5 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][327] ([i915#4103]) -> [SKIP][328] ([i915#1845] / [i915#4098])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          [SKIP][329] ([i915#1845] / [i915#4098]) -> [SKIP][330] ([i915#4103])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][331] ([i915#3555] / [i915#3840]) -> [SKIP][332] ([i915#4098]) +1 other test skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][333] ([i915#3955]) -> [SKIP][334] ([fdo#110189] / [i915#3955])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          [SKIP][335] ([fdo#109285]) -> [SKIP][336] ([fdo#109285] / [i915#4098])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][337] ([i915#1849] / [i915#4098]) -> [SKIP][338] ([fdo#111825])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][339] ([i915#1849] / [i915#4098]) -> [SKIP][340] ([i915#5439])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][341] ([i915#1849] / [i915#4098]) -> [SKIP][342] ([i915#3023]) +33 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          [SKIP][343] ([i915#3023]) -> [SKIP][344] ([i915#1849] / [i915#4098]) +29 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][345] ([fdo#111825] / [i915#1825]) -> [SKIP][346] ([i915#1849] / [i915#4098]) +37 other tests skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][347] ([i915#1849] / [i915#4098]) -> [SKIP][348] ([fdo#111825] / [i915#1825]) +52 other tests skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          [SKIP][349] ([i915#3555] / [i915#8228]) -> [SKIP][350] ([i915#4098])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          [SKIP][351] ([i915#1845] / [i915#4098]) -> [SKIP][352] ([i915#3555] / [i915#8228]) +1 other test skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_hdr@static-swap.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][353] ([i915#1845] / [i915#4098]) -> [SKIP][354] ([i915#6301]) +1 other test skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][355] ([i915#4098]) -> [SKIP][356] ([i915#3555]) +7 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][357] ([i915#1845] / [i915#4098]) -> [SKIP][358] ([fdo#111615] / [i915#5289])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][359] ([i915#3555]) -> [SKIP][360] ([i915#1845] / [i915#4098]) +1 other test skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_vrr@flip-dpms.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/shard-rkl-5/igt@kms_vrr@flip-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
>   [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/intel/issues/8825
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
>   [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
>   [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
>   [i915#9588]: https://gitlab.freedesktop.org/drm/intel/issues/9588
>   [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13844 -> Patchwork_125490v16
> 
>   CI-20190529: 20190529
>   CI_DRM_13844: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7574: 0485a4bf66f69aaf7244a3e689402b522f636780 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_125490v16: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html
