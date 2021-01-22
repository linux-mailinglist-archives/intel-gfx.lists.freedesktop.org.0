Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E5E30057D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 15:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CD26EA16;
	Fri, 22 Jan 2021 14:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1096E9FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 14:34:03 +0000 (UTC)
IronPort-SDR: 47oTaUl7hoCfHVN0I7NyloqOa2PkD2qvLNU3HGm2VQYB42AJl8SouC04WzPZOKxRdg4eP16o88
 XTG8fenn72CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="243528351"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="243528351"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 06:34:02 -0800
IronPort-SDR: dZ+jv892vfbtbKe1dshxaZabDW3bDJTtebXcLssWONoaAdNm9/sCFL2jzfZ7KqcTLW6cQ927gK
 m2aM0KVEOzSA==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385778054"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 06:33:59 -0800
Date: Fri, 22 Jan 2021 16:33:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Mika Kahola <mika.kahola@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210122143356.GC1515372@ideak-desk.fi.intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <161129823204.14038.16763831498541036285@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161129823204.14038.16763831498541036285@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Add_display_render_clear_color_decompression_sup?=
 =?utf-8?q?port_=28rev5=29?=
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

On Fri, Jan 22, 2021 at 06:50:32AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gen12: Add display render clear color decompression support (rev5)
> URL   : https://patchwork.freedesktop.org/series/85877/
> State : failure

Patchset pushed to -din thanks for the work on this and the reviews.

The failure is on an unrelated platform.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9650_full -> Patchwork_19433_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19433_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19433_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19433_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl5/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19433_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_exec@basic-close-race:
>     - shard-iclb:         [PASS][2] -> [INCOMPLETE][3] ([i915#1895])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb3/igt@gem_ctx_exec@basic-close-race.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb7/igt@gem_ctx_exec@basic-close-race.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2842]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2389])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1610] / [i915#2803])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-normal:
>     - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@gem_exec_whisper@basic-normal.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk7/igt@gem_exec_whisper@basic-normal.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#2898])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-apl4/igt@gem_spin_batch@spin-each.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-apl3/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271]) +29 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl1/igt@gen3_mixed_blits.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-snb7/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color@pipe-b-ctm-0-75:
>     - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk5/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl5/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
>     - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#54]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#2122])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#2598])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +20 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271]) +11 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1188]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#533])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][33] ([fdo#108145] / [i915#265])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#533])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_import_export@prime:
>     - shard-kbl:          [INCOMPLETE][39] -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl7/igt@drm_import_export@prime.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl1/igt@drm_import_export@prime.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2624]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl3/igt@gem_exec_capture@pi@vecs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl3/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [FAIL][43] ([i915#2842]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][45] ([i915#2842]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][47] ([i915#2842]) -> [PASS][48] +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][49] ([i915#2842]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][51] ([i915#2849]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-glk:          [DMESG-WARN][53] ([i915#1610]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk5/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][55] ([i915#2880]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][57] ([i915#454]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-skl:          [INCOMPLETE][59] ([i915#146] / [i915#198]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl2/igt@i915_suspend@sysfs-reader.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl5/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>     - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62] +6 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][63] ([i915#2346]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-tglb:         [FAIL][65] ([i915#2346]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [FAIL][69] ([i915#2122]) -> [PASS][70] +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [SKIP][75] ([fdo#109642] / [fdo#111068]) -> [PASS][76] +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][79] ([i915#658]) -> [SKIP][80] ([i915#588])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][81] ([i915#2684]) -> [WARN][82] ([i915#2681] / [i915#2684])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][83] ([i915#1804] / [i915#2684]) -> [WARN][84] ([i915#2681] / [i915#2684])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][85] ([fdo#109349]) -> [DMESG-WARN][86] ([i915#1226])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][87] ([i915#658]) -> [SKIP][88] ([i915#2920])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][89] ([i915#2920]) -> [SKIP][90] ([i915#658]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-glk:          [SKIP][91] ([fdo#109271]) -> [SKIP][92] ([fdo#109271] / [i915#658]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk5/igt@kms_psr2_su@frontbuffer.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk6/igt@kms_psr2_su@frontbuffer.html
>     - shard-skl:          [SKIP][93] ([fdo#109271]) -> [SKIP][94] ([fdo#109271] / [i915#658]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl6/igt@kms_psr2_su@frontbuffer.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl4/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-apl:          [SKIP][95] ([fdo#109271]) -> [SKIP][96] ([fdo#109271] / [i915#658]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-apl4/igt@kms_psr2_su@page_flip.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-apl3/igt@kms_psr2_su@page_flip.html
>     - shard-kbl:          [SKIP][97] ([fdo#109271]) -> [SKIP][98] ([fdo#109271] / [i915#658]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl2/igt@kms_psr2_su@page_flip.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][99], [FAIL][100]) ([i915#2295] / [i915#2505] / [i915#2722]) -> [FAIL][101] ([i915#2295])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl6/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-kbl7/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-kbl4/igt@runner@aborted.html
>     - shard-glk:          ([FAIL][102], [FAIL][103]) ([i915#2295] / [i915#2426] / [k.org#202321]) -> [FAIL][104] ([i915#2295] / [k.org#202321])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk4/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-glk9/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-glk4/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][105], [FAIL][106]) ([i915#1436] / [i915#2295]) -> ([FAIL][107], [FAIL][108], [FAIL][109]) ([i915#1436] / [i915#2295] / [i915#2426])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl9/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9650/shard-skl4/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl9/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl8/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/shard-skl2/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
>   [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
>   [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2880]: https://gitlab.freedesktop.org/drm/intel/issues/2880
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9650 -> Patchwork_19433
> 
>   CI-20190529: 20190529
>   CI_DRM_9650: 3f989d1bb4cfd91e25549f9fd7a750412581dcc4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19433: 34cda0c7d54c4ab10b167f9003b18f6183849b85 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19433/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
