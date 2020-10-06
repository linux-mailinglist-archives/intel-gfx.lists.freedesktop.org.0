Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D834F284AA4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 13:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D080B892A9;
	Tue,  6 Oct 2020 11:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB176892A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 11:04:32 +0000 (UTC)
IronPort-SDR: Y13DamCICraWf649i02NSKTmGWmY9mausTjzGW3Mk1lmJ9h7UKnGlBVosIaYqzEQ4eCxDLdsy5
 bYu1psK1dRUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="249150761"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="249150761"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:04:30 -0700
IronPort-SDR: RDhTwD5xPYKNXdZwdhGkvdLF4BuQM9sp3ZNUkU7DJtWp5aPDxYaIezqXONGgHIxn3rshp4n7EO
 P/UgKAGHSJwQ==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527301305"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:04:28 -0700
Date: Tue, 6 Oct 2020 14:04:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201006110425.GA1496623@ideak-desk.fi.intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <160195199192.18759.456523878788297878@emeril.freedesktop.org>
 <20201006103258.GC1494421@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006103258.GC1494421@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_Combo_PHY_DPLL_fractional_divider_for_38=2E4MH?=
 =?utf-8?q?z_ref_clock_=28rev6=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 01:32:58PM +0300, Imre Deak wrote:
> On Tue, Oct 06, 2020 at 02:39:51AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock (rev6)
> > URL   : https://patchwork.freedesktop.org/series/82173/
> > State : failure

Thanks for the review, pushed to drm-tip.

> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_9098_full -> Patchwork_18629_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_18629_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_18629_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_18629_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_softpin@softpin:
> >     - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-iclb6/igt@gem_softpin@softpin.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-iclb1/igt@gem_softpin@softpin.html
> 
> Not sure where this comes from, looks like a GEM related issue. Can't
> see how it would be related to the patchset, since the initial modeset
> sequence in the log is not affected and the rest of PLL the changes are
> TGL specific.
> 
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_18629_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_exec_reloc@basic-many-active@vecs0:
> >     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2389])
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html
> > 
> >   * igt@kms_cursor_legacy@all-pipes-torture-bo:
> >     - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-tglb3/igt@kms_cursor_legacy@all-pipes-torture-bo.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-tglb7/igt@kms_cursor_legacy@all-pipes-torture-bo.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#79])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> >     - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#79]) +1 similar issue
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@c-dp1:
> >     - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
> >     - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +2 similar issues
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> > 
> >   * igt@kms_hdr@bpc-switch-suspend:
> >     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
> >     - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#198])
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> >     - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> > 
> >   * igt@kms_psr@psr2_cursor_plane_move:
> >     - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html
> > 
> >   * igt@kms_setmode@basic:
> >     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#31])
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk4/igt@kms_setmode@basic.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk1/igt@kms_setmode@basic.html
> > 
> >   * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
> >     - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +11 similar issues
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
> > 
> >   * igt@kms_vblank@pipe-b-wait-forked-busy:
> >     - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1635] / [i915#1982]) +2 similar issues
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-apl4/igt@kms_vblank@pipe-b-wait-forked-busy.html
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-apl3/igt@kms_vblank@pipe-b-wait-forked-busy.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_userptr_blits@unsync-unmap-cycles:
> >     - shard-skl:          [TIMEOUT][29] ([i915#2424]) -> [PASS][30]
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl1/igt@gem_userptr_blits@unsync-unmap-cycles.html
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html
> > 
> >   * {igt@kms_async_flips@async-flip-with-page-flip-events}:
> >     - shard-glk:          [FAIL][31] ([i915#2521]) -> [PASS][32]
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk9/igt@kms_async_flips@async-flip-with-page-flip-events.html
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk7/igt@kms_async_flips@async-flip-with-page-flip-events.html
> > 
> >   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> >     - shard-glk:          [FAIL][33] ([i915#72]) -> [PASS][34]
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk9/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
> >     - shard-glk:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
> >     - shard-glk:          [FAIL][37] ([i915#2122]) -> [PASS][38]
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> >     - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +6 similar issues
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
> >     - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +1 similar issue
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> > 
> >   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> >     - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> >     - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46]
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> > 
> >   * igt@kms_psr@psr2_basic:
> >     - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +1 similar issue
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-iclb1/igt@kms_psr@psr2_basic.html
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-iclb2/igt@kms_psr@psr2_basic.html
> > 
> >   * igt@perf_pmu@module-unload:
> >     - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#1982]) -> [PASS][50]
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9098/shard-apl1/igt@perf_pmu@module-unload.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/shard-apl4/igt@perf_pmu@module-unload.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
> >   [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
> >   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
> >   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
> >   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
> >   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
> >   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
> >   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
> >   [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
> >   [i915#2469]: https://gitlab.freedesktop.org/drm/intel/issues/2469
> >   [i915#2476]: https://gitlab.freedesktop.org/drm/intel/issues/2476
> >   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
> >   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
> >   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
> >   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
> >   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> > 
> > 
> > Participating hosts (11 -> 12)
> > ------------------------------
> > 
> >   Additional (1): pig-snb-2600 
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_9098 -> Patchwork_18629
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_9098: 877045337ceb241797ac16226a1f2f76b3553d1d @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_5800: 982ca4122fd4f04ad3dfa80c6246f190b36e0c72 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> >   Patchwork_18629: f3685bccf1c82e3f7abefc8732655b3ee9395c39 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18629/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
