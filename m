Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6911EE35D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 13:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7CCE6E32F;
	Thu,  4 Jun 2020 11:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1BE26E32F;
 Thu,  4 Jun 2020 11:25:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF71CA0091;
 Thu,  4 Jun 2020 11:25:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 04 Jun 2020 11:25:05 -0000
Message-ID: <159126990575.14555.9682902816970582597@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22=2E?=
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

Series: series starting with [01/24] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77960/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17854_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17854_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17854_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17854_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk7/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl8/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl2/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl10/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl10/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb1/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl4/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb4/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb4/igt@gem_close@many-handles-one-vma.html

  * igt@i915_module_load@reload-no-display:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb8/igt@i915_module_load@reload-no-display.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb6/igt@i915_module_load@reload-no-display.html
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@i915_module_load@reload-no-display.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@i915_module_load@reload-no-display.html
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb6/igt@i915_module_load@reload-no-display.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb3/igt@i915_module_load@reload-no-display.html
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl6/igt@i915_module_load@reload-no-display.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl10/igt@i915_module_load@reload-no-display.html
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@i915_module_load@reload-no-display.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl2/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl4/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@mock:
    - shard-glk:          NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk8/igt@i915_selftest@mock.html
    - shard-iclb:         NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb7/igt@i915_selftest@mock.html
    - shard-kbl:          NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl7/igt@i915_selftest@mock.html
    - shard-tglb:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb2/igt@i915_selftest@mock.html
    - shard-skl:          NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl4/igt@i915_selftest@mock.html
    - shard-apl:          NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl1/igt@i915_selftest@mock.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][31], [FAIL][32], [FAIL][33]) ([i915#1580])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb4/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb6/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb7/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][34], [FAIL][35], [FAIL][36]) ([i915#1423] / [i915#529])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl1/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl2/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][37], [FAIL][38], [FAIL][39]) ([i915#1233] / [i915#1764] / [i915#529])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb2/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb1/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb3/igt@runner@aborted.html
    - shard-snb:          NOTRUN -> ([FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44]) ([i915#1821])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb4/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb5/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb4/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-snb:          [PASS][45] -> [DMESG-WARN][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb6/igt@gem_exec_reloc@basic-parallel.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb4/igt@gem_exec_reloc@basic-parallel.html

  * {igt@i915_selftest@live@gem_execbuf}:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@i915_selftest@live@gem_execbuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl4/igt@i915_selftest@live@gem_execbuf.html
    - shard-skl:          [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl10/igt@i915_selftest@live@gem_execbuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl10/igt@i915_selftest@live@gem_execbuf.html
    - shard-apl:          [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl8/igt@i915_selftest@live@gem_execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl2/igt@i915_selftest@live@gem_execbuf.html
    - shard-iclb:         [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb4/igt@i915_selftest@live@gem_execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb4/igt@i915_selftest@live@gem_execbuf.html
    - shard-tglb:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@i915_selftest@live@gem_execbuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb1/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17854_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [PASS][57] -> [INCOMPLETE][58] ([i915#82])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb1/igt@i915_module_load@reload-no-display.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb5/igt@i915_module_load@reload-no-display.html
    - shard-glk:          [PASS][59] -> [INCOMPLETE][60] ([i915#58] / [k.org#198133])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@i915_module_load@reload-no-display.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk1/igt@i915_module_load@reload-no-display.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl4/igt@i915_suspend@forcewake.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_available_modes_crc@available_mode_test_crc:
    - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#93] / [i915#95])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@kms_available_modes_crc@available_mode_test_crc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl2/igt@kms_available_modes_crc@available_mode_test_crc.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][65] -> [DMESG-FAIL][66] ([i915#118] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982]) +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#54])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#300])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-glk:          [PASS][73] -> [DMESG-WARN][74] ([i915#118] / [i915#95]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][75] -> [DMESG-FAIL][76] ([i915#1925] / [i915#1926])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-apl:          [PASS][77] -> [DMESG-WARN][78] ([i915#95]) +11 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#1188])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][81] -> [FAIL][82] ([i915#53])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-snb:          [PASS][89] -> [SKIP][90] ([fdo#109271])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb1/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb2/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([fdo#109441]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][93] -> [FAIL][94] ([i915#31])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [INCOMPLETE][95] ([i915#1780]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][97] ([i915#1930]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][99] ([i915#1930]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][101] ([i915#1930]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [FAIL][103] ([i915#1930]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb5/igt@gem_exec_reloc@basic-concurrent16.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [FAIL][105] ([i915#1930]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@gem_exec_reloc@basic-concurrent16.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [FAIL][107] ([i915#1930]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@gem_exec_reloc@basic-concurrent16.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [FAIL][109] ([i915#1930]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@gem_exec_reloc@basic-concurrent16.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb3/igt@gem_exec_reloc@basic-concurrent16.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][111] ([i915#82]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [DMESG-WARN][113] ([i915#118] / [i915#95]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [TIMEOUT][117] ([i915#1635]) -> [PASS][118] +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][119] ([i915#1982]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122] +9 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][123] ([i915#46]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][125] ([i915#93] / [i915#95]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][127] ([i915#69]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid:
    - shard-apl:          [DMESG-WARN][129] ([i915#95]) -> [PASS][130] +10 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][131] ([fdo#108145] / [i915#265]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][133] ([fdo#109441]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][135] ([i915#180]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][137] ([i915#1542]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-tglb6/igt@perf@blocking-parameterized.html

  * {igt@perf_pmu@module-unload}:
    - shard-iclb:         [DMESG-WARN][139] ([i915#1982]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb6/igt@perf_pmu@module-unload.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-iclb1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-glk:          [TIMEOUT][141] ([i915#1958]) -> [PASS][142] +4 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@perf_pmu@rc6-runtime-pm.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk2/igt@perf_pmu@rc6-runtime-pm.html

  
#### Warnings ####

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - shard-apl:          [TIMEOUT][143] ([i915#1635]) -> [DMESG-WARN][144] ([i915#95])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@gem_ctx_bad_destroy@invalid-pad.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@gem_ctx_bad_destroy@invalid-pad.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][145] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][146] ([fdo#110321] / [i915#95])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][147] ([i915#1319]) -> [TIMEOUT][148] ([i915#1319] / [i915#1635])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][149] ([i915#1319] / [i915#1635]) -> [FAIL][150] ([fdo#110321])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@lic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][151] ([fdo#110321]) -> [TIMEOUT][152] ([i915#1319] / [i915#1635])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-FAIL][153] ([i915#49] / [i915#95]) -> [FAIL][154] ([i915#49])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-apl:          [TIMEOUT][155] ([i915#1635] / [i915#1640]) -> [SKIP][156] ([fdo#109271])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_vblank@pipe-d-query-idle-hang.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-apl7/igt@kms_vblank@pipe-d-query-idle-hang.html
    - shard-glk:          [TIMEOUT][157] ([i915#1640] / [i915#1958]) -> [SKIP][158] ([fdo#109271])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@kms_vblank@pipe-d-query-idle-hang.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk2/igt@kms_vblank@pipe-d-query-idle-hang.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][159] ([i915#1436]) -> ([FAIL][160], [FAIL][161], [FAIL][162]) ([i915#1423] / [i915#1436] / [i915#1784] / [i915#656])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl7/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl4/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-kbl2/igt@runner@aborted.html
    - shard-glk:          [FAIL][163] ([k.org#202321]) -> ([FAIL][164], [FAIL][165], [FAIL][166]) ([i915#1423] / [k.org#202321])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk7/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk8/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/shard-glk1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.fre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17854/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
