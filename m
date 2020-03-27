Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CA5195A94
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 17:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DFC6E0B9;
	Fri, 27 Mar 2020 16:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26A636E0B9;
 Fri, 27 Mar 2020 16:04:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F653A47E1;
 Fri, 27 Mar 2020 16:04:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 27 Mar 2020 16:04:10 -0000
Message-ID: <158532505009.17236.10271301149536895669@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/21=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22?=
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

Series: series starting with [01/21] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75115/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8194_full -> Patchwork_17096_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17096_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17096_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17096_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_cs_tlb@bcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-glk2/igt@gem_cs_tlb@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-glk4/igt@gem_cs_tlb@bcs0.html

  * igt@gem_cs_tlb@rcs0:
    - shard-iclb:         [PASS][3] -> [FAIL][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb8/igt@gem_cs_tlb@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb7/igt@gem_cs_tlb@rcs0.html
    - shard-kbl:          [PASS][5] -> [FAIL][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl4/igt@gem_cs_tlb@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl2/igt@gem_cs_tlb@rcs0.html
    - shard-skl:          [PASS][7] -> [FAIL][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl10/igt@gem_cs_tlb@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl1/igt@gem_cs_tlb@rcs0.html

  * igt@gem_cs_tlb@vcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-tglb5/igt@gem_cs_tlb@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb7/igt@gem_cs_tlb@vcs0.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl7/igt@gem_exec_balancer@bonded-slice.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb3/igt@gem_exec_balancer@bonded-slice.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb2/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_balancer@full-late:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-tglb8/igt@gem_exec_balancer@full-late.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb6/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-snb:          [PASS][17] -> [FAIL][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-snb5/igt@gem_exec_reloc@basic-softpin.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-snb5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_media_fill:
    - shard-hsw:          [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw2/igt@gem_media_fill.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw2/igt@gem_media_fill.html

  * igt@gem_softpin@evict-active:
    - shard-apl:          [PASS][21] -> [FAIL][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-apl4/igt@gem_softpin@evict-active.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl3/igt@gem_softpin@evict-active.html

  * igt@gem_softpin@evict-active-interruptible:
    - shard-glk:          NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-glk6/igt@gem_softpin@evict-active-interruptible.html
    - shard-tglb:         NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb7/igt@gem_softpin@evict-active-interruptible.html

  * igt@gem_softpin@softpin:
    - shard-hsw:          [PASS][25] -> [FAIL][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw5/igt@gem_softpin@softpin.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw8/igt@gem_softpin@softpin.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl3/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl7/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_ccs@pipe-a-crc-primary-basic:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-iclb:         [PASS][32] -> [DMESG-WARN][33] +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@perf_pmu@busy-double-start-vecs0:
    - shard-tglb:         [PASS][34] -> [DMESG-WARN][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-tglb7/igt@perf_pmu@busy-double-start-vecs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb6/igt@perf_pmu@busy-double-start-vecs0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43]) ([fdo#111870] / [i915#1485]) -> ([FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49]) ([fdo#111870] / [i915#1485] / [i915#226] / [i915#478])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw5/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw6/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw6/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw5/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw8/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw5/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw7/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw2/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw7/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw4/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw4/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw2/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw7/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8194_full and Patchwork_17096_full:

### New IGT tests (2) ###

  * igt@gem_ctx_isolation@clean:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_shared@exec-shared-gtt:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17096_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [PASS][50] -> [INCOMPLETE][51] ([i915#1212])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl7/igt@gem_exec_balancer@hang.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([fdo#111736])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-tglb6/igt@gem_exec_balancer@nop.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#110854])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#112146]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#677]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-hsw:          [PASS][60] -> [INCOMPLETE][61] ([i915#61]) +21 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw4/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#716])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-hsw:          [PASS][64] -> [INCOMPLETE][65] ([i915#151] / [i915#61])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-hsw7/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          [PASS][66] -> [INCOMPLETE][67] ([fdo#112259] / [i915#1430] / [i915#656])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl3/igt@i915_selftest@live@execlists.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl7/igt@i915_selftest@live@execlists.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#129])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][72] -> [INCOMPLETE][73] ([i915#300])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#72])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([IGT#5])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#52] / [i915#54])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#79])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][82] -> [INCOMPLETE][83] ([i915#221])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#1188])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([fdo#108145])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109642] / [fdo#111068])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#112080]) +9 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][94] -> [SKIP][95] ([fdo#109276]) +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][96] ([fdo#109276] / [i915#677]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][98] ([fdo#112146]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][100] ([fdo#109276]) -> [PASS][101] +13 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [TIMEOUT][102] ([i915#1526]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][104] ([i915#151] / [i915#69]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl2/igt@i915_pm_rpm@system-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl4/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][106] ([i915#1531]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-tglb2/igt@i915_selftest@live@requests.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb7/igt@i915_selftest@live@requests.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][108] ([i915#221]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][112] ([i915#123] / [i915#69]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][114] ([i915#1188]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][116] ([fdo#108145] / [i915#265]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][124] ([fdo#112080]) -> [PASS][125] +5 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb6/igt@perf_pmu@busy-vcs1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-snb:          [SKIP][126] ([fdo#109271]) -> [INCOMPLETE][127] ([i915#82])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-snb4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-snb5/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][128] ([fdo#109642] / [fdo#111068]) -> [FAIL][129] ([i915#608])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][130] ([i915#92]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1485] / [i915#656] / [i915#92])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-kbl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          [FAIL][145] ([fdo#103927]) -> ([FAIL][146], [FAIL][147]) ([fdo#103927] / [i915#716])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/shard-apl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl7/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1212]: https://gitlab.freedesktop.org/drm/intel/issues/1212
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#226]: https://gitlab.freedesktop.org/drm/intel/issues/226
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8194 -> Patchwork_17096

  CI-20190529: 20190529
  CI_DRM_8194: 0045c2479d9746be67d0b485ef0d92e238e4f2bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17096: 1551e4c71efc6dee3621d5001be97ff8056ba1e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
