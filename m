Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A192D4160D0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 16:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C846E098;
	Thu, 23 Sep 2021 14:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B992C6E098
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 14:11:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="210926304"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="210926304"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 07:11:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="455125444"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 07:11:19 -0700
Date: Thu, 23 Sep 2021 07:11:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210923141118.GB3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210923003029.2194375-1-matthew.d.roper@intel.com>
 <163236864022.31048.9301326494828553060@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163236864022.31048.9301326494828553060@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uncore=3A_fwtable_read_handlers_are_now_used_on_all_force?=
 =?utf-8?q?wake_platforms?=
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

On Thu, Sep 23, 2021 at 03:44:00AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/uncore: fwtable read handlers are now used on all forcewake platforms
> URL   : https://patchwork.freedesktop.org/series/94975/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10629_full -> Patchwork_21137_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Tvrtko for the review.


Matt

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21137_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-snb7/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [PASS][2] -> [TIMEOUT][3] ([i915#2369] / [i915#3063])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@gem_eio@unwedge-stress.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl8/igt@gem_eio@unwedge-stress.html
>     - shard-snb:          NOTRUN -> [FAIL][4] ([i915#3354])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-snb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-apl:          [PASS][7] -> [SKIP][8] ([fdo#109271])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271]) +231 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_sync@basic-all:
>     - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118] / [i915#95])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk6/igt@gem_sync@basic-all.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-glk2/igt@gem_sync@basic-all.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#3297]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3323])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3323])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#2856]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#2856])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb3/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         NOTRUN -> [WARN][22] ([i915#2681])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109288])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#1769])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111614])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb6/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3722]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#2705])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb6/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +63 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689] / [i915#3886]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689]) +8 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-d-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +74 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_color@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl6/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3116]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3359]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#2122]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-tglb:         [PASS][53] -> [INCOMPLETE][54] ([i915#4173] / [i915#456])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb1/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2672])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111825]) +14 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#1188])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#112054])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb1/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#2920])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@cursor_plane_onoff:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +97 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl6/igt@kms_psr@cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][70] ([i915#132] / [i915#3467]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109441])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb3/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180] / [i915#295])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109278])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb3/igt@kms_vblank@pipe-d-wait-busy.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#109502])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2530]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@perf@mi-rpc:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109289])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@perf@mi-rpc.html
> 
>   * igt@prime_nv_api@i915_nv_import_vs_close:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@prime_nv_api@i915_nv_import_vs_close.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109295])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb6/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl3/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][85] ([i915#2842]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][87] ([i915#2842]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [SKIP][89] ([fdo#109271]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [INCOMPLETE][91] ([i915#155] / [i915#794]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - shard-skl:          [INCOMPLETE][95] ([i915#198]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-tglb:         [INCOMPLETE][97] ([i915#2411] / [i915#456]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb7/igt@i915_pm_rpm@system-suspend.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb2/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-tglb:         [INCOMPLETE][99] ([i915#456] / [i915#750]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb5/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][101] ([i915#118] / [i915#95]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][103] ([i915#2346]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][105] ([i915#2346] / [i915#533]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][107] ([i915#79]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [INCOMPLETE][111] ([i915#2411] / [i915#4173] / [i915#456]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][113] ([i915#2122]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [SKIP][115] ([i915#3701]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][117] ([i915#1188]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl4/igt@kms_hdr@bpc-switch.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-tglb:         [INCOMPLETE][119] ([i915#2828] / [i915#456]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +3 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][123] ([fdo#108145] / [i915#265]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][125] ([fdo#109441]) -> [PASS][126] +3 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][127] ([i915#198] / [i915#2828]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][129] ([i915#1542]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl4/igt@perf@polling-parameterized.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl9/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [WARN][132] ([i915#2684])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][133] ([i915#2684]) -> [WARN][134] ([i915#1804] / [i915#2684])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          [FAIL][135] ([i915#3722]) -> [FAIL][136] ([i915#3743])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-skl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>     - shard-iclb:         [SKIP][137] ([i915#658]) -> [SKIP][138] ([i915#2920]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21137/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
