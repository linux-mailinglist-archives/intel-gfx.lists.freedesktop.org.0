Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30AF7B8420
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA24010E11F;
	Wed,  4 Oct 2023 15:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A81310E10B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434619; x=1727970619;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=BZYHJJeHwXB6L571WuRR1/nqA3u32zpe+SN1kkRc0tI=;
 b=Vr7zOEtVR/dhMZoT/2g3jDZ+BR4B++CbNckfC83h00gIrXtwBvW27k1q
 VD0fM7SaI/IzCqCKBSJaMocqHSK+C7rgVmbhBgsQ0Z6yMAg1Hh+yXIdZV
 7n0aCjYNth+y2UupBqArvyCyu5pQDuWyNVigIL+cAUTVCO5PjFBrTCNXE
 dkZMiPrNooBQdkoeMKkFha13oWqBrrbOJV7kUPzxM+koC3rUdzgD/0oUU
 5mn9duSo6F7InjiCb61efVMNt+/LyQ5VAISUro7UqVuQ+Pe1S14yZdfbW
 cFmV0lsoz2DHeakC3+S6ivpHdaJ7i33eWAf9tCUl5jSKpfVX8Lb1KjpOY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="386034298"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="386034298"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="817161311"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="817161311"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:50:17 -0700
Date: Wed, 4 Oct 2023 18:50:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Lyude Paul <lyude@redhat.com>
Message-ID: <ZR2J0KRmzC5m2WlZ@ideak-desk.fi.intel.com>
References: <20230929154929.343947-1-imre.deak@intel.com>
 <169603704020.19043.8586691443630548060@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169603704020.19043.8586691443630548060@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=5Fmst=3A_Make_sure_pbn=5Fdiv_is_up-to-date_after_sink_?=
 =?utf-8?q?reconnect?=
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

On Sat, Sep 30, 2023 at 01:24:00AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Make sure pbn_div is up-to-date after sink reconnect
> URL   : https://patchwork.freedesktop.org/series/124462/
> State : success

Thanks for the review, patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13693_full -> Patchwork_124462v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
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
>   Here are the unknown changes that may have been introduced in Patchwork_124462v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_content_protection@mei-interface}:
>     - shard-dg1:          [SKIP][1] ([i915#9424]) -> [SKIP][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-14/igt@kms_content_protection@mei-interface.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3}:
>     - shard-dg1:          NOTRUN -> [SKIP][3] +3 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_124462v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#7701])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8414]) +5 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +20 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@drm_fdinfo@busy@ccs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][7] -> [FAIL][8] ([i915#7742])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#3936])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#3555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#7297])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#6268])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [PASS][16] -> [FAIL][17] ([i915#6268])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-mtlp:         NOTRUN -> [FAIL][18] ([i915#6268])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#8555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#5882]) +9 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4771])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4812]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#6334]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][24] -> [FAIL][25] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][26] -> [FAIL][27] ([i915#2842])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][28] -> [FAIL][29] ([i915#2842]) +2 other tests fail
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4473] / [i915#4771])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([fdo#112283])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#3281]) +2 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-read-active.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3281]) +6 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#3281]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4860])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4613])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3282]) +2 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#8289])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4077]) +4 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@medium-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +6 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_mmap_gtt@medium-copy-xy.html
> 
>   * igt@gem_mmap_wc@bad-object:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +7 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@gem_mmap_wc@bad-object.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4083]) +2 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_pread@snoop:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#3282]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4270]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4270]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#8428]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4079]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4079]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#3297])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3297] / [i915#4958])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#109289]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#2856]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#2856])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][57] ([i915#8617])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][58] -> [SKIP][59] ([i915#1397]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#1397])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][61] -> [SKIP][62] ([i915#1397])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-rkl-2/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
>     - shard-dg1:          [PASS][63] -> [SKIP][64] ([i915#1397]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#1397]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([fdo#109506])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_pm_rps@thresholds@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#8925]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@i915_pm_rps@thresholds@gt1.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4387])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@requests:
>     - shard-mtlp:         [PASS][69] -> [ABORT][70] ([i915#9414])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-1/igt@i915_selftest@live@requests.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-6/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#5190]) +10 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4212])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4215] / [i915#5190])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#3826])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#8502]) +7 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#6228])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#5286])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([fdo#111614]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][79] -> [FAIL][80] ([i915#5138])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [FAIL][81] ([i915#5138])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([fdo#111614]) +3 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][83] -> [FAIL][84] ([i915#3743]) +1 other test fail
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([fdo#111615]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#2705])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#5354] / [i915#6095]) +12 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#5354]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886] / [i915#5354]) +8 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3689] / [i915#5354]) +17 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4087] / [i915#7213]) +3 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([fdo#111827]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#7828]) +9 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#7828]) +2 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#7828])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3555])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#6944])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][100] ([i915#7173])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3359])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3359]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3555]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#8814])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4103] / [i915#4213] / [i915#5608])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3546])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([fdo#109274] / [i915#5354]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4103] / [i915#4213])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#9227])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#9226] / [i915#9261]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#8812])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#3555] / [i915#3840])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3637])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([fdo#111767] / [i915#3637])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-snb:          NOTRUN -> [SKIP][115] ([fdo#109271] / [fdo#111767])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-snb5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#8381])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#109274]) +7 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([fdo#111825])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#2672])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8708]) +18 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5460])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3023]) +2 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#8708]) +6 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([fdo#111825] / [i915#1825]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#5354]) +40 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#1825]) +8 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3458]) +17 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3555] / [i915#8228])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3555] / [i915#8228])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([fdo#109289]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [PASS][131] -> [INCOMPLETE][132] ([i915#180] / [i915#1982] / [i915#9392])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8821])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3555] / [i915#8806])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#6953])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][136] ([i915#8292])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][137] ([i915#8292])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#5176]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#5176]) +3 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#5235]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#5235]) +3 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#5235]) +19 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#5235]) +15 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-19/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][144] ([fdo#109271]) +20 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([fdo#111068] / [i915#658])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#658]) +2 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@primary_blt:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1072])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_psr@primary_blt.html
> 
>   * igt@kms_psr@sprite_plane_move:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#1072]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_psr@sprite_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#5461] / [i915#658])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4235]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#3555] / [i915#8823])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8809])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#8623])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#109309])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>     - shard-tglu:         [PASS][155] -> [FAIL][156] ([i915#9196])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-apl:          [PASS][157] -> [INCOMPLETE][158] ([i915#9392])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
>     - shard-dg2:          [PASS][159] -> [FAIL][160] ([fdo#103375]) +1 other test fail
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-6/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8808])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2437]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#2434])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][164] -> [FAIL][165] ([i915#4349]) +3 other tests fail
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3708])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][167] ([i915#1731])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pad:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#2575]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@v3d/v3d_perfmon@get-values-invalid-pad.html
> 
>   * igt@v3d/v3d_submit_cl@bad-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#2575]) +9 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@v3d/v3d_submit_cl@bad-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#7711]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_tiling@set-get:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#7711]) +6 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-11/igt@vc4/vc4_tiling@set-get.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs1:
>     - shard-mtlp:         [ABORT][172] ([i915#9262]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][174] ([i915#2842]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_schedule@u-semaphore-resolve:
>     - shard-mtlp:         [ABORT][176] ([i915#9414]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-5/igt@gem_exec_schedule@u-semaphore-resolve.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@gem_exec_schedule@u-semaphore-resolve.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][178] ([i915#5493]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-dg2:          [FAIL][180] ([fdo#103375]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-5/igt@gem_softpin@noreloc-s3.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [DMESG-WARN][182] ([i915#4391]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-dg1:          [FAIL][184] ([i915#3591]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][186] ([i915#1397]) -> [PASS][187] +2 other tests pass
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [SKIP][188] ([i915#1397]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [SKIP][190] ([i915#1397]) -> [PASS][191] +1 other test pass
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-15/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-mtlp:         [DMESG-WARN][192] ([i915#2017]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-mtlp:         [FAIL][194] ([fdo#103375]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-1/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-6/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-dg2:          [INCOMPLETE][196] -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@perf_pmu@busy-idle-check-all@ccs0:
>     - shard-mtlp:         [FAIL][198] ([i915#4521]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-7/igt@perf_pmu@busy-idle-check-all@ccs0.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-8/igt@perf_pmu@busy-idle-check-all@ccs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-mtlp:         [SKIP][200] -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-3/igt@perf_pmu@frequency@gt0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-3/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@multi-client@rcs0:
>     - shard-mtlp:         [FAIL][202] -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-mtlp-1/igt@perf_pmu@multi-client@rcs0.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-mtlp-5/igt@perf_pmu@multi-client@rcs0.html
> 
>   * igt@syncobj_timeline@host-signal-points:
>     - shard-dg1:          [DMESG-WARN][204] ([i915#4423]) -> [PASS][205] +2 other tests pass
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-15/igt@syncobj_timeline@host-signal-points.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-18/igt@syncobj_timeline@host-signal-points.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [DMESG-WARN][206] ([i915#4936] / [i915#5493]) -> [TIMEOUT][207] ([i915#5493])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-snb:          [DMESG-WARN][208] ([i915#5090] / [i915#8841]) -> [DMESG-WARN][209] ([i915#8841])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-snb2/igt@gem_workarounds@suspend-resume-context.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-snb2/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-tglu:         [WARN][210] ([i915#2681]) -> [FAIL][211] ([i915#2681] / [i915#3591])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][212] ([i915#7118] / [i915#7162]) -> [SKIP][213] ([i915#7118])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg2-11/igt@kms_content_protection@type1.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg1:          [SKIP][214] ([fdo#111825] / [i915#4423]) -> [SKIP][215] ([fdo#111825])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-15/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - shard-dg1:          [SKIP][216] ([i915#1072]) -> [SKIP][217] ([i915#1072] / [i915#4078])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-14/igt@kms_psr@primary_mmap_gtt.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-12/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][218] ([i915#1072] / [i915#4078]) -> [SKIP][219] ([i915#1072]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13693/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/shard-dg1-19/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4521]: https://gitlab.freedesktop.org/drm/intel/issues/4521
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8823]: https://gitlab.freedesktop.org/drm/intel/issues/8823
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
>   [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13693 -> Patchwork_124462v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13693: bb46e837b7e59c22a567ae6913ff4d6bf0e9211a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_124462v1: bb46e837b7e59c22a567ae6913ff4d6bf0e9211a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124462v1/index.html
