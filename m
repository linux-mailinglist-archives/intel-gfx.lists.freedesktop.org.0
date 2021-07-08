Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C49293C157D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 16:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB9A6E8D4;
	Thu,  8 Jul 2021 14:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB976E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 14:53:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="270631420"
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="270631420"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 07:53:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="410954005"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 07:53:39 -0700
Date: Thu, 8 Jul 2021 07:53:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210708145338.GV951094@mdroper-desk1.amr.corp.intel.com>
References: <20210707234206.2002849-1-matthew.d.roper@intel.com>
 <162572682612.32072.7168990163029392235@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162572682612.32072.7168990163029392235@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Handle_cdclk_crawling_flag_in_standard_manner?=
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

On Thu, Jul 08, 2021 at 06:47:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Handle cdclk crawling flag in standard manner
> URL   : https://patchwork.freedesktop.org/series/92294/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10310_full -> Patchwork_20549_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20549_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20549_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20549_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb6/igt@core_hotunplug@unbind-rebind.html

https://gitlab.freedesktop.org/drm/intel/-/issues/2283

> 
>   * igt@sysfs_timeslice_duration@timeout@bcs0:
>     - shard-skl:          [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl6/igt@sysfs_timeslice_duration@timeout@bcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl6/igt@sysfs_timeslice_duration@timeout@bcs0.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3259

Looks like the cibuglog filter for this one needs to be updated to match
failures on the bcs engine too.

> 
>   
> #### Warnings ####
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][4] ([i915#3722]) -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

Probably https://gitlab.freedesktop.org/drm/intel/-/issues/3743


None of the failures were caused by this patch, so applied di-next.
Thanks Jani for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:
>     - {shard-rkl}:        [FAIL][6] ([i915#3678]) -> [SKIP][7] +3 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20549_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][8] ([i915#2283])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl2/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#1839])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@feature_discovery@display-3x.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#658])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb2/igt@feature_discovery@psr2.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb3/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#2481] / [i915#3070])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb5/igt@gem_eio@unwedge-stress.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][16] ([i915#2846])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl8/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][17] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk6/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [PASS][20] -> [SKIP][21] ([fdo#109271])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271]) +378 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109283])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][26] ([i915#3633]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-iclb:         [PASS][27] -> [INCOMPLETE][28] ([i915#1895])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb6/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_mmap_gtt@big-copy-xy:
>     - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#307])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk8/igt@gem_mmap_gtt@big-copy-xy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][31] ([i915#2658])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#3297])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109289]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1436] / [i915#716])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl8/igt@gen9_exec_parse@allowed-single.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         NOTRUN -> [FAIL][36] ([i915#3343])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][37] ([i915#1804] / [i915#2684])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110725] / [fdo#111614])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][41] -> [DMESG-WARN][42] ([i915#118] / [i915#95]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2705])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +9 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +42 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#3742])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb7/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +25 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk6/igt@kms_chamelium@hdmi-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-b-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl3/igt@kms_color_chamelium@pipe-b-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb7/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#3116])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-apl:          NOTRUN -> [FAIL][56] ([i915#2105])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl8/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [fdo#109279])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +10 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent:
>     - shard-tglb:         [PASS][59] -> [DMESG-WARN][60] ([i915#2868]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-alpha-transparent.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#72])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl1/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#2587])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#111825]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109280]) +6 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +52 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#49])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][75] ([i915#265]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265]) +3 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#3536])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-x.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#112054])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping:
>     - shard-skl:          [PASS][79] -> [DMESG-WARN][80] ([i915#1982])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +6 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#658])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][84] -> [SKIP][85] ([fdo#109441]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109441]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +292 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2437])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2437])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2530])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb6/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-kbl:          [PASS][91] -> [DMESG-WARN][92] ([i915#180]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-kbl6/igt@perf_pmu@rc6-suspend.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl2/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-apl6/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl3/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][95] ([i915#658]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@feature_discovery@psr2.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [TIMEOUT][97] ([i915#3063]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@gem_eio@unwedge-stress.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100] +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [FAIL][101] ([i915#2842]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][103] ([i915#2842]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync@rcs0:
>     - shard-kbl:          [SKIP][105] ([fdo#109271]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - {shard-rkl}:        [FAIL][107] ([i915#2842]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][109] ([i915#2880]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@fade:
>     - {shard-rkl}:        [SKIP][111] ([i915#3012]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@i915_pm_backlight@fade.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][113] ([fdo#109308]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@i915_pm_rpm@i2c.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-rkl}:        [DMESG-FAIL][115] ([i915#1021]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][117] ([i915#118] / [i915#95]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-iclb:         [DMESG-WARN][119] ([i915#1226]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][121] ([i915#3638]) -> [PASS][122] +5 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][123] ([i915#3721]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][125] ([i915#3678]) -> [PASS][126] +4 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-c-ctm-negative:
>     - {shard-rkl}:        [SKIP][127] ([i915#1149] / [i915#1849]) -> [PASS][128] +4 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@kms_color@pipe-c-ctm-negative.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_color@pipe-c-ctm-negative.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        [SKIP][129] ([fdo#112022]) -> [PASS][130] +12 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
>     - {shard-rkl}:        [SKIP][131] ([fdo#111825]) -> [PASS][132] +6 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
>     - shard-skl:          [FAIL][133] ([i915#3451]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
>     - {shard-rkl}:        [SKIP][135] ([fdo#111314]) -> [PASS][136] +9 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10310/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-ytiled:
>     - shard-skl:          [DMESG-WARN][137] ([i915#1982]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20549/index.html

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
