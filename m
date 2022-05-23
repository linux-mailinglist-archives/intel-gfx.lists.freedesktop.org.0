Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E77FC53113B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 15:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214AA10F88D;
	Mon, 23 May 2022 13:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E2610F2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 13:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653314080; x=1684850080;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=oA3a5P4B+s2Tpuk+hzzxXaLYhKFYPf1q6difwf/6kLY=;
 b=Sz7bGLKQSMwOq7voBnHBJ1cqcl1HiSvfCr0yf911Olexfxk8VIvaXdk3
 Z7TC160HSS+Rxp6OG7FMK582T1ShMGfUlLfIXXMlZDg32RZ8/L8j+tXxy
 sHVIqPr0zDeRlbrc2KcRYcRlGbk+Wy2s5AxjzHyNXgMw5UWZW+NsL14QQ
 0k3yw0phCD1M8BTC6a8NzezNwADMJpKMcLqYuvZIH9WHmx4QCKxUlod2d
 m6GzJxrhjiu5M6igEYAKCUkbSuoQMHRwtUcWLfU4pTtJAVFkYyV1+jGT4
 q0+Af5UQi+3y5rjaMwmn1fQsav8yuNyTX9+x64HOm4ejD1jAGIjGlgKVM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="359618963"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="359618963"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:54:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="547978558"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:54:38 -0700
Date: Mon, 23 May 2022 16:54:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YouSGtA1sZqQ0v9I@ideak-desk.fi.intel.com>
References: <20220511191911.2133928-1-imre.deak@intel.com>
 <165314577066.6193.17178634466250506886@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165314577066.6193.17178634466250506886@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/d12+=3A_Disable_DMC_firmware_flip_queue_handlers_=28rev4?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 21, 2022 at 03:09:30PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/d12+: Disable DMC firmware flip queue handlers (rev4)
> URL   : https://patchwork.freedesktop.org/series/103888/
> State : success

Pushed to drm-intel-next, thanks for the reviews.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11682_full -> Patchwork_103888v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103888v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-skl:          [PASS][1] -> [TIMEOUT][2] ([i915#3063])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl7/igt@gem_eio@in-flight-immediate.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl5/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#2849])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-snb5/igt@gem_exec_flush@basic-uc-pro-default.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl2/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#110892])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][16] ([i915#1886])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl9/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#5286])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271]) +21 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-snb2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][21] ([i915#3743])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@kms_chamelium@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl2/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-negative:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_color_chamelium@pipe-b-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +142 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#2346])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dsc@basic-dsc-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3840])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109274])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#79])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>     - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#79])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-edp1:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2122])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3701])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109280]) +4 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +36 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
>     - shard-iclb:         [PASS][46] -> [SKIP][47] ([i915#5235]) +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl8/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#2994])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@read:
>     - {shard-rkl}:        ([SKIP][53], [SKIP][54]) ([i915#2582]) -> [PASS][55]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@fbdev@read.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@fbdev@read.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        ([SKIP][56], [SKIP][57]) ([i915#658]) -> [PASS][58]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@feature_discovery@psr1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@feature_discovery@psr1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_eio@kms:
>     - {shard-dg1}:        [FAIL][59] ([i915#5784]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-dg1-19/igt@gem_eio@kms.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-dg1-15/igt@gem_eio@kms.html
>     - shard-tglb:         [FAIL][61] ([i915#5784]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglb2/igt@gem_eio@kms.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        ([FAIL][63], [PASS][64]) ([i915#3736] / [i915#5115]) -> [PASS][65]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@gem_eio@suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@gem_eio@suspend.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-1/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][66] ([i915#2842]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][68] ([i915#2842]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][70] ([i915#2842]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-snb:          [SKIP][72] ([fdo#109271]) -> [PASS][73] +5 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-snb7/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][74] ([i915#2190]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglb3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - {shard-tglu}:       [FAIL][76] ([i915#4171]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglu-6/igt@gem_softpin@evict-single-offset.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglu-8/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - {shard-rkl}:        ([PASS][78], [FAIL][79]) ([fdo#103375]) -> ([PASS][80], [PASS][81])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@gem_workarounds@suspend-resume.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@gem_workarounds@suspend-resume.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-1/igt@gem_workarounds@suspend-resume.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - {shard-rkl}:        ([FAIL][82], [PASS][83]) ([fdo#103375]) -> [PASS][84]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][85] ([i915#1982]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl10/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        ([SKIP][87], [SKIP][88]) ([i915#1397]) -> [PASS][89]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@i915_pm_rpm@dpms-lpsp.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][90] ([i915#3921]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl7/igt@i915_suspend@forcewake.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-a:
>     - {shard-tglu}:       [FAIL][94] -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglu-2/igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-a.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglu-4/igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-a.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][96] ([i915#1845] / [i915#4098]) -> [PASS][97] +8 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        ([SKIP][98], [SKIP][99]) ([i915#1845] / [i915#4098]) -> [PASS][100]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_color@pipe-b-ctm-max:
>     - {shard-rkl}:        [SKIP][101] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_color@pipe-b-ctm-max.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
>     - {shard-rkl}:        ([SKIP][103], [SKIP][104]) ([fdo#112022] / [i915#4070]) -> [PASS][105]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - {shard-rkl}:        [SKIP][106] ([fdo#112022] / [i915#4070]) -> [PASS][107] +3 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - {shard-rkl}:        [SKIP][108] ([fdo#111825] / [i915#4070]) -> [PASS][109] +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - {shard-rkl}:        ([SKIP][110], [SKIP][111]) ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][112]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
>     - {shard-rkl}:        [SKIP][113] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][115] ([i915#4767]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][117] ([i915#2122]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-tglb:         [DMESG-WARN][119] ([i915#2411] / [i915#2867]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>     - {shard-rkl}:        ([SKIP][121], [SKIP][122]) ([i915#1849] / [i915#4098]) -> [PASS][123] +5 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
>     - {shard-rkl}:        [SKIP][124] ([i915#1849] / [i915#4098]) -> [PASS][125] +9 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][126] ([i915#3558]) -> [PASS][127] +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - {shard-rkl}:        [SKIP][128] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][129] +3 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][130] ([fdo#108145] / [i915#265]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>     - shard-iclb:         [SKIP][132] ([i915#5176]) -> [PASS][133] +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@dpms:
>     - {shard-rkl}:        [SKIP][134] ([i915#1072]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_psr@dpms.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_psr@dpms.html
> 
>   * igt@kms_psr@primary_render:
>     - {shard-rkl}:        ([SKIP][136], [SKIP][137]) ([i915#1072]) -> [PASS][138]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@kms_psr@primary_render.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-4/igt@kms_psr@primary_render.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@kms_psr@primary_render.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][139] ([fdo#109441]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-kbl:          [FAIL][141] -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-kbl1/igt@kms_rotation_crc@primary-rotation-90.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-kbl4/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@perf@polling:
>     - {shard-rkl}:        [FAIL][143] ([i915#5639]) -> ([PASS][144], [PASS][145])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@perf@polling.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-4/igt@perf@polling.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-1/igt@perf@polling.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][146] ([i915#5639]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl3/igt@perf@polling-parameterized.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl4/igt@perf@polling-parameterized.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - {shard-rkl}:        [SKIP][148] ([i915#3708] / [i915#4098]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-rkl-1/igt@prime_vgem@basic-fence-flip.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][150] ([i915#3063]) -> [FAIL][151] ([i915#5784])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [DMESG-WARN][152] ([i915#5614]) -> [SKIP][153] ([i915#4525])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][154] ([i915#4525]) -> [DMESG-FAIL][155] ([i915#5614])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][156] ([i915#4525]) -> [DMESG-WARN][157] ([i915#5614])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@kms_plane_cursor@pipe-d-overlay-size-64:
>     - shard-skl:          [SKIP][158] ([fdo#109271]) -> [SKIP][159] ([fdo#109271] / [i915#1888])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-skl1/igt@kms_plane_cursor@pipe-d-overlay-size-64.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-skl5/igt@kms_plane_cursor@pipe-d-overlay-size-64.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][160] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][161] ([i915#5939])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-iclb8/igt@kms_psr2_su@page_flip-p010.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl4/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl1/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl3/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl2/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11682/shard-apl7/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl8/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl7/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl2/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/shard-apl2/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
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
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6029]: https://gitlab.freedesktop.org/drm/intel/issues/6029
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11682 -> Patchwork_103888v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11682: 8a34ee3d1f9619f8c235c485235a1a5d20f61585 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6484: 14ad49f5b6ed861eda93e9d6b6ed0f3c77d228d1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103888v4: 8a34ee3d1f9619f8c235c485235a1a5d20f61585 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103888v4/index.html
