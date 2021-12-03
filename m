Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8209467353
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 09:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB456EB19;
	Fri,  3 Dec 2021 08:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 147196EB19
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 08:38:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="224178889"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="224178889"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 00:38:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="501110851"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 00:38:21 -0800
Date: Fri, 3 Dec 2021 14:10:03 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20211203084000.GB30494@intel.com>
References: <20211130132005.6305-1-anshuman.gupta@intel.com>
 <163829699421.20412.446739019662888708@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163829699421.20412.446739019662888708@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Disable_IRQ_for_timestamp_calculation_=28rev3?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-11-30 at 18:29:54 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftest: Disable IRQ for timestamp calculation (rev3)
> URL   : https://patchwork.freedesktop.org/series/96853/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10943_full -> Patchwork_21701_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21701_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21701_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21701_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-snb4/igt@gem_fenced_exec_thrash@too-many-fences.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html
Above failure is unrelated to this patch.
Pushed to drm-intel-next, thanks for review.
Br,
Anshuman.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21701_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         NOTRUN -> [SKIP][3] ([i915#4525])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2846])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][12] ([i915#3002])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][13] ([i915#3318])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl4/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +4 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl2/igt@i915_suspend@debugfs-reader.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#3743])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3689])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-tglb8/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109278])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl3/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][27] ([i915#180])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109274] / [fdo#109278])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111825])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-tglb8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +83 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +6 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#2122])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][37] ([i915#3699])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +105 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109280]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1188])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl10/igt@kms_hdr@bpc-switch.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109289])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb6/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109289])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-tglb8/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][46] ([fdo#108145] / [i915#265])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#658]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271]) +37 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-snb7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-glk:          [PASS][53] -> [DMESG-WARN][54] ([i915#118] / [i915#1888])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180] / [i915#295])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl9/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2994])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl3/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        ([FAIL][59], [PASS][60]) ([i915#2842]) -> [PASS][61]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][62] ([i915#2842]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +3 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][66] ([i915#454]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][68] ([i915#3921]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - {shard-rkl}:        ([SKIP][70], [SKIP][71]) ([i915#1845]) -> [PASS][72]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_concurrent@pipe-a:
>     - {shard-rkl}:        [SKIP][73] ([i915#1845] / [i915#4070]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_concurrent@pipe-a.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_concurrent@pipe-a.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
>     - {shard-rkl}:        [SKIP][75] ([i915#1849] / [i915#4070]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - {shard-rkl}:        [SKIP][77] ([fdo#111825] / [i915#4070]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
>     - {shard-rkl}:        [SKIP][79] ([fdo#111314]) -> [PASS][80] +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][81] ([i915#2122]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>     - shard-apl:          [FAIL][83] ([i915#79]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [SKIP][85] ([i915#3701]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - {shard-rkl}:        [SKIP][87] ([i915#1849]) -> [PASS][88] +4 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][89] ([i915#1188]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-64:
>     - {shard-rkl}:        [SKIP][93] ([i915#1845]) -> [PASS][94] +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_plane_cursor@pipe-a-primary-size-64.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-size-64.html
> 
>   * igt@kms_psr@sprite_plane_move:
>     - {shard-rkl}:        [SKIP][95] ([i915#1072]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-rkl-1/igt@kms_psr@sprite_plane_move.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-rkl-6/igt@kms_psr@sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][97] ([i915#31]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk3/igt@kms_setmode@basic.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk6/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [FAIL][99] ([i915#4275]) -> [SKIP][100] ([i915#4281])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][101] ([i915#1804] / [i915#2684]) -> [WARN][102] ([i915#2684]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          [SKIP][103] ([fdo#109271] / [i915#3886]) -> [SKIP][104] ([fdo#109271] / [i915#1888] / [i915#3886])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-glk9/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-glk4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][105] ([i915#2920]) -> [SKIP][106] ([i915#658]) +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][107] ([i915#658]) -> [SKIP][108] ([i915#2920]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116]) ([i915#180] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312] / [i915#602])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl4/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl6/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl1/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl1/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl2/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl1/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl3/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-kbl1/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl1/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl1/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl1/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl7/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl4/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl7/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl6/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl4/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl4/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-kbl3/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl4/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl2/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-apl2/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl7/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl8/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl4/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-apl8/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#1436] / [i915#2029] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#4312])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl5/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl10/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl6/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/shard-skl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl6/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl7/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/shard-skl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#132]: ht
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html
