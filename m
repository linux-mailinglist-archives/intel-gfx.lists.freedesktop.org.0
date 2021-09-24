Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0541A417728
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 16:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B0D6EE2D;
	Fri, 24 Sep 2021 14:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A834B6EE2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 14:56:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="246555621"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="246555621"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 07:56:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="515803426"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 07:56:18 -0700
Date: Fri, 24 Sep 2021 07:56:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210924145617.GI3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210914090412.1393498-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <163238033564.31049.2234091075601799292@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163238033564.31049.2234091075601799292@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_warning_from_the_rps_worker_=28rev3=29?=
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

On Thu, Sep 23, 2021 at 06:58:55AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Remove warning from the rps worker (rev3)
> URL   : https://patchwork.freedesktop.org/series/94650/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10629_full -> Patchwork_21140_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch and review.


Matt

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21140_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-persistence:
>     - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-snb6/igt@gem_ctx_persistence@legacy-engines-persistence.html
> 
>   * igt@gem_ctx_shared@q-in-order:
>     - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271]) +227 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-snb2/igt@gem_ctx_shared@q-in-order.html
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#3063])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl1/igt@gem_eio@in-flight-1us.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl2/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([i915#3063])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][18] ([i915#2658])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3323])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3323])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3297])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#2856])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2856])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb7/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#109288])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#1769])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3722]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#2705])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3689] / [i915#3886]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689]) +7 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color@pipe-d-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +75 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_color@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3116])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][46] ([i915#1319])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3359]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-tglb:         [PASS][48] -> [INCOMPLETE][49] ([i915#456])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2672])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][53] ([i915#180])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>     - shard-tglb:         [PASS][54] -> [INCOMPLETE][55] ([i915#2411] / [i915#456])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111825]) +12 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +72 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#1188])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#4182])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][64] ([i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#112054])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2920])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][72] ([i915#132] / [i915#3467])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109441])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109441])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb7/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +230 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb7/igt@kms_vblank@pipe-d-wait-busy.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-d-source-rg:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2530]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@nouveau_crc@pipe-d-source-rg.html
> 
>   * igt@perf@mi-rpc:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109289])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@perf@mi-rpc.html
> 
>   * igt@prime_nv_test@i915_import_gtt_mmap:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109291]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@prime_nv_test@i915_import_gtt_mmap.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109295])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl7/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl7/igt@sysfs_clients@sema-25.html
>     - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl8/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][86] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb5/igt@gem_eio@unwedge-stress.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][88] ([i915#2846]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][90] ([i915#1982]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - shard-skl:          [INCOMPLETE][92] ([i915#198]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-tglb:         [INCOMPLETE][94] ([i915#2411] / [i915#456]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb7/igt@i915_pm_rpm@system-suspend.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-tglb:         [INCOMPLETE][96] ([i915#456] / [i915#750]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb5/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][98] ([i915#2346]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][100] ([i915#79]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +5 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>     - shard-apl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105] +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [INCOMPLETE][106] ([i915#2411] / [i915#4173] / [i915#456]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][108] ([i915#2122]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][110] ([fdo#108145] / [i915#265]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][112] ([fdo#109441]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][114] ([i915#198] / [i915#2828]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][116] ([i915#1542]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl4/igt@perf@polling-parameterized.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl4/igt@perf@polling-parameterized.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][118] ([i915#1722]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-skl2/igt@perf@polling-small-buf.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-skl6/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [SKIP][120] ([fdo#109271]) -> [FAIL][121] ([i915#2842])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][122] ([i915#1804] / [i915#2684]) -> [WARN][123] ([i915#2684])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][124] ([i915#658]) -> [SKIP][125] ([i915#2920])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#92])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl4/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-kbl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl1/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl3/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl6/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-kbl6/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144], [FAIL][145]) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/shard-apl1/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/shard-apl2/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-t
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21140/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
