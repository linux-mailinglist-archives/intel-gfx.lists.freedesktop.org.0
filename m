Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC93A4B52
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 01:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE2F6F3F0;
	Fri, 11 Jun 2021 23:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75B786F3F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 23:42:22 +0000 (UTC)
IronPort-SDR: Aq/2jm+IIbSIzr7FKMozGIZfs0LHSjH5h673+X8wIMoyoUAV55fV8U8cMbqPAJM93TEP4VhEz/
 Z/dYY820PQfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="205656852"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="205656852"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 16:42:21 -0700
IronPort-SDR: uEm9aNjLtqmE7Jt+U83hsRVnd8sjhPewFji/sLp234X/YKUgo2ObxGZMayajSiDLtmHdodP6zv
 W6uLaBiQJicg==
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="403368044"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 16:42:20 -0700
Date: Fri, 11 Jun 2021 16:42:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210611234219.GF951094@mdroper-desk1.amr.corp.intel.com>
References: <20210611004627.1220031-1-matthew.d.roper@intel.com>
 <162338975335.29314.17248034788789989874@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162338975335.29314.17248034788789989874@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Steer_MCR_reads_to_lowest_potential_slice/subslice?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 11, 2021 at 05:35:53AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Steer MCR reads to lowest potential slice/subslice
> URL   : https://patchwork.freedesktop.org/series/91367/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10206_full -> Patchwork_20340_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20340_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20340_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20340_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
> 
>   * igt@i915_selftest@perf@engine_cs:
>     - shard-iclb:         [PASS][2] -> [DMESG-WARN][3] +36 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb8/igt@i915_selftest@perf@engine_cs.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb7/igt@i915_selftest@perf@engine_cs.html

Steering to the minconfig does seem to have successfully fixed the issue
on EHL/JSL according to the BAT results.  However the code changes
uncovered a similar issue on ICL.  From experimenting on ICL, it appears
that if you don't steer to the minconfig, you can sometimes get random
garbage (rather than 0's) when render power gating is enabled.  CI
wasn't flagging a workaround warning on ICL all along only because we
were reading back random garbage that just happened to have a '1' in the
relevant bit.

So the problem now is that the fls() -> ffs() conversion didn't actually
get us to the minconfig on this ICL system.  Since there are two types
of multicast registers on gen11 (subslice multicast and l3bank
multicast), we currently pick our subslice target by &'ing those two
masks together.  Unfortunately the minconfig subslice may not also be a
suitable l3bank, so even using ffs() instead of fls() on the
intersection will give us a "bad" steering ID.

It looks like there will be cases where we can't just always use the
same steering value for both the subslice multicast registers and the
l3bank multicast registers; we'll probably want to steer to the
minconfig subslice by default and then explicitly re-steer to a valid
l3bank in cases where we can't find a suitable value for both.  I
already have some patches that do something similar for steering on
upcoming platforms, so I'll get those reorganized so that we can use
them on these platforms as well.


Matt

> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
>     - shard-glk:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20340_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][6] ([i915#3002])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb5/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2410])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([i915#3063])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842]) +3 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#307]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk2/igt@gem_mmap_gtt@big-copy.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk3/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#307]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb5/igt@gem_pread@exhaustion.html
>     - shard-kbl:          NOTRUN -> [WARN][23] ([i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][24] ([i915#2724])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb5/igt@gem_userptr_blits@vma-merge.html
>     - shard-apl:          NOTRUN -> [FAIL][25] ([i915#3318])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl8/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109289]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@gen3_mixed_blits.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#112306])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][28] ([i915#3296])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl8/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#454])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl9/igt@i915_pm_dc@dc6-psr.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][32] ([i915#180])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111614])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
>     - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#2868]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl6/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl5/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +21 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-b-degamma:
>     - shard-glk:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@kms_color_chamelium@pipe-b-degamma.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111828])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3319]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl7/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3528])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][48] -> [DMESG-WARN][49] ([i915#1982]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl5/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl4/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2672])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +96 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +8 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#533])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-tglb:         NOTRUN -> [FAIL][67] ([i915#132] / [i915#3467])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +69 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
>     - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271]) +386 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-snb5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +128 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#2530])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-complete:
>     - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271]) +12 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@nouveau_crc@pipe-b-source-outp-complete.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         [PASS][73] -> [DMESG-WARN][74] ([i915#262])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb5/igt@perf_pmu@module-unload.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb7/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_nv_pcopy@test1_macro:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109291])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@prime_nv_pcopy@test1_macro.html
> 
>   * igt@sysfs_clients@create:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2994])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl6/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2994])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2994])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@sysfs_clients@split-10.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl1/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][80] ([i915#658]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb8/igt@feature_discovery@psr2.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@in-flight-internal-10ms:
>     - shard-tglb:         [DMESG-WARN][82] ([i915#2868]) -> [PASS][83] +3 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb5/igt@gem_eio@in-flight-internal-10ms.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb8/igt@gem_eio@in-flight-internal-10ms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][84] ([i915#2846]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][86] ([i915#2842]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked:
>     - shard-glk:          [DMESG-WARN][88] ([i915#118] / [i915#95]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
> 
>   * igt@gem_mmap_gtt@big-copy-xy:
>     - shard-skl:          [FAIL][90] ([i915#307]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl8/igt@gem_mmap_gtt@big-copy-xy.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-glk:          [FAIL][92] ([i915#1888] / [i915#3160]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk2/igt@gem_mmap_offset@clear.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk8/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][96] ([i915#1436] / [i915#716]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl6/igt@gen9_exec_parse@allowed-single.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][98] ([i915#2521]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-skl:          [FAIL][100] ([i915#2346]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-skl:          [FAIL][102] -> [PASS][103] +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
>     - shard-skl:          [DMESG-WARN][104] ([i915#1982]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-skl:          [INCOMPLETE][106] ([i915#146] / [i915#198]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][108] ([i915#79]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][110] -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [INCOMPLETE][112] ([i915#198]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][114] ([i915#2122]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117] +5 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][120] ([fdo#109441]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb8/igt@kms_psr@psr2_suspend.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-tglb:         [INCOMPLETE][122] ([i915#456]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
>     - shard-tglb:         [DMESG-WARN][124] ([i915#2411] / [i915#2868]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-tglb8/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [FAIL][126] ([i915#1542]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb1/igt@perf@polling-parameterized.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb6/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][128] ([i915#2842]) -> [FAIL][129] ([i915#2849])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][130] ([i915#1804] / [i915#2684]) -> [WARN][131] ([i915#2684]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-skl:          [INCOMPLETE][132] -> [INCOMPLETE][133] ([i915#2782] / [i915#3462])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-skl7/igt@i915_selftest@live@execlists.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-skl4/igt@i915_selftest@live@execlists.html
>     - shard-iclb:         [INCOMPLETE][134] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][135] ([i915#3462])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb1/igt@i915_selftest@live@execlists.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb5/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][136] ([i915#2920]) -> [SKIP][137] ([i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][138] ([i915#658]) -> [SKIP][139] ([i915#2920]) +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl1/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl1/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10206/shard-kbl6/igt@runner@aborted.html
>    [
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20340/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
