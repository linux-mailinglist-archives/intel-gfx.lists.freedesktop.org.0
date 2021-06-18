Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A33AD54D
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Jun 2021 00:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0B76EAB7;
	Fri, 18 Jun 2021 22:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423916EAB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 22:38:54 +0000 (UTC)
IronPort-SDR: vvMIt6R/phrC4XV+2ganUX0rLikPMLlM8ablfxu+1zdUlw/5NDTvFVg4qnwOj3geuE4Eu5cf4S
 LH40oafk2iNQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="270479560"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="270479560"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 15:38:53 -0700
IronPort-SDR: reMfajjm7jQeYV05FMi/xSLVGkkLNZKc8HBsfKfY1YnS0EDMBRBZ7WhNIIRHkj3Pjkei4aHXB7
 HfGwMrGCm6Dw==
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="422365348"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 15:38:53 -0700
Date: Fri, 18 Jun 2021 15:38:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210618223851.GM951094@mdroper-desk1.amr.corp.intel.com>
References: <20210616001302.84233-1-matthew.brost@intel.com>
 <162382349532.8273.9851373012808774111@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162382349532.8273.9851373012808774111@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIFVw?=
 =?utf-8?q?date_firmware_to_v62=2E0=2E0_=28rev4=29?=
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

On Wed, Jun 16, 2021 at 06:04:55AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Update firmware to v62.0.0 (rev4)
> URL   : https://patchwork.freedesktop.org/series/91106/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10226_full -> Patchwork_20379_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20379_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20379_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20379_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb4/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-180.html

KMS pipe state mismatch wouldn't be related to the GuC changes here.

> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][3] ([i915#2842]) -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

This test has been failing pretty much constantly on all platforms
according to CI history.  And the CI failure here is from a run that
isn't using the GuC, so it wouldn't be caused by these changes.

Series applied to gt-next.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20379_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-clear:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#3160])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk2/igt@gem_create@create-clear.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk3/igt@gem_create@create-clear.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb7/igt@gem_ctx_persistence@engines-queued.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +72 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [PASS][11] -> [SKIP][12] ([fdo#109271])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          NOTRUN -> [FAIL][15] ([i915#2842] / [i915#3468])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][18] ([i915#2389]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_schedule@semaphore-codependency:
>     - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271]) +265 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb7/igt@gem_exec_schedule@semaphore-codependency.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][20] ([i915#3002])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][21] ([i915#2724])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl6/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#658])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl7/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#151])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][27] ([i915#1886] / [i915#2291])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118] / [i915#95])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb6/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][35] ([i915#1319])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109300] / [fdo#111066])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +66 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2346])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#533])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#3528])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:
>     - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][44] -> [INCOMPLETE][45] ([i915#180] / [i915#1982])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          [PASS][46] -> [INCOMPLETE][47] ([i915#155] / [i915#180] / [i915#636])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][49] ([i915#180]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2672])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109280])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#1188])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#1188])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-c:
>     - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#53])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl8/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][62] ([i915#265])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][63] -> [FAIL][64] ([fdo#108145] / [i915#265]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][69] ([i915#31])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-snb7/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([IGT#2])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109278])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2437])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2530])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +109 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@prime_vgem@sync@vcs0:
>     - shard-skl:          [PASS][76] -> [INCOMPLETE][77] ([i915#409])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl4/igt@prime_vgem@sync@vcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl5/igt@prime_vgem@sync@vcs0.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl6/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl3/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl7/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@semaphore:
>     - shard-glk:          [DMESG-WARN][81] ([i915#118] / [i915#95]) -> [PASS][82] +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk4/igt@gem_exec_balancer@semaphore.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk2/igt@gem_exec_balancer@semaphore.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][83] ([i915#2842]) -> [PASS][84] +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][85] ([i915#2842]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [FAIL][87] ([i915#2842]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-kbl:          [SKIP][89] ([fdo#109271]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-glk:          [DMESG-FAIL][91] ([i915#1886] / [i915#2291]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk2/igt@i915_selftest@live@gt_pm.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk3/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [FAIL][93] ([i915#2346]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][95] ([i915#79]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +3 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [SKIP][101] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb6/igt@kms_psr2_su@page_flip.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb5/igt@kms_psr@psr2_suspend.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
>     - shard-tglb:         [DMESG-WARN][105] ([i915#2411] / [i915#2868]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-tglb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [FAIL][107] ([i915#1542]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl2/igt@perf@blocking.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl4/igt@perf@blocking.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [FAIL][109] ([i915#1542]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-glk9/igt@perf@polling-parameterized.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-glk4/igt@perf@polling-parameterized.html
> 
>   * igt@prime_vgem@sync@rcs0:
>     - shard-iclb:         [INCOMPLETE][111] ([i915#409]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb3/igt@prime_vgem@sync@rcs0.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@prime_vgem@sync@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][113] ([i915#2842]) -> [FAIL][114] ([i915#2852])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][115] ([i915#588]) -> [SKIP][116] ([i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][117] ([i915#1804] / [i915#2684]) -> [WARN][118] ([i915#2684])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][119] ([fdo#109349]) -> [DMESG-WARN][120] ([i915#1226])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][121] ([i915#79]) -> [DMESG-WARN][122] ([i915#1982])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][125] ([i915#2920]) -> [SKIP][126] ([i915#658])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl7/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl4/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl4/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl7/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl7/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl4/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl2/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl4/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl4/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl4/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-kbl7/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][140], [FAIL][141], [FAIL][142]) ([i915#2426] / [i915#3002] / [i915#409]) -> ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#1814] / [i915#3002])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb3/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb7/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-iclb5/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb2/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-iclb1/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl3/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl6/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl2/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10226/shard-apl3/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/shard-apl8/igt@runner@aborted.html
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20379/index.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


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
