Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CF839353C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 20:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDEC46F480;
	Thu, 27 May 2021 18:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549936F480
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 18:04:15 +0000 (UTC)
IronPort-SDR: vu2fZboQd5cl9UJJHWy1Caxnij+kgm6CmqykTCofvjnXz4YkhKpFoG8kDyBCfOywm5fXIv8KsK
 sdQI4npa6yrg==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="189917109"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="189917109"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 11:04:14 -0700
IronPort-SDR: lrraa6n298WTFwsOiaox36QrCuII+QQ8+iAN3NAIsqVZVIJMBgF87NQn5Q73Xhm8JpO2uO1ky0
 86HJLNyDhLNA==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="443674695"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 11:04:12 -0700
Date: Thu, 27 May 2021 21:04:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210527180409.GB2755566@ideak-desk.fi.intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
 <162210973101.12240.1043932488481681349@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162210973101.12240.1043932488481681349@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/ddi=3A_Flush_encoder_power?=
 =?utf-8?q?_domain_ref_puts_during_driver_unload?=
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

On Thu, May 27, 2021 at 10:02:11AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/3] drm/i915/ddi: Flush encoder power domain ref puts during driver unload
> URL   : https://patchwork.freedesktop.org/series/90613/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10138_full -> Patchwork_20207_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20207_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20207_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20207_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl5/igt@gem_mmap_gtt@fault-concurrent-y.html

The test scenario/platform is not related to the changes in patches 1
and 2. I can't see how the change in patch 3 would introduce a hang; at
most it would leave a display power well enabled triggering a power
state check failure.

Possibly related issues:
https://gitlab.freedesktop.org/drm/intel/-/issues/3468
https://gitlab.freedesktop.org/drm/intel/-/issues/3485

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20207_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-3x:
>     - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#1839])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@feature_discovery@display-3x.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#3063])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk9/igt@gem_exec_fair@basic-deadline.html
>     - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2846])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][11] ([i915#2389]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][12] ([i915#180])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([i915#3468])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>     - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198] / [i915#3468])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#3468])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#307])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#3468] / [i915#750])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][23] ([i915#198] / [i915#3468])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-x.html
>     - shard-apl:          NOTRUN -> [INCOMPLETE][24] ([i915#3468]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl8/igt@gem_mmap_gtt@fault-concurrent-x.html
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][25] ([i915#3468])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][26] ([i915#2658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3323])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#3297])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb5/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][30] ([i915#3318])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109289])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         NOTRUN -> [FAIL][32] ([i915#454])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - shard-iclb:         [PASS][33] -> [DMESG-FAIL][34] ([i915#1226])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#110723])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111304])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
> 
>   * igt@kms_chamelium@dp-frame-dump:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@kms_chamelium@dp-frame-dump.html
>     - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_chamelium@dp-frame-dump.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_chamelium@hdmi-aspect-ratio.html
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl3/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +21 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][43] ([i915#1982])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +17 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@kms_color_chamelium@pipe-d-gamma.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3116])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3319])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109279] / [i915#3359])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271]) +318 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2346] / [i915#533])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-tglb:         NOTRUN -> [CRASH][55] ([i915#3494])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][56] -> [INCOMPLETE][57] ([i915#155] / [i915#180] / [i915#636])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111825]) +4 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +6 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +62 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
>     - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271]) +52 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +4 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109289])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][70] ([i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2733])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +5 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb2/igt@kms_psr@psr2_dpms.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb8/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][81] ([i915#31])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-snb6/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +205 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl6/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl5/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2437])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@nouveau_crc@pipe-b-source-outp-complete.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][87] -> [FAIL][88] ([i915#1542])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb7/igt@perf@polling-parameterized.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb6/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_pcopy@test2:
>     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +85 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl2/igt@prime_nv_pcopy@test2.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109291])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb3/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109291])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl8/igt@sysfs_clients@create.html
>     - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl3/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl7/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +6 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [SKIP][98] ([fdo#109271]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-iclb:         [INCOMPLETE][106] ([i915#2910] / [i915#3468]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-tglb:         [INCOMPLETE][108] ([i915#3468]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-glk:          [FAIL][110] ([i915#307]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_spin_batch@engines@vecs0:
>     - shard-apl:          [FAIL][112] ([i915#2898]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_spin_batch@engines@vecs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl2/igt@gem_spin_batch@engines@vecs0.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglb:         [FAIL][114] ([i915#3376]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb1/igt@gem_userptr_blits@huge-split.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-tglb5/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][116] ([i915#1982]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@kms_color@pipe-c-ctm-0-75.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-skl:          [FAIL][118] ([i915#2346]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][120] ([i915#79]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-iclb:         [FAIL][122] ([i915#79]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][126] ([i915#1188]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@kms_hdr@bpc-switch.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
>     - shard-glk:          [FAIL][128] ([i915#53]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-idle-hang:
>     - shard-glk:          [DMESG-WARN][132] ([i915#118] / [i915#95]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk9/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-glk:          [INCOMPLETE][134] ([i915#2055] / [i915#3468]) -> [FAIL][135] ([i915#307])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-glk7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-skl:          [INCOMPLETE][136] ([i915#198] / [i915#2910] / [i915#3468]) -> [INCOMPLETE][137] ([i915#198] / [i915#2910])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-skl:          [INCOMPLETE][138] ([i915#198] / [i915#3468]) -> [INCOMPLETE][139] ([i915#198])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20207/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
