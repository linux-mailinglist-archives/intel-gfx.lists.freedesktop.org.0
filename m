Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4371213500
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 09:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE566E8DF;
	Fri,  3 Jul 2020 07:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D4C46E8DD;
 Fri,  3 Jul 2020 07:31:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1567BA0118;
 Fri,  3 Jul 2020 07:31:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jul 2020 07:31:53 -0000
Message-ID: <159376151305.25592.17657240714576971689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200703004306.11117-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200703004306.11117-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Split_the_context=27s_obj=3Avma_lut_into_its_own_m?=
 =?utf-8?q?utex_=28rev3=29?=
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

Series: drm/i915/gem: Split the context's obj:vma lut into its own mutex (rev3)
URL   : https://patchwork.freedesktop.org/series/79064/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8702_full -> Patchwork_18078_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18078_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb2/igt@drm_import_export@prime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb2/igt@drm_import_export@prime.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl1/igt@gen9_exec_parse@cmd-crossing-page.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl2/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] ([i915#926])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-iclb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_addfb_basic@basic-x-tiled:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl3/igt@kms_addfb_basic@basic-x-tiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl1/igt@kms_addfb_basic@basic-x-tiled.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#1149])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb3/igt@kms_color@pipe-a-gamma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb8/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#70] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1635] / [i915#95]) +18 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl4/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb2/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb1/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1928])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#1559])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk9/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [INCOMPLETE][31] ([i915#58] / [k.org#198133]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk2/igt@gem_exec_flush@basic-wb-rw-default.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk4/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][33] ([i915#1930]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-apl:          [DMESG-WARN][37] ([i915#1635] / [i915#95]) -> [PASS][38] +20 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl4/igt@gem_exec_whisper@basic-queues-priority.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_pm_rpm@i2c:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-skl1/igt@i915_pm_rpm@i2c.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-skl6/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [INCOMPLETE][41] ([i915#2123]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb8/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-snb:          [INCOMPLETE][47] ([i915#82]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][51] ([i915#31]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl4/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-wait-forked-busy:
    - shard-kbl:          [DMESG-WARN][53] ([i915#93] / [i915#95]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl7/igt@kms_vblank@pipe-a-wait-forked-busy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl1/igt@kms_vblank@pipe-a-wait-forked-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][55] ([i915#155] / [i915#794]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          [SKIP][57] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][58] ([fdo#109271] / [fdo#111827])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl4/igt@kms_chamelium@hdmi-hpd-storm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl2/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-apl:          [SKIP][59] ([fdo#109271] / [fdo#111827]) -> [SKIP][60] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl8/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][61] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][62] ([i915#1149] / [i915#402])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb3/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][63] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][64] ([i915#1319] / [i915#2119])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-kbl1/igt@kms_content_protection@srm.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-kbl4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][65] ([fdo#109271]) -> [SKIP][66] ([fdo#109271] / [i915#1635]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl4/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635]) -> [SKIP][68] ([fdo#109271]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][69], [FAIL][70], [FAIL][71]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][72] ([i915#1635] / [i915#2110])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl2/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-apl1/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-apl8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][73], [FAIL][74], [FAIL][75]) ([i915#1233] / [i915#2110] / [i915#529]) -> [FAIL][76] ([i915#1764] / [i915#2110])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb1/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb5/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/shard-tglb8/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/shard-tglb3/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2123]: https://gitlab.freedesktop.org/drm/intel/issues/2123
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8702 -> Patchwork_18078

  CI-20190529: 20190529
  CI_DRM_8702: 7a5c82b68e1d0fbf600d353793c2360b3e425629 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18078: 15fe500e5d577aaa6d696056c5067daf82a2e202 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
