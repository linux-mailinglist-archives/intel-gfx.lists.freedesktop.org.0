Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD0C3EA2F9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 12:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFAC6E3D6;
	Thu, 12 Aug 2021 10:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE48A6E3D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 10:29:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="237354467"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="237354467"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 03:29:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="517413385"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 03:29:35 -0700
Date: Thu, 12 Aug 2021 15:42:14 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20210812101211.GA29078@intel.com>
References: <20210810113112.31739-1-anshuman.gupta@intel.com>
 <162863351880.29684.2589210771849815980@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <162863351880.29684.2589210771849815980@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVHdl?=
 =?utf-8?q?aked_Wa=5F14010685332_for_all_PCHs?=
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

On 2021-08-10 at 22:11:58 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Tweaked Wa_14010685332 for all PCHs
> URL   : https://patchwork.freedesktop.org/series/93548/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10464_full -> Patchwork_20792_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20792_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20792_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20792_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
     Hi Lakshmi,
     This CI IGT failure is on unrelated platfrom and not realted to this patch.

     Pushed to drm-intel-next, while pushing fixed a checkpatch "WARNING:COMMIT_LOG_LONG_LINE".  	
     Thanks,
     Anshuman Gupta		
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20792_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb6/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#3063])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][5] ([i915#3354])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk5/igt@gem_exec_fair@basic-deadline.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@invalid-bsd1-flag-on-vebox:
>     - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-skl1/igt@gem_exec_params@invalid-bsd1-flag-on-vebox.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl5/igt@gem_exec_params@invalid-bsd1-flag-on-vebox.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][13] ([i915#2658])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][14] ([i915#3002])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][15] ([i915#3318])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-apl8/igt@gem_workarounds@suspend-resume-fd.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][18] ([i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl9/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][19] ([i915#545])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@basic-rte:
>     - shard-apl:          NOTRUN -> [FAIL][20] ([i915#579])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@i915_pm_rpm@basic-rte.html
> 
>   * igt@i915_pm_rpm@gem-pread:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#579])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@i915_pm_rpm@gem-pread.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][22] ([i915#180])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3722]) +3 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#3689])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +15 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271]) +241 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk1/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl10/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +50 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2346] / [i915#533])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#2122])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][46] ([i915#180]) +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +251 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111825]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#123] / [i915#146])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#1188])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#533]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +3 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][56] ([fdo#108145] / [i915#265]) +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][57] ([i915#265])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-x:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3536])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-x.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658]) +6 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +3 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][64] ([IGT#2])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3841])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2437])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl9/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][68] ([i915#1722])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl9/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +295 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109291])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb7/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl2/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl7/igt@sysfs_clients@fair-7.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        [SKIP][74] ([i915#2582]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@fbdev@nullptr.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_ctx_persistence@engines-hang@rcs0:
>     - {shard-rkl}:        [FAIL][76] ([i915#2410]) -> [PASS][77] +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@rcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79] +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83] +3 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - {shard-rkl}:        [INCOMPLETE][84] ([i915#3189] / [i915#3810]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - {shard-rkl}:        [FAIL][86] ([i915#307]) -> [PASS][87] +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-iclb:         [FAIL][88] ([i915#2428]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@i915_pm_rpm@sysfs-read:
>     - {shard-rkl}:        [SKIP][90] ([i915#3844] / [i915#579]) -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-5/igt@i915_pm_rpm@sysfs-read.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][92] ([i915#3638]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][94] ([i915#118] / [i915#95]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][96] ([i915#3721]) -> [PASS][97] +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [FAIL][98] ([i915#3678]) -> [PASS][99] +6 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_color@pipe-c-degamma:
>     - {shard-rkl}:        [SKIP][100] ([i915#1149] / [i915#1849]) -> [PASS][101] +3 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_color@pipe-c-degamma.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_color@pipe-c-degamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
>     - {shard-rkl}:        [SKIP][102] ([fdo#112022]) -> [PASS][103] +11 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
>     - {shard-rkl}:        [SKIP][106] ([fdo#111825]) -> [PASS][107] +4 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
>     - {shard-rkl}:        [SKIP][108] ([fdo#111314]) -> [PASS][109] +8 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>     - shard-skl:          [FAIL][110] ([i915#2122]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>     - shard-glk:          [FAIL][112] ([i915#2546]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
>     - shard-snb:          [SKIP][114] ([fdo#109271]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - {shard-rkl}:        [SKIP][116] ([i915#1849]) -> [PASS][117] +34 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][118] ([i915#180]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][120] ([i915#3558]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][124] ([i915#1072]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_psr@sprite_mmap_cpu.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_sequence@queue-busy:
>     - {shard-rkl}:        [SKIP][126] ([i915#1845]) -> [PASS][127] +20 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_sequence@queue-busy.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_sequence@queue-busy.html
> 
>   * igt@kms_vblank@pipe-b-query-busy-hang:
>     - {shard-rkl}:        [SKIP][128] ([i915#1845] / [i915#3149]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-5/igt@kms_vblank@pipe-b-query-busy-hang.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@kms_vblank@pipe-b-query-busy-hang.html
> 
>   * igt@perf@polling-parameterized:
>     - {shard-rkl}:        [FAIL][130] ([i915#1542]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-1/igt@perf@polling-parameterized.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-6/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@rc6-runtime-pm:
>     - {shard-rkl}:        [SKIP][132] ([i915#293]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][134] ([i915#3743]) -> [FAIL][135] ([i915#3722])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-iclb:         [SKIP][136] ([i915#658]) -> [SKIP][137] ([i915#2920]) +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/shard-iclb4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
>    [137]: https://intel-gfx-ci.01.org
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/index.html
