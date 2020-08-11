Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CBC241E06
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 18:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04A96E532;
	Tue, 11 Aug 2020 16:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7823D6E532
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 16:18:49 +0000 (UTC)
IronPort-SDR: wB8qT4tsC0KwDH7+8JEiRaftNzKReS/WhdmVzA2qzykJJaV59aBpH4unV9UDTCgiuBfBYYDGTQ
 1ECgZdlsnAKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="151432240"
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="151432240"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:18:23 -0700
IronPort-SDR: R9eiLm/5A8s6e7x8IYYRgY+N50EfGDczdxxjO5VIxaqXKHH/JZa+2jz1+mOo4wxWRg16AP5UGg
 jEgmkoskz6eg==
X-IronPort-AV: E=Sophos;i="5.76,300,1592895600"; d="scan'208";a="332543206"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:18:22 -0700
Date: Tue, 11 Aug 2020 09:18:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200811161821.GM2720297@mdroper-desk1.amr.corp.intel.com>
References: <20200808184511.2594286-1-matthew.d.roper@intel.com>
 <159712186802.3767.18163259631966066032@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159712186802.3767.18163259631966066032@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/kbl=3A_Fix_revision_ID_checks_=28rev2=29?=
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

On Tue, Aug 11, 2020 at 04:57:48AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/kbl: Fix revision ID checks (rev2)
> URL   : https://patchwork.freedesktop.org/series/80419/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8867_full -> Patchwork_18339_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18339_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18339_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18339_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_mmap_gtt@fault-concurrent:
>     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl6/igt@gem_mmap_gtt@fault-concurrent.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent.html

https://gitlab.freedesktop.org/drm/intel/-/issues/1972

> 
>   * igt@i915_selftest@live@blt:
>     - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-tglb2/igt@i915_selftest@live@blt.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-tglb5/igt@i915_selftest@live@blt.html

https://gitlab.freedesktop.org/drm/intel/-/issues/2045


Both errors are pre-existing known issues.  Applied to dinq; thanks
Swathi for the review.



Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18339_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@bonded-early:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2079])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl1/igt@gem_exec_balancer@bonded-early.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl2/igt@gem_exec_balancer@bonded-early.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl1/igt@gen9_exec_parse@allowed-all.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@gt_contexts:
>     - shard-snb:          [PASS][9] -> [DMESG-FAIL][10] ([i915#541] / [i915#666])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-snb5/igt@i915_selftest@live@gt_contexts.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-snb2/igt@i915_selftest@live@gt_contexts.html
> 
>   * igt@i915_selftest@mock@contexts:
>     - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1635])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-apl3/igt@i915_selftest@mock@contexts.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-apl3/igt@i915_selftest@mock@contexts.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_color@pipe-c-ctm-0-25:
>     - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +9 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
>     - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-glk9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb1/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +6 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
>     - shard-apl:          [FAIL][29] ([i915#1635]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-apl8/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-apl2/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-glk1/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][33] ([i915#1436] / [i915#716]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-hsw:          [WARN][35] ([i915#1519]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@mock@contexts:
>     - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl6/igt@i915_selftest@mock@contexts.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl9/igt@i915_selftest@mock@contexts.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
>     - shard-kbl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl1/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl1/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>     - shard-glk:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [FAIL][43] ([IGT#5]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
>     - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#1982]) -> [PASS][46] +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-apl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +5 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +7 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_tiling@flip-to-y-tiled:
>     - shard-skl:          [FAIL][51] ([i915#167]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl9/igt@kms_flip_tiling@flip-to-y-tiled.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl6/igt@kms_flip_tiling@flip-to-y-tiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
>     - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [DMESG-FAIL][57] ([fdo#108145] / [i915#1982]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_setmode@basic:
>     - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-kbl6/igt@kms_setmode@basic.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-kbl3/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-iclb:         [INCOMPLETE][67] ([i915#1185]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-iclb4/igt@perf_pmu@module-unload.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-iclb1/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-glk:          [TIMEOUT][71] ([i915#1958]) -> [INCOMPLETE][72] ([i915#1958])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-glk9/igt@gem_exec_reloc@basic-concurrent16.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-glk1/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_exec_reloc@basic-spin-others@vcs0:
>     - shard-snb:          [WARN][73] ([i915#2036]) -> [WARN][74] ([i915#2021])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [DMESG-WARN][75] ([i915#1982]) -> [FAIL][76] ([fdo#108145] / [i915#265])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][77], [FAIL][78]) ([i915#1436] / [i915#2110]) -> ([FAIL][79], [FAIL][80]) ([i915#1436] / [i915#2029] / [i915#2263])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl1/igt@runner@aborted.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8867/shard-skl6/igt@runner@aborted.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl8/igt@runner@aborted.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/shard-skl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
>   [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
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
>   * Linux: CI_DRM_8867 -> Patchwork_18339
> 
>   CI-20190529: 20190529
>   CI_DRM_8867: ec7a9f1cf374dacefaa2d7e513bf44616d1d399f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5766: fc9f95086fc23f7f2226f7603241fbad3a214ee1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18339: 2734daf22ac5b3b82e86ff1e94ebc76d0619c34a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18339/index.html

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
