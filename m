Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FCE187BFC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 10:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E86B89DF9;
	Tue, 17 Mar 2020 09:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1E3289DF9;
 Tue, 17 Mar 2020 09:26:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BC1EA00C7;
 Tue, 17 Mar 2020 09:26:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 17 Mar 2020 09:26:49 -0000
Message-ID: <158443720960.5180.11731870830327424358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Consider DBuf bandwidth when calculating CDCLK (rev2)
URL   : https://patchwork.freedesktop.org/series/74739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8138_full -> Patchwork_16987_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16987_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#1401])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb5/igt@gem_exec_whisper@basic-fds-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-tglb8/igt@gem_exec_whisper@basic-fds-all.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#286])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl8/igt@i915_pm_sseu@full-enable.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#61])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-hsw2/igt@kms_color@pipe-c-ctm-max.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-hsw1/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-glk:          [PASS][39] -> [INCOMPLETE][40] ([i915#58] / [k.org#198133])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk8/igt@kms_vblank@pipe-a-query-busy-hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-glk9/igt@kms_vblank@pipe-a-query-busy-hang.html

  * igt@kms_vblank@pipe-b-query-idle-hang:
    - shard-skl:          [PASS][41] -> [SKIP][42] ([fdo#109271]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_vblank@pipe-b-query-idle-hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl7/igt@kms_vblank@pipe-b-query-idle-hang.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +14 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +15 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-tglb7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [TIMEOUT][49] ([i915#1340]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +15 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-render:
    - shard-skl:          [DMESG-WARN][55] ([i915#836]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl10/igt@gem_exec_schedule@pi-distinct-iova-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl2/igt@gem_exec_schedule@pi-distinct-iova-render.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-skl:          [FAIL][59] -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl3/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl1/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-snb:          [DMESG-WARN][63] ([i915#42]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-snb5/igt@gem_softpin@noreloc-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-snb6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][65] ([i915#454]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][67] ([i915#413]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb2/igt@i915_pm_rps@reset.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-tglb6/igt@i915_pm_rps@reset.html
    - shard-iclb:         [FAIL][69] ([i915#413]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@i915_pm_rps@reset.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [FAIL][71] ([i915#182]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl6/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][73] ([i915#72]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [FAIL][75] ([i915#57]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][77] ([IGT#5]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][79] ([fdo#109349]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][83] ([i915#34]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][85] ([i915#69]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-hang:
    - shard-skl:          [SKIP][95] ([fdo#109271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +16 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_heartbeat_interval@precise@rcs0}:
    - shard-skl:          [FAIL][99] ([i915#1459]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-skl3/igt@sysfs_heartbeat_interval@precise@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-skl1/igt@sysfs_heartbeat_interval@precise@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][101] ([i915#588]) -> [SKIP][102] ([i915#658])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][103] ([i915#82]) -> [SKIP][104] ([fdo#109271])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-snb5/igt@i915_pm_rpm@dpms-non-lpsp.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-snb6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          [FAIL][105] ([i915#357]) -> [INCOMPLETE][106] ([fdo#103927])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-apl1/igt@kms_content_protection@uevent.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][107] ([i915#1389]) -> [FAIL][108] ([i915#1401])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/shard-tglb1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/shard-tglb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#286]: https://gitlab.freedesktop.org/drm/intel/issues/286
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16987

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16987: 49c577d1644782a7a8e1dfdf41c57436c825880a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
