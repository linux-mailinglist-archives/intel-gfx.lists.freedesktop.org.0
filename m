Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B80E1F5343
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 13:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893926E530;
	Wed, 10 Jun 2020 11:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3E76E529
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 11:33:12 +0000 (UTC)
IronPort-SDR: f4WSbhTw073+31spIqka8XBo7pJzzn5IdImzlVQOAOq0+JzFlhDK5b5beXujz8oNwRhJ87+lON
 8UQS7giP9iqg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 04:33:12 -0700
IronPort-SDR: cT67OwmljP5+r9Ntxenn2a7BAITay9mjr9vlvOP775NeFQIGtWp0zzFpMEqSaBG4e6BbdnfHFj
 1grBuvn8S4ow==
X-IronPort-AV: E=Sophos;i="5.73,495,1583222400"; d="scan'208";a="259258390"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 04:33:10 -0700
Date: Wed, 10 Jun 2020 14:33:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Jose Souza <jose.souza@intel.com>
Message-ID: <20200610113301.GD10200@ideak-desk.fi.intel.com>
References: <20200608204537.28468-1-khaled.almahallawy@intel.com>
 <159165462706.14460.10339190541202498686@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159165462706.14460.10339190541202498686@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/tc=3A_fix_the_reset_of_ln0?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 08, 2020 at 10:17:07PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: fix the reset of ln0
> URL   : https://patchwork.freedesktop.org/series/78132/
> State : success

Thanks for the fix (my review botch-up) and the review, pushed to -dinq
Cc-ing stable and adding 

Fixes: 3b51be4e4061b ("drm/i915/tc: Update DP_MODE programming")

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8601_full -> Patchwork_17912_full
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
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17912_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@gem_exec_create@forked.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-glk6/igt@gem_exec_create@forked.html
> 
>   * igt@gem_sync@basic-store-each:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +11 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@gem_sync@basic-store-each.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl7/igt@gem_sync@basic-store-each.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb5/igt@i915_module_load@reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-tglb1/igt@i915_module_load@reload.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl3/igt@i915_suspend@debugfs-reader.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl8/igt@kms_big_fb@linear-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-iclb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-c-ctm-blue-to-red:
>     - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl7/igt@kms_color@pipe-c-ctm-blue-to-red.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +4 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk4/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-glk6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@gem_exec_reloc@basic-concurrent0}:
>     - shard-glk:          [FAIL][27] ([i915#1930]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent:
>     - shard-skl:          [CRASH][31] -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@gem_mmap_gtt@fault-concurrent.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl4/igt@gem_mmap_gtt@fault-concurrent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
>     - shard-skl:          [FAIL][33] ([i915#54]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * {igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2}:
>     - shard-glk:          [FAIL][37] ([i915#1928]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1}:
>     - shard-kbl:          [FAIL][39] ([i915#79]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
>     - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend@a-edp1}:
>     - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl4/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip_tiling@flip-y-tiled:
>     - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +8 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl9/igt@kms_flip_tiling@flip-y-tiled.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl8/igt@kms_flip_tiling@flip-y-tiled.html
> 
>   * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>     - shard-iclb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb8/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
> 
>   * igt@kms_lease@page_flip_implicit_plane:
>     - shard-snb:          [TIMEOUT][49] ([i915#1958]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb5/igt@kms_lease@page_flip_implicit_plane.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-snb2/igt@kms_lease@page_flip_implicit_plane.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
>     - shard-apl:          [DMESG-WARN][51] ([i915#95]) -> [PASS][52] +16 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-hsw:          [FAIL][57] ([i915#31]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw6/igt@kms_setmode@basic.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-hsw8/igt@kms_setmode@basic.html
> 
>   * {igt@perf@blocking-parameterized}:
>     - shard-iclb:         [FAIL][59] ([i915#1542]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb3/igt@perf@blocking-parameterized.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb8/igt@perf@blocking-parameterized.html
>     - shard-hsw:          [FAIL][61] ([i915#1542]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-hsw8/igt@perf@blocking-parameterized.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-hsw1/igt@perf@blocking-parameterized.html
> 
>   * igt@syncobj_wait@multi-wait-all-for-submit-signaled:
>     - shard-tglb:         [DMESG-WARN][63] ([i915#402]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-tglb3/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-tglb8/igt@syncobj_wait@multi-wait-all-for-submit-signaled.html
> 
>   * igt@syncobj_wait@multi-wait-for-submit-unsubmitted:
>     - shard-kbl:          [DMESG-WARN][65] ([i915#93] / [i915#95]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl2/igt@syncobj_wait@multi-wait-for-submit-unsubmitted.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][67] ([i915#588]) -> [SKIP][68] ([i915#658])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          [FAIL][69] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl3/igt@kms_content_protection@atomic-dpms.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-kbl:          [TIMEOUT][71] ([i915#1319]) -> [TIMEOUT][72] ([i915#1319] / [i915#1958])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl1/igt@kms_content_protection@legacy.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl4/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          [TIMEOUT][73] ([i915#1319] / [i915#1635]) -> [FAIL][74] ([fdo#110321]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-apl4/igt@kms_content_protection@lic.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-apl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][75] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][76] ([i915#93] / [i915#95])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_psr@suspend:
>     - shard-snb:          [TIMEOUT][77] ([i915#1958]) -> [SKIP][78] ([fdo#109271]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8601/shard-snb5/igt@kms_psr@suspend.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/shard-snb2/igt@kms_psr@suspend.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
>   [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
>   [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8601 -> Patchwork_17912
> 
>   CI-20190529: 20190529
>   CI_DRM_8601: c801ab3a923b2436d765bd7a97888715f68451cb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17912: 737e451d926089f1b4b060add1c9ee07650074df @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17912/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
