Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91165216276
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1080C6E33D;
	Mon,  6 Jul 2020 23:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59526E33D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:44:58 +0000 (UTC)
IronPort-SDR: kR9mg+fbAOKxBHzpX8aVU9V6DeZpbb6TRHzyBPpee/+rSqsffrFzFApXJDRb3vk5/AEEignF7q
 UHhgm99O1yMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="145017552"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="145017552"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:44:58 -0700
IronPort-SDR: 4Jipvyt5c4CxuZJwbUNwSil9Pjas8sqIg+seQmGkBdGjt4dD33AkpYGc0PT955Aj7qQv4Ko9P9
 ST3xrgadRa8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="283202524"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2020 16:44:57 -0700
Date: Mon, 6 Jul 2020 16:46:44 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200706234643.GA18370@intel.com>
References: <20200701221052.8946-1-manasi.d.navare@intel.com>
 <159365697391.5654.5530665592322234376@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159365697391.5654.5530665592322234376@emeril.freedesktop.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D__drm/i915/dp=3A_Helper_for_che?=
 =?utf-8?q?cking_DDI=5FBUF=5FCTL_Idle_status?=
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

The failures on shard-snb seem not related to the patch.

Manasi

On Thu, Jul 02, 2020 at 02:29:33AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v5,1/2] drm/i915/dp: Helper for checking DDI_BUF_CTL Idle status
> URL   : https://patchwork.freedesktop.org/series/79018/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8688_full -> Patchwork_18062_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18062_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18062_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18062_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-snb:          [PASS][1] -> [FAIL][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb2/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18062_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-snb:          [PASS][3] -> [TIMEOUT][4] ([i915#1958] / [i915#2119])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@kms_addfb_basic@addfb25-modifier-no-flag:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1635] / [i915#95]) +19 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl3/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl7/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#62] / [i915#92]) +22 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +4 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
>     - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#402])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
>     - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +7 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
>     - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#1185] / [i915#250])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_setmode@basic.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl3/igt@kms_setmode@basic.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb5/igt@perf@polling-parameterized.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb8/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-snb:          [PASS][33] -> [INCOMPLETE][34] ([i915#2119] / [i915#82])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@perf_pmu@busy-double-start@vcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb2/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-apl:          [DMESG-WARN][35] ([i915#1635] / [i915#95]) -> [PASS][36] +17 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl6/igt@gem_ctx_persistence@hostile.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl2/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_exec_balancer@bonded-early:
>     - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38] +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@gem_exec_balancer@bonded-early.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@gem_exec_balancer@bonded-early.html
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [DMESG-WARN][39] ([i915#118] / [i915#95]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@gem_exec_create@forked.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-glk2/igt@gem_exec_create@forked.html
> 
>   * igt@gem_exec_reloc@basic-concurrent0:
>     - shard-glk:          [FAIL][41] ([i915#1930]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][43] ([i915#454]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [WARN][45] ([i915#1519]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-hsw7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-apl:          [INCOMPLETE][47] ([i915#1635] / [i915#2110]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl7/igt@i915_selftest@mock@requests.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl1/igt@i915_selftest@mock@requests.html
>     - shard-skl:          [INCOMPLETE][49] ([i915#198] / [i915#2110]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl5/igt@i915_selftest@mock@requests.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl9/igt@i915_selftest@mock@requests.html
>     - shard-iclb:         [INCOMPLETE][51] ([i915#2110]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb7/igt@i915_selftest@mock@requests.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb2/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +9 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +13 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-tglb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-rte:
>     - shard-kbl:          [DMESG-WARN][61] ([i915#62] / [i915#92]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
> 
>   * igt@kms_plane@plane-position-covered-pipe-a-planes:
>     - shard-snb:          [SKIP][63] ([fdo#109271]) -> [PASS][64] +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb1/igt@kms_plane@plane-position-covered-pipe-a-planes.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb4/igt@kms_plane@plane-position-covered-pipe-a-planes.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb4/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@perf_pmu@semaphore-busy@rcs0:
>     - shard-kbl:          [FAIL][69] ([i915#1820]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-apl:          [FAIL][71] ([i915#1732]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-snb:          [FAIL][73] ([i915#1930]) -> [TIMEOUT][74] ([i915#1958] / [i915#2119])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-kbl:          [TIMEOUT][75] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][76] ([i915#1319] / [i915#2119])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl7/igt@kms_content_protection@lic.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-snb:          [SKIP][77] ([fdo#109271]) -> [TIMEOUT][78] ([i915#1958] / [i915#2119]) +3 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_flip@dpms-vs-vblank-race@a-dp1:
>     - shard-kbl:          [FAIL][79] ([i915#407]) -> [DMESG-WARN][80] ([i915#62] / [i915#92])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@kms_flip@dpms-vs-vblank-race@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-apl:          [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [i915#1635]) +5 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence:
>     - shard-apl:          [SKIP][83] ([fdo#109271] / [i915#1635]) -> [SKIP][84] ([fdo#109271]) +4 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [DMESG-WARN][86] ([i915#62] / [i915#92])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-kbl:          [FAIL][87] ([i915#265]) -> [DMESG-FAIL][88] ([i915#62])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][90] ([i915#1982])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][92] ([fdo#108145] / [i915#1982])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8688/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
>   [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
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
>   * Linux: CI_DRM_8688 -> Patchwork_18062
> 
>   CI-20190529: 20190529
>   CI_DRM_8688: e732088e2eb2bbb1ca72c1f68d0405f17477d446 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5719: 54731f017df8660f29cc8f5db0b570239729e808 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18062: 29c0369d693af88d6e280e059fe04a082405bd3d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18062/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
