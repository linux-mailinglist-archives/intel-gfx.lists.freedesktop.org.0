Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A765C852FC0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 12:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1D010E5EC;
	Tue, 13 Feb 2024 11:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkPDeK4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1A910E61B;
 Tue, 13 Feb 2024 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707824583; x=1739360583;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=xL/VIr4OkM5uih5Ge263UZnt1QxfcCRLEH38jmWDZdo=;
 b=lkPDeK4w94UDpAsJI+q4C/15TYzUXQFjiuIhpQuAZuDYG57qTKicZTCC
 j13n6bcpCJT/Yvov92IkE4NDZsv8c1/lyibuR+NKvN3+iWS18Mw09nSRT
 Z6eTKG3whplw7nOa0IXf5U9g8SZmAuKlAwvnrpthboRYW7+rqPbJ3VYaG
 U7MkuYa0aYv9qyp1Yj+nwaQBElBo6DpFvRmPnCtIyPVUFBQuSfTk16qyW
 ocf9LFkbAo0drnrbs/SGi5VmEJ1AS67tAlUkqQDH9oViQLbJ7WhI39/O0
 wCG5h2Q51RAFlkI7b6gLAgtTUpX9cDXpeaLMjJb+5J/lJiyE9qFWSBsbK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="24298326"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="24298326"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:43:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="7442053"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:43:01 -0800
Date: Tue, 13 Feb 2024 13:43:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jouni Hogander <jouni.hogander@intel.com>
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_with_=5BCI=2C1=2F2=5D_drm=2Fi915?=
 =?utf-8?Q?=3A?= Prevent HW access during init from SDVO TV get_modes hook
Message-ID: <ZctVLYlHgqosCdgI@ideak-desk.fi.intel.com>
References: <20240212175237.2625812-1-imre.deak@intel.com>
 <170777489926.1182955.4102131423901695723@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170777489926.1182955.4102131423901695723@5338d5abeb45>
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

On Mon, Feb 12, 2024 at 09:54:59PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm/i915: Prevent HW access during init from SDVO TV get_modes hook
> URL   : https://patchwork.freedesktop.org/series/129788/
> State : failure

Thanks for the review, pushed the patchset. The failure is unrelated see
below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14255_full -> Patchwork_129788v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_129788v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_129788v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 8)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_129788v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a1:
>     - shard-tglu:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-tglu-8/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-tglu-3/igt@kms_flip@modeset-vs-vblank-race@c-hdmi-a1.html

The above is:
<6>[  357.328756] snd_hda_codec_hdmi hdaudioC0D2: HDMI: audio coding xtype 5 not expected
<6>[  357.328761] snd_hda_codec_hdmi hdaudioC0D2: HDMI: audio coding xtype 0 not expected
<6>[  357.328764] snd_hda_codec_hdmi hdaudioC0D2: HDMI: audio coding xtype 10 not expected
<6>[  357.328767] snd_hda_codec_hdmi hdaudioC0D2: HDMI: audio coding xtype 6 not expected
<7>[  357.328978] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CONNECTOR:308:HDMI-A-1]
<7>[  357.329296] i915 0000:00:02.0: [drm:intel_modeset_verify_crtc [i915]] [CRTC:167:pipe B]
<7>[  357.387649] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i915]] restored AUD_FREQ_CNTRL to 0x810

couldn't find any ticket or precedence on TGL machines ignoring suspend
tests. The only oddity is the audio info messages, which only happen on
shard-tgl machines, but not sure if this is the root cause.

The changes in this patch shouldn't have any effect on the above CI run
which would result in an

"Reject display access from task ..."

message.

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14255_full and Patchwork_129788v1_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_cursor_edge_walk@256x256-left-edge@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.38] s
> 
>   * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.32] s
> 
>   * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.20] s
> 
>   * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.37] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129788v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@render-ccs:
>     - shard-dg2:          NOTRUN -> [FAIL][4] ([i915#6122])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@api_intel_bb@render-ccs.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#7701])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#7742]) +1 other test fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414]) +11 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@fbdev@pan:
>     - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#4435])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb4/igt@fbdev@pan.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@fbdev@pan.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][12] ([i915#7297])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs1:
>     - shard-mtlp:         [PASS][13] -> [FAIL][14] ([i915#10086]) +5 other tests fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8555]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#280]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4771])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#4036])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg2:          NOTRUN -> [FAIL][22] ([i915#9606])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@gem_exec_capture@many-4k-zero.html
>     - shard-rkl:          NOTRUN -> [FAIL][23] ([i915#9606])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][24] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3539]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-solo.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([fdo#109313])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3539])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([fdo#112283])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@gem_exec_params@secure-non-root.html
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([fdo#112283])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +8 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3281]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#3281]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4860]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#4613]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk4/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4565])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#8289])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4077]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_mmap_gtt@basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +8 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3282]) +7 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3282]) +3 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4270]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4270]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4270])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#5190]) +5 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4079])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4077])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4879])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3297]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3297])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([fdo#109289])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][56] -> [INCOMPLETE][57] ([i915#10137] / [i915#5566])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-glk5/igt@gen9_exec_parse@allowed-single.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#2527]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#2527])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#2856]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][61] -> [INCOMPLETE][62] ([i915#10137] / [i915#9200] / [i915#9849])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         NOTRUN -> [ABORT][63] ([i915#10131] / [i915#9820])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#6590])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][65] -> [FAIL][66] ([i915#3591])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8925])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#6245])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([fdo#109302])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@i915_query@query-topology-unsupported.html
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([fdo#109302])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][71] ([i915#9311])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4212]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4215] / [i915#5190])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#8709]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#8709]) +7 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#8709]) +11 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#1769]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#5286]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5286])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][80] -> [FAIL][81] ([i915#5138])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([fdo#111614] / [i915#3638]) +3 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3638])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([fdo#111614]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [PASS][85] -> [FAIL][86] ([i915#3743])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([fdo#110723]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4538])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#2705])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#5354] / [i915#6095]) +11 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5354]) +74 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-mtl-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#5354] / [i915#6095]) +13 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#5354] / [i915#6095])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#5354]) +13 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#3742])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4087]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([fdo#111827])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([fdo#111827])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#111827]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#7828]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#7828]) +6 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#7828])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#7118] / [i915#9424])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#9424])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3299])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#9424])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3359])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3359])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3555]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3555]) +4 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([fdo#109274] / [i915#5354])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4103])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4103] / [i915#4213])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#9833]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#9723])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#110189] / [i915#9227])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([fdo#110189] / [i915#9723])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][119] ([fdo#109271] / [fdo#110189])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3840])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3955])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([fdo#111825] / [i915#9934])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([fdo#109274]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#8381])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([fdo#111825]) +4 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#2672]) +3 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#2672]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#2587] / [i915#2672]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#8708]) +19 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([fdo#111825] / [i915#1825]) +16 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([fdo#111825]) +6 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
>     - shard-snb:          [PASS][132] -> [SKIP][133] ([fdo#109271]) +5 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3458]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#8708]) +7 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#1825])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3023]) +6 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#10070])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3458]) +17 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([fdo#111767] / [i915#5354])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#111767] / [fdo#111825] / [i915#1825]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3555] / [i915#8228]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#109289]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][144] ([i915#4573]) +3 other tests fail
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk4/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#3555])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#6953] / [i915#9423])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][147] ([i915#8292])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#9423]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#9423]) +5 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#9423]) +11 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#5235] / [i915#9423] / [i915#9728]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#5235] / [i915#9423]) +19 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#5235]) +19 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#5235]) +5 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][156] ([fdo#109271]) +170 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#9340])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#9519]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [PASS][159] -> [SKIP][160] ([i915#9519]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][161] -> [SKIP][162] ([i915#9519])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pc8-residency:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([fdo#109293] / [fdo#109506])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_pm_rpm@pc8-residency.html
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([fdo#109293] / [fdo#109506])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_pm_rpm@pc8-residency.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-mtlp:         [PASS][165] -> [FAIL][166] ([i915#10253])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-mtlp-5/igt@kms_pm_rpm@system-suspend-modeset.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-5/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#6524] / [i915#6805]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#9683])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9683])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#9683]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([fdo#111068] / [i915#9683]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4235]) +4 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4235] / [i915#5190]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([fdo#111615] / [i915#5289])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([fdo#111615] / [i915#5289])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#8623])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8623])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][178] -> [FAIL][179] ([i915#9196])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-glk:          NOTRUN -> [SKIP][180] ([fdo#109271] / [i915#2437])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2437])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#2436])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-10/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#2435])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][184] ([i915#5793])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3708])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3291] / [i915#3708])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#9917])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4818])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_job_submission@array-job-submission:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([fdo#109315]) +4 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@v3d/v3d_job_submission@array-job-submission.html
> 
>   * igt@v3d/v3d_submit_cl@multi-and-single-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#2575]) +1 other test skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@v3d/v3d_submit_cl@multi-and-single-sync.html
> 
>   * igt@v3d/v3d_wait_bo@used-bo-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#2575]) +12 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-5/igt@v3d/v3d_wait_bo@used-bo-1ns.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-zeroed:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#7711]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-18/igt@vc4/vc4_create_bo@create-bo-zeroed.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7711]) +5 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#7711]) +4 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-3/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][195] ([i915#7742]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][197] ([i915#6268]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg1:          [FAIL][199] ([i915#5784]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-dg1-17/igt@gem_eio@kms.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg1-15/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-rkl:          [FAIL][201] ([i915#2842]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_parallel@engines@userptr:
>     - shard-glk:          [INCOMPLETE][203] -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-glk1/igt@gem_exec_parallel@engines@userptr.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-glk4/igt@gem_exec_parallel@engines@userptr.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [INCOMPLETE][205] ([i915#10137] / [i915#9820] / [i915#9849]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [INCOMPLETE][207] ([i915#10137] / [i915#9849]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][209] ([i915#3743]) -> [PASS][210] +3 other tests pass
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-snb:          [SKIP][211] ([fdo#109271]) -> [PASS][212] +13 other tests pass
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-snb:          [DMESG-WARN][213] ([i915#10166]) -> [PASS][214]
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb4/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-snb:          [SKIP][215] ([fdo#109271] / [fdo#111767]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][217] ([i915#9519]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][219] ([i915#9519]) -> [PASS][220] +2 other tests pass
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][221] ([i915#9196]) -> [PASS][222] +2 other tests pass
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][223] ([i915#9196]) -> [PASS][224] +1 other test pass
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@type1:
>     - shard-snb:          [SKIP][225] ([fdo#109271]) -> [INCOMPLETE][226] ([i915#8816])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb4/igt@kms_content_protection@type1.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb7/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][227] ([i915#3955]) -> [SKIP][228] ([fdo#110189] / [i915#3955])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
>     - shard-snb:          [SKIP][229] ([fdo#109271]) -> [SKIP][230] ([fdo#109271] / [fdo#111767]) +3 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14255/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/shard-snb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>   [i915#10086]: https://gitlab.freedesktop.org/drm/intel/issues/10086
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10253]: https://gitlab.freedesktop.org/drm/intel/issues/10253
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4435]: https://gitlab.freedesktop.org/drm/intel/issues/4435
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9728]: https://gitlab.freedesktop.org/drm/intel/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
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
>   * Linux: CI_DRM_14255 -> Patchwork_129788v1
>   * Piglit: None -> piglit_4509
> 
>   CI-20190529: 20190529
>   CI_DRM_14255: 46cf1a7da57fc4fd2306d52aea58a02c7eb06cce @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7710: d87a5d85a60fba1283821d5212c3aece64cb36ba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_129788v1: 46cf1a7da57fc4fd2306d52aea58a02c7eb06cce @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129788v1/index.html
