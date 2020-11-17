Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE31E2B695A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 17:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E59C6E02A;
	Tue, 17 Nov 2020 16:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52686E02A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 16:06:40 +0000 (UTC)
IronPort-SDR: Er81622+4aEFZHnsKtQVeW2ogT5X29hHcnjqEU2mVEP/2qLG5MUQW91P/u2f2Fo2y+pElmNv+r
 R5XuO/ujJxGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171051833"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="171051833"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 08:06:30 -0800
IronPort-SDR: aLaYm2dAvuwj25oLN6He9co2ImwuR/r4xrIN2LiAqRQKqjb/WWMbHrVVMeMx3iODCB0Yn8Lf62
 lvN7lqgbPIWA==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="533863569"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 08:06:30 -0800
Date: Tue, 17 Nov 2020 08:06:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201117160629.GH2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201110121700.4338-1-anshuman.gupta@intel.com>
 <160513129395.4719.4540514284794195135@emeril.freedesktop.org>
 <20201117110623.GD13853@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117110623.GD13853@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Tweaked_Wa=5F14010685332_for_PCHs_used_on_gen11_platfo?=
 =?utf-8?q?rms_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 04:36:24PM +0530, Anshuman Gupta wrote:
> On 2020-11-11 at 21:48:13 +0000, Patchwork wrote:
> 
> Hi Matt,
> Could you please help to merge the below patch to dinq.
> It is having RB of rodrigo and CI results also green.

Thanks for the reminder; applied to dinq.


Matt


> 
> Thanks,
> Anshuman Gupta.
> > == Series Details ==
> > 
> > Series: drm/i915: Tweaked Wa_14010685332 for PCHs used on gen11 platforms (rev4)
> > URL   : https://patchwork.freedesktop.org/series/83233/
> > State : success
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_9309_full -> Patchwork_18886_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **WARNING**
> > 
> >   Minor unknown changes coming with Patchwork_18886_full need to be verified
> >   manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_18886_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_18886_full:
> > 
> > ### IGT changes ###
> > 
> > #### Warnings ####
> > 
> >   * igt@gem_exec_create@forked:
> >     - shard-glk:          [FAIL][1] ([i915#1888]) -> [FAIL][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk9/igt@gem_exec_create@forked.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk7/igt@gem_exec_create@forked.html
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or statuses.
> >   They do not affect the overall result.
> > 
> >   * {igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a}:
> >     - shard-skl:          [PASS][3] -> [FAIL][4]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-a.html
> > 
> >   
> > New tests
> > ---------
> > 
> >   New tests have been introduced between CI_DRM_9309_full and Patchwork_18886_full:
> > 
> > ### New CI tests (1) ###
> > 
> >   * boot:
> >     - Statuses : 200 pass(s)
> >     - Exec time: [0.0] s
> > 
> >   
> > 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_18886_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_exec_create@basic:
> >     - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#1037])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-snb7/igt@gem_exec_create@basic.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-snb7/igt@gem_exec_create@basic.html
> > 
> >   * igt@gem_userptr_blits@unsync-unmap-cycles:
> >     - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#1888])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw8/igt@gem_userptr_blits@unsync-unmap-cycles.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html
> > 
> >   * igt@i915_selftest@live@blt:
> >     - shard-snb:          [PASS][9] -> [DMESG-FAIL][10] ([i915#1409])
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-snb4/igt@i915_selftest@live@blt.html
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-snb7/igt@i915_selftest@live@blt.html
> > 
> >   * igt@kms_big_fb@linear-32bpp-rotate-180:
> >     - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +2 similar issues
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-kbl6/igt@kms_big_fb@linear-32bpp-rotate-180.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-180.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
> >     - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#300])
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> > 
> >   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
> >     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> > 
> >   * igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:
> >     - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb5/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb2/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html
> > 
> >   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
> >     - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#2370])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
> >     - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#1982]) +6 similar issues
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-apl1/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-apl6/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> >     - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#2598])
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
> >     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#2122]) +1 similar issue
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> > 
> >   * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
> >     - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +2 similar issues
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk4/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
> >     - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +12 similar issues
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
> > 
> >   * igt@kms_hdr@bpc-switch-suspend:
> >     - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188]) +1 similar issue
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
> >     - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#198])
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> >     - shard-skl:          [PASS][37] -> [DMESG-FAIL][38] ([fdo#108145] / [i915#1982])
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> >     - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > 
> >   * igt@kms_psr@psr2_sprite_plane_move:
> >     - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +2 similar issues
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
> > 
> >   * igt@kms_vblank@pipe-c-query-forked-busy:
> >     - shard-hsw:          [PASS][43] -> [DMESG-WARN][44] ([i915#1982]) +1 similar issue
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw8/igt@kms_vblank@pipe-c-query-forked-busy.html
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw6/igt@kms_vblank@pipe-c-query-forked-busy.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1542])
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl6/igt@perf@polling-parameterized.html
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl4/igt@perf@polling-parameterized.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_eio@in-flight-internal-immediate:
> >     - shard-snb:          [TIMEOUT][47] -> [PASS][48]
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-snb7/igt@gem_eio@in-flight-internal-immediate.html
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-snb7/igt@gem_eio@in-flight-internal-immediate.html
> > 
> >   * igt@gem_exec_reloc@basic-many-active@rcs0:
> >     - shard-hsw:          [FAIL][49] ([i915#2389]) -> [PASS][50]
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html
> > 
> >   * igt@gen9_exec_parse@allowed-all:
> >     - shard-skl:          [DMESG-WARN][51] ([i915#1436] / [i915#716]) -> [PASS][52]
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@gen9_exec_parse@allowed-all.html
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl2/igt@gen9_exec_parse@allowed-all.html
> > 
> >   * {igt@kms_async_flips@alternate-sync-async-flip}:
> >     - shard-tglb:         [FAIL][53] ([i915#2521]) -> [PASS][54]
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html
> > 
> >   * {igt@kms_async_flips@async-flip-with-page-flip-events}:
> >     - shard-glk:          [FAIL][55] ([i915#2521]) -> [PASS][56]
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk4/igt@kms_async_flips@async-flip-with-page-flip-events.html
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk6/igt@kms_async_flips@async-flip-with-page-flip-events.html
> >     - shard-apl:          [FAIL][57] ([i915#1635] / [i915#2521]) -> [PASS][58]
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-apl3/igt@kms_async_flips@async-flip-with-page-flip-events.html
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-apl2/igt@kms_async_flips@async-flip-with-page-flip-events.html
> > 
> >   * igt@kms_big_fb@linear-32bpp-rotate-180:
> >     - shard-glk:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
> > 
> >   * igt@kms_concurrent@pipe-a:
> >     - shard-kbl:          [DMESG-WARN][61] ([i915#78]) -> [PASS][62]
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-kbl2/igt@kms_concurrent@pipe-a.html
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-kbl1/igt@kms_concurrent@pipe-a.html
> > 
> >   * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
> >     - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +1 similar issue
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> > 
> >   * igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge:
> >     - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +3 similar issues
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb8/igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge.html
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb3/igt@kms_cursor_edge_walk@pipe-d-64x64-right-edge.html
> > 
> >   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> >     - shard-hsw:          [FAIL][67] ([i915#96]) -> [PASS][68]
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> >     - shard-skl:          [FAIL][69] ([i915#2346]) -> [PASS][70]
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
> >     - shard-tglb:         [FAIL][71] ([i915#2346]) -> [PASS][72]
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> > 
> >   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:
> >     - shard-kbl:          [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-kbl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-kbl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1:
> >     - shard-apl:          [FAIL][75] ([i915#1635] / [i915#2122]) -> [PASS][76]
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-apl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-apl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
> > 
> >   * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:
> >     - shard-glk:          [FAIL][77] ([i915#2122]) -> [PASS][78] +2 similar issues
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
> > 
> >   * igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1:
> >     - shard-skl:          [FAIL][79] ([i915#2122]) -> [PASS][80] +4 similar issues
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl3/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl2/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
> >     - shard-snb:          [FAIL][81] ([i915#2546]) -> [PASS][82]
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
> > 
> >   * igt@kms_plane_cursor@pipe-b-overlay-size-128:
> >     - shard-skl:          [DMESG-WARN][83] ([i915#1982]) -> [PASS][84] +4 similar issues
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl4/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
> > 
> >   * igt@kms_psr2_su@page_flip:
> >     - shard-iclb:         [SKIP][85] ([fdo#109642] / [fdo#111068]) -> [PASS][86]
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb8/igt@kms_psr2_su@page_flip.html
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb2/igt@kms_psr2_su@page_flip.html
> > 
> >   * igt@kms_psr@psr2_basic:
> >     - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +2 similar issues
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb1/igt@kms_psr@psr2_basic.html
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb2/igt@kms_psr@psr2_basic.html
> > 
> >   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
> >     - shard-apl:          [DMESG-WARN][89] ([i915#1635] / [i915#1982]) -> [PASS][90]
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-apl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-apl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
> > 
> >   * igt@kms_vblank@pipe-c-query-forked-busy:
> >     - shard-iclb:         [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb8/igt@kms_vblank@pipe-c-query-forked-busy.html
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb3/igt@kms_vblank@pipe-c-query-forked-busy.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-glk:          [FAIL][93] ([i915#1542]) -> [PASS][94]
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk7/igt@perf@polling-parameterized.html
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk1/igt@perf@polling-parameterized.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@gem_eio@in-flight-suspend:
> >     - shard-hsw:          [DMESG-WARN][95] ([i915#2637]) -> [INCOMPLETE][96] ([i915#2637])
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-hsw8/igt@gem_eio@in-flight-suspend.html
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-hsw1/igt@gem_eio@in-flight-suspend.html
> >     - shard-iclb:         [DMESG-WARN][97] -> [INCOMPLETE][98] ([i915#1185])
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb1/igt@gem_eio@in-flight-suspend.html
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb2/igt@gem_eio@in-flight-suspend.html
> > 
> >   * igt@kms_dp_dsc@basic-dsc-enable-edp:
> >     - shard-iclb:         [DMESG-WARN][99] ([i915#1226]) -> [SKIP][100] ([fdo#109349])
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> > 
> >   * igt@kms_flip@plain-flip-ts-check@a-edp1:
> >     - shard-skl:          [DMESG-FAIL][101] ([i915#1982]) -> [DMESG-WARN][102] ([i915#1982])
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> > 
> >   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
> >     - shard-tglb:         [INCOMPLETE][103] ([i915#1436]) -> [INCOMPLETE][104] ([i915#1436] / [i915#456])
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> > 
> >   * igt@runner@aborted:
> >     - shard-glk:          ([FAIL][105], [FAIL][106], [FAIL][107]) ([i915#1611] / [i915#1814] / [i915#2439] / [k.org#202321]) -> ([FAIL][108], [FAIL][109], [FAIL][110]) ([i915#1611] / [i915#1814] / [i915#2439] / [i915#483] / [k.org#202321])
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk4/igt@runner@aborted.html
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk8/igt@runner@aborted.html
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-glk1/igt@runner@aborted.html
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk9/igt@runner@aborted.html
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk4/igt@runner@aborted.html
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-glk3/igt@runner@aborted.html
> >     - shard-skl:          ([FAIL][111], [FAIL][112]) ([i915#1436] / [i915#1611] / [i915#2439]) -> ([FAIL][113], [FAIL][114]) ([i915#1436] / [i915#1611] / [i915#1814] / [i915#2029] / [i915#2439])
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl2/igt@runner@aborted.html
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9309/shard-skl1/igt@runner@aborted.html
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl3/igt@runner@aborted.html
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/shard-skl6/igt@runner@aborted.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
> >   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
> >   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
> >   [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
> >   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
> >   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
> >   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
> >   [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
> >   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
> >   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
> >   [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
> >   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
> >   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
> >   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
> >   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
> >   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
> >   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
> >   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
> >   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
> >   [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
> >   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
> >   [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
> >   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
> >   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
> >   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
> >   [i915#2637]: https://gitlab.freedesktop.org/drm/intel/issues/2637
> >   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
> >   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
> >   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
> >   [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
> >   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
> >   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> >   [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
> >   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> >   [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
> >   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
> > 
> > 
> > Participating hosts (11 -> 11)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_9309 -> Patchwork_18886
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_9309: 45764661277bc25b815dfe5d2e5536e98de61c2a @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_5847: 8cffaebec5228a5042cc6928ac582a0589e2de3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> >   Patchwork_18886: d66474508b8129922d70bb36ad690002e771cfab @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18886/index.html

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
