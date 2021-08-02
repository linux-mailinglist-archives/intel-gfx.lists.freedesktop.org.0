Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E283DD497
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 13:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5316E29D;
	Mon,  2 Aug 2021 11:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC436E29D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 11:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10063"; a="211564901"
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="211564901"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 04:23:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="478765941"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 04:23:30 -0700
Date: Mon, 2 Aug 2021 14:23:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Anshuman Gupta <anshuman.gupta@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210802112326.GB1715110@ideak-desk.fi.intel.com>
References: <20210729121858.16897-1-anshuman.gupta@intel.com>
 <162759764952.27324.11502066721045173140@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <162759764952.27324.11502066721045173140@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGxw?=
 =?utf-8?q?sp_with_hdmi/dp_outputs?=
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

On Thu, Jul 29, 2021 at 10:27:29PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: lpsp with hdmi/dp outputs
> URL   : https://patchwork.freedesktop.org/series/93179/
> State : failure

Thanks for the patch pushed it to -din, fixing some typos in the commit
message and the playback domain name while applying.

The SKL failure looks unrelated, since nothing changes there, maybe we
are only missing the trace_clock=global kernel param on that machine.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10418_full -> Patchwork_20740_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20740_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20740_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20740_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20740_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-snb6/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#2771])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl1/igt@gem_eio@reset-stress.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl4/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2849])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#1888] / [i915#307])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][17] ([i915#2658]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@gem_pread@exhaustion.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1436] / [i915#1982] / [i915#716])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1937])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@basic-rte:
>     - shard-apl:          NOTRUN -> [FAIL][23] ([i915#579])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl6/igt@i915_pm_rpm@basic-rte.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][24] ([i915#3722])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +214 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl2/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-glk:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk7/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271]) +30 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2346])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#533])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([i915#3788])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([i915#155] / [i915#180] / [i915#636])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +75 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +7 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2122])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +94 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
>     - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271]) +222 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-snb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2733])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([IGT#2])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180] / [i915#295])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [PASS][65] -> [INCOMPLETE][66] ([i915#155] / [i915#2828])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2994])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk7/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl2/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2994])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        [SKIP][70] ([i915#2582]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@fbdev@nullptr.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +4 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-rkl}:        [FAIL][74] ([i915#3115]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@gem_eio@reset-stress.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][76] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][78] ([i915#2842]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-apl:          [SKIP][80] ([fdo#109271]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][82] ([i915#2842]) -> [PASS][83] +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-rkl}:        [FAIL][84] ([i915#2842]) -> [PASS][85] +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-scanout@vecs0:
>     - {shard-rkl}:        [SKIP][86] ([i915#3639]) -> [PASS][87] +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - {shard-rkl}:        [FAIL][88] ([fdo#103375]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-1/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [DMESG-WARN][90] ([i915#118] / [i915#95]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_mmap_gtt@basic-wc:
>     - {shard-rkl}:        [FAIL][92] ([i915#3830]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@gem_mmap_gtt@basic-wc.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-1/igt@gem_mmap_gtt@basic-wc.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - {shard-rkl}:        [FAIL][94] ([i915#307]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-2/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - {shard-rkl}:        [SKIP][96] ([i915#658]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_rpm@debugfs-forcewake-user:
>     - {shard-rkl}:        [SKIP][98] ([i915#3844] / [i915#579]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@i915_pm_rpm@debugfs-forcewake-user.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-1/igt@i915_pm_rpm@debugfs-forcewake-user.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-rkl}:        [DMESG-FAIL][100] ([i915#1021]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-apl8/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events:
>     - {shard-rkl}:        [SKIP][104] ([i915#1845]) -> [PASS][105] +6 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][106] ([i915#3638]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][108] ([i915#3721]) -> [PASS][109] +4 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][110] ([i915#3678]) -> [PASS][111] +4 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-ctm-blue-to-red:
>     - {shard-rkl}:        [SKIP][112] ([i915#1149] / [i915#1849]) -> [PASS][113] +5 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_color@pipe-a-ctm-blue-to-red.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][114] ([i915#2828] / [i915#300]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
>     - {shard-rkl}:        [SKIP][116] ([fdo#112022]) -> [PASS][117] +6 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
>     - {shard-rkl}:        [SKIP][118] ([fdo#111825]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dp_aux_dev:
>     - {shard-rkl}:        [SKIP][120] ([i915#1257]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_dp_aux_dev.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
>     - {shard-rkl}:        [SKIP][122] ([fdo#111314]) -> [PASS][123] +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - {shard-rkl}:        [SKIP][126] ([i915#1849]) -> [PASS][127] +27 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
>     - shard-skl:          [DMESG-WARN][128] ([i915#1982]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-skl5/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-skl8/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_plane@plane-panning-top-left@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][130] ([i915#3558]) -> [PASS][131] +3 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
>     - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#3558]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
> 
>   * igt@kms_psr@dpms:
>     - {shard-rkl}:        [SKIP][134] ([i915#1072]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@kms_psr@dpms.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@kms_psr@dpms.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][136] ([fdo#109441]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@perf@polling-small-buf:
>     - {shard-rkl}:        [FAIL][138] ([i915#1722]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-rkl-2/igt@perf@polling-small-buf.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-rkl-6/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [FAIL][140] ([i915#2842]) -> [FAIL][141] ([i915#2851])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][142] ([i915#1804] / [i915#2684]) -> [WARN][143] ([i915#2684])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][144] ([i915#658]) -> [SKIP][145] ([i915#2920])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][146] ([i915#2920]) -> [SKIP][147] ([i915#658]) +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10418/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [147]: https://i
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20740/index.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

