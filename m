Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 081CF7CAB29
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 16:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A669710E1E7;
	Mon, 16 Oct 2023 14:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B86C10E1E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 14:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697465688; x=1729001688;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Yu7Q8c67IjMnahM+EaffMiPqgShWGsc+VDS9kED+UgI=;
 b=BX9s6UVTy62UsUERfYmnzJF7XKyr3fE1qKFB/msUY/FDdzwI27e1Ya1O
 21YVlA+oB54pCH3IjBXjlzA4bNt14VkcY7k9baUBrulBFnLVTWBJf6LsY
 p9CkJmMUngm3xdKt40uGb6onUA8ONl5rgPoOZ1hMqL32aXSzTIJ7QJ0BE
 w0Qwzoqx9MFZOLbwyF6DmVE128KdBDbNs6CN7q2LSgHhSiQX7MyEHTpFF
 khe3qi6c8x2BLMsjpHLjhRALsi0aywOBCRtp+eqmToSOUEmyOK5h1OkYj
 yfe7NFbi90PlemOx1DzJYY9UtWXY3BMTKc2WmkaC5kjQKfxCVqFvJV5OJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385372756"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385372756"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 07:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="705635175"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="705635175"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 07:14:45 -0700
Date: Mon, 16 Oct 2023 17:15:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZS1FcNpSBLS1SCNk@ideak-desk.fi.intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <169726081227.30581.13637011449168366508@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169726081227.30581.13637011449168366508@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector_=28rev9?=
 =?utf-8?q?=29?=
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

On Sat, Oct 14, 2023 at 05:20:12AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Store DSC DPCD capabilities in the connector (rev9)
> URL   : https://patchwork.freedesktop.org/series/124723/
> State : failure

Thanks for the reviews, I pushed the patchset.

The failure is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13751_full -> Patchwork_124723v9_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_124723v9_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_124723v9_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_124723v9_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

The connected sink has a DPCD version 1.2, so DSC is not supported on it
and the DPCD caps for it are not read out, both before and after this
change. So can't see how the problem (CRC mismatch) would be related to
the changes.

The same happened on another APL before:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13750/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

and also on re-dg2-12 in CI_DRM_13741 and re-mtlp-11 in CI_DRM_13755.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_124723v9_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@virtual-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][2] ([i915#8414])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@drm_fdinfo@virtual-busy.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#3555])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][4] -> [FAIL][5] ([i915#6268])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][6] ([i915#6786])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#4771])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#4812])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#8555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#6334]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#3539]) +2 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4812])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3539] / [i915#4852]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3281]) +8 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3281]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#4537] / [i915#4812])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][20] -> [ABORT][21] ([i915#7975] / [i915#8213])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4860]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk3/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][25] ([i915#5493])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#8289])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@big-bo-tiledy:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4077]) +4 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_mmap_gtt@big-bo-tiledy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4077]) +4 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4083]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4083]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3282])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pread@bench:
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#3282]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_pread@bench.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4270]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#8428]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_userptr_blits@mmap-offset-banned@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#3297]) +4 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_userptr_blits@mmap-offset-banned@gtt.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([fdo#109289])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#2856]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_hangman@gt-engine-error@vcs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][39] ([i915#7069])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@i915_hangman@gt-engine-error@vcs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-apl:          NOTRUN -> [FAIL][40] ([i915#7036])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#6621])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#8925])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#8925])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_pm_rps@thresholds@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#3555] / [i915#8925])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt1.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4212])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4212])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4212] / [i915#5608])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [FAIL][48] ([i915#8247]) +3 other tests fail
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][49] ([i915#8247]) +3 other tests fail
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-15/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#6229])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-6/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([fdo#111614]) +4 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([fdo#111614])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][53] -> [FAIL][54] ([i915#3743]) +1 other test fail
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5190]) +5 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#6187])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([fdo#111615]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][58] ([fdo#111615])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#2705])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4087] / [i915#7213]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#7828]) +7 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([fdo#111827]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#7828]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#7828])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_color@degamma@pipe-a:
>     - shard-mtlp:         NOTRUN -> [FAIL][66] ([i915#9257]) +3 other tests fail
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_color@degamma@pipe-a.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3299])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][68] ([i915#7173]) +1 other test timeout
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#7118])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3359]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3555] / [i915#8814]) +3 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3555]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][73] ([i915#8841]) +1 other test dmesg-warn
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([fdo#109274] / [i915#5354]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3546]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([fdo#111767] / [i915#3546])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@forked-move@all-pipes:
>     - shard-mtlp:         [PASS][78] -> [DMESG-WARN][79] ([i915#2017])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4213])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#9226] / [i915#9261]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#9227])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#9227])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#9226] / [i915#9261]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3555] / [i915#3840]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4881])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#109274])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#3637]) +3 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([fdo#109274] / [i915#3637])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#2587] / [i915#2672])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#2672]) +3 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#2672]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#8708]) +10 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#1825]) +23 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#5460])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3458]) +8 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([fdo#110189]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([fdo#109280]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#8708]) +6 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#5354]) +8 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3555] / [i915#8228])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3555] / [i915#8228])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-6/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#6403]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([fdo#109289]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][105] ([i915#4573]) +1 other test fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk3/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_cursor@viewport@pipe-b-edp-1-size-256:
>     - shard-mtlp:         [PASS][106] -> [DMESG-WARN][107] ([i915#1982])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-6/igt@kms_plane_cursor@viewport@pipe-b-edp-1-size-256.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-3/igt@kms_plane_cursor@viewport@pipe-b-edp-1-size-256.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3582]) +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-6/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#8806])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#6953])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][111] ([i915#8292])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#5235]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3555] / [i915#5235])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][115] ([fdo#109271]) +18 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#5235]) +5 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#5235]) +7 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#5235]) +11 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +76 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl6/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#1072]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#5461] / [i915#658])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4235])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#5289])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [FAIL][127] ([i915#5465]) +1 other test fail
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3555] / [i915#4098]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][129] -> [FAIL][130] ([IGT#2])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg2-11/igt@kms_sysfs_edid_timing.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-2/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][131] -> [FAIL][132] ([i915#9196]) +1 other test fail
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#3555] / [i915#8808])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2437])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk3/igt@kms_writeback@writeback-fb-id.html
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#2437])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2437])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3708])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-11/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#4818])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_get_param@get-bad-flags:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([fdo#109315] / [i915#2575]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@v3d/v3d_get_param@get-bad-flags.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-exceed:
>     - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271]) +85 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk3/igt@v3d/v3d_perfmon@create-perfmon-exceed.html
> 
>   * igt@v3d/v3d_submit_csd@bad-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#2575]) +10 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html
> 
>   * igt@v3d/v3d_submit_csd@single-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#2575]) +5 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@v3d/v3d_submit_csd@single-out-sync.html
> 
>   * igt@vc4/vc4_label_bo@set-bad-name:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#2575])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@vc4/vc4_label_bo@set-bad-name.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#7711]) +6 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#7711]) +3 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-7/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][146] ([i915#7742]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][148] ([i915#6268]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - shard-mtlp:         [ABORT][150] ([i915#9414]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][152] ([i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-10/igt@gem_eio@hibernate.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-5/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][154] ([i915#5784]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg1-12/igt@gem_eio@unwedge-stress.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-12/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-mtlp:         [ABORT][156] ([i915#9262]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-4/igt@gem_exec_balancer@parallel-bb-first.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - shard-rkl:          [TIMEOUT][158] ([i915#3778]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-6/igt@gem_exec_endless@dispatch@rcs0.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-7/igt@gem_exec_endless@dispatch@rcs0.html
> 
>   * igt@gem_exec_schedule@noreorder-corked@ccs0:
>     - shard-mtlp:         [DMESG-FAIL][160] ([i915#8962]) -> [PASS][161] +1 other test pass
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@ccs0.html
> 
>   * igt@gem_exec_schedule@noreorder-corked@vcs0:
>     - shard-mtlp:         [FAIL][162] ([i915#8758]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@vcs0.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-1/igt@gem_exec_schedule@noreorder-corked@vcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][164] ([i915#5493]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][166] ([i915#8489] / [i915#8668]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-dg1:          [FAIL][168] ([i915#3591]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_selftest@live@late_gt_pm:
>     - shard-glk:          [INCOMPLETE][170] -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-glk5/igt@i915_selftest@live@late_gt_pm.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-glk5/igt@i915_selftest@live@late_gt_pm.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [FAIL][172] ([fdo#103375]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         [FAIL][174] ([i915#3743]) -> [PASS][175] +1 other test pass
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          [INCOMPLETE][176] ([i915#9392]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * {igt@kms_pm_dc@dc9-dpms}:
>     - shard-tglu:         [SKIP][178] ([i915#4281]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
>     - shard-rkl:          [SKIP][180] ([i915#1937]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>     - shard-dg1:          [SKIP][182] ([i915#1937]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg1-18/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * {igt@kms_pm_rpm@dpms-lpsp}:
>     - shard-dg1:          [SKIP][184] ([i915#9519]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg1-18/igt@kms_pm_rpm@dpms-lpsp.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp}:
>     - shard-rkl:          [SKIP][186] ([i915#9519]) -> [PASS][187] +1 other test pass
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][188] ([i915#9196]) -> [PASS][189] +1 other test pass
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-apl:          [INCOMPLETE][190] ([i915#180] / [i915#9392]) -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-suspend:
>     - shard-mtlp:         [FAIL][192] ([fdo#103375]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-6/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-3/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
> 
>   * igt@prime_vgem@sync@vecs0:
>     - shard-mtlp:         [ABORT][194] ([i915#8875]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-mtlp-2/igt@prime_vgem@sync@vecs0.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-mtlp-2/igt@prime_vgem@sync@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][196] ([i915#3955]) -> [SKIP][197] ([fdo#110189] / [i915#3955])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][198] ([fdo#110189] / [i915#3955]) -> [SKIP][199] ([i915#3955])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          [SKIP][200] ([fdo#109285] / [i915#4098]) -> [SKIP][201] ([fdo#109285])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [CRASH][202] ([i915#9351]) -> [INCOMPLETE][203] ([i915#5493])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6786]: https://gitlab.freedesktop.org/drm/intel/issues/6786
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7069]: https://gitlab.freedesktop.org/drm/intel/issues/7069
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9257]: https://gitlab.freedesktop.org/drm/intel/issues/9257
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
>   [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13751 -> Patchwork_124723v9
> 
>   CI-20190529: 20190529
>   CI_DRM_13751: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7533: 7533
>   Patchwork_124723v9: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html
