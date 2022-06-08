Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 956455432A9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 16:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45DD10FFA9;
	Wed,  8 Jun 2022 14:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E969110FFA9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 14:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654698956; x=1686234956;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=AXu4OrcPs7lNkdWrD76bx1goxpcsFxwlRPRUda9HKRE=;
 b=GuiE1i113Asez7tychehQGnThdRfJkD5iDv3jUy58dbZDL5VFFvKAO/E
 JOkhytQLi3iGI+gpgvy5Tcx7RzOBMf4FNGq8zyvSQvhVe0iiPSyaEl1Q7
 dfNdxadHz9nNSph2t8DeWhtWenX0Af6q63rMCORMOupCv/MhOK9KPRcIg
 82gg+m7SKAzO9ZSxkevKL1b9fH2NWcrfhKbaCtnkwGbMPMcwpsrhZgnyK
 69wSHZFODUsz17uuLcJTd8KNi4YPVCdVYqmC38uMsSaoCmHHon/u8z05M
 9RNMhzABDwiy4YxRYvKStoEqEhWuigFwym8Am39i51tLTiDLP44LUQtjc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="276943603"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="276943603"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 07:35:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="565934108"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 07:35:56 -0700
Date: Wed, 8 Jun 2022 07:35:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqCzyw/Bm4aWVrYm@mdroper-desk1.amr.corp.intel.com>
References: <20220608005108.3717895-1-matthew.d.roper@intel.com>
 <165469104475.15585.13407062806606818474@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165469104475.15585.13407062806606818474@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_More_PVC+DG2_workarounds?=
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

On Wed, Jun 08, 2022 at 12:24:04PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: More PVC+DG2 workarounds
> URL   : https://patchwork.freedesktop.org/series/104866/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11733_full -> Patchwork_104866v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Anshuman for the review.


Matt

> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104866v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * {igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3} (NEW):
>     - {shard-dg1}:        NOTRUN -> [SKIP][1] +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_cursor_legacy@pipe-a-torture-move:
>     - {shard-dg1}:        NOTRUN -> [WARN][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-dg1-13/igt@kms_cursor_legacy@pipe-a-torture-move.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
>     - {shard-dg1}:        NOTRUN -> [FAIL][3] +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-dg1-13/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11733_full and Patchwork_104866v1_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104866v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +6 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#5784])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglb6/igt@gem_eio@kms.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglb2/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][19] ([i915#5843])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@gem_exec_whisper@basic-fds-priority-all.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl7/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#5566] / [i915#716])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk8/igt@gen9_exec_parse@allowed-single.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2521])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +82 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +80 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-max:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#1982] / [i915#4939])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +145 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][42] -> [SKIP][43] ([i915#3701])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][44] ([i915#1982])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][51] ([i915#265])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#5235]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][58] ([IGT#2])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_sysfs_edid_timing.html
>     - shard-skl:          NOTRUN -> [FAIL][59] ([IGT#2])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-b-accuracy-idle:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#43])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl4/igt@kms_vblank@pipe-b-accuracy-idle.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl2/igt@kms_vblank@pipe-b-accuracy-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2437])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_writeback@writeback-check-output.html
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#5639])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl4/igt@perf@polling-parameterized.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl2/igt@perf@polling-parameterized.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#6140])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl7/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@eof:
>     - {shard-rkl}:        [SKIP][70] ([i915#2582]) -> [PASS][71] +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@fbdev@eof.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@fbdev@eof.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-skl:          [INCOMPLETE][72] ([i915#4793]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl9/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - {shard-rkl}:        [FAIL][74] ([i915#2410]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@kms:
>     - {shard-tglu}:       [INCOMPLETE][76] ([i915#5182]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglu-4/igt@gem_eio@kms.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglu-1/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-tglu}:       [TIMEOUT][78] ([i915#3063]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglu-4/igt@gem_eio@unwedge-stress.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglu-4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_endless@dispatch@vcs1:
>     - {shard-tglu}:       [INCOMPLETE][80] ([i915#3778]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglu-2/igt@gem_exec_endless@dispatch@vcs1.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglu-6/igt@gem_exec_endless@dispatch@vcs1.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][86] ([i915#2842]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][88] ([i915#2190]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][90] ([i915#5566] / [i915#716]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl7/igt@gen9_exec_parse@allowed-single.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl2/igt@gen9_exec_parse@allowed-single.html
>     - shard-apl:          [DMESG-WARN][92] ([i915#5566] / [i915#716]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_backlight@fade_with_dpms:
>     - {shard-rkl}:        [SKIP][94] ([i915#3012]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - {shard-dg1}:        [SKIP][96] ([i915#1397]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][98] ([i915#5334]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl4/igt@i915_suspend@debugfs-reader.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - shard-iclb:         [FAIL][102] ([i915#1888]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-0.html
>     - shard-glk:          [FAIL][104] ([i915#1888] / [i915#5138]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-b-ctm-0-25:
>     - {shard-rkl}:        [SKIP][106] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][107] +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-25.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
>     - {shard-rkl}:        [SKIP][108] ([fdo#112022] / [i915#4070]) -> [PASS][109] +3 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - {shard-rkl}:        [SKIP][110] ([fdo#111825] / [i915#4070]) -> [PASS][111] +3 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
>     - shard-glk:          [SKIP][112] ([fdo#109271]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
>     - {shard-rkl}:        [SKIP][114] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][115] +3 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][116] ([i915#180] / [i915#1982]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [FAIL][118] ([i915#2122]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][120] ([i915#3701]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][124] ([i915#1188]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - {shard-rkl}:        [SKIP][126] ([i915#4278]) -> [PASS][127] +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@kms_invalid_mode@bad-htotal.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_lease@lease_invalid_crtc:
>     - {shard-rkl}:        [SKIP][128] ([i915#1845] / [i915#4098]) -> [PASS][129] +12 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_lease@lease_invalid_crtc.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_lease@lease_invalid_crtc.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a:
>     - {shard-rkl}:        [SKIP][130] ([i915#1849] / [i915#4098]) -> [PASS][131] +16 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#3558]) -> [PASS][133] +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][134] ([fdo#108145] / [i915#265]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
>     - {shard-rkl}:        [SKIP][136] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
>     - {shard-rkl}:        [SKIP][138] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][140] ([i915#5176]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - {shard-rkl}:        [SKIP][142] ([i915#1072]) -> [PASS][143] +2 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-2/igt@kms_psr@primary_page_flip.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][144] ([fdo#109441]) -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [SKIP][146] ([i915#5519]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>     - {shard-rkl}:        [SKIP][148] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][150] ([i915#1542]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl4/igt@perf@polling.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl4/igt@perf@polling.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][152] ([i915#1722]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl4/igt@perf@polling-small-buf.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl10/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@module-unload:
>     - {shard-dg1}:        [FAIL][154] ([i915#6054]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-dg1-17/igt@perf_pmu@module-unload.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-dg1-17/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][156] ([i915#2920]) -> [SKIP][157] ([i915#658])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][158] ([fdo#111068] / [i915#658]) -> [SKIP][159] ([i915#2920])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_vblank@pipe-d-query-busy:
>     - shard-skl:          [SKIP][160] ([fdo#109271] / [i915#1888]) -> [SKIP][161] ([fdo#109271])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-skl10/igt@kms_vblank@pipe-d-query-busy.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-skl1/igt@kms_vblank@pipe-d-query-busy.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl7/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl4/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl2/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl1/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl4/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-apl8/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl3/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl1/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl6/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-apl3/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl3/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl1/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl1/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11733/shard-kbl6/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl4/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl1/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl1/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#6054]: https://gitlab.freedesktop.org/drm/intel/issues/6054
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6139]: https://gitlab.freedesktop.org/drm/intel/issues/6139
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11733 -> Patchwork_104866v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11733: 4a478d4716b11a64fbc702a176ec3d078a168bc5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6512: 5efc64e9b93a2df85581ea425ee7d0f435855f13 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104866v1: 4a478d4716b11a64fbc702a176ec3d078a168bc5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104866v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
