Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC801E1058
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 16:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D096B89B42;
	Mon, 25 May 2020 14:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CC1989B42;
 Mon, 25 May 2020 14:19:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 361BCA0BC6;
 Mon, 25 May 2020 14:19:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 25 May 2020 14:19:50 -0000
Message-ID: <159041639019.4527.4920080095716303390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77472/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8511_full -> Patchwork_17730_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17730_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17730_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17730_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk4/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk6/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl3/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl3/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl7/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl10/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-tglb5/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-tglb5/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl2/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl7/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-snb4/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-snb5/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb8/igt@gem_close@many-handles-one-vma.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl3/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl7/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][25], [FAIL][26]) ([i915#1423] / [i915#1784] / [i915#656])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl1/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         NOTRUN -> ([FAIL][27], [FAIL][28]) ([i915#1580])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb7/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb8/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          [FAIL][29] ([fdo#109271] / [i915#716]) -> ([FAIL][30], [FAIL][31]) ([i915#1423] / [i915#529])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl6/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-many-active@bcs0}:
    - shard-skl:          [PASS][32] -> [FAIL][33] +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl7/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl10/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-apl:          [PASS][34] -> [FAIL][35] +7 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [PASS][36] -> [FAIL][37] +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-tglb5/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-tglb5/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [PASS][38] -> [FAIL][39] +7 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_reloc@basic-many-active@vcs0}:
    - shard-kbl:          [PASS][40] -> [FAIL][41] +9 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-snb:          [PASS][42] -> [DMESG-WARN][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-snb6/igt@gem_exec_reloc@basic-parallel.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-snb4/igt@gem_exec_reloc@basic-parallel.html

  * {igt@gem_exec_reloc@basic-wide-active@rcs0}:
    - shard-snb:          [PASS][44] -> [FAIL][45] +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [PASS][46] -> [FAIL][47] +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@vcs0}:
    - shard-snb:          [PASS][48] -> [DMESG-FAIL][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-snb2/igt@gem_exec_reloc@basic-wide-active@vcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-snb2/igt@gem_exec_reloc@basic-wide-active@vcs0.html

  * {igt@i915_selftest@live@gem_execbuf}:
    - shard-kbl:          [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl3/igt@i915_selftest@live@gem_execbuf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl7/igt@i915_selftest@live@gem_execbuf.html
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl2/igt@i915_selftest@live@gem_execbuf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl9/igt@i915_selftest@live@gem_execbuf.html
    - shard-apl:          [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@i915_selftest@live@gem_execbuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl2/igt@i915_selftest@live@gem_execbuf.html
    - shard-iclb:         [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb5/igt@i915_selftest@live@gem_execbuf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb7/igt@i915_selftest@live@gem_execbuf.html
    - shard-tglb:         [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-tglb6/igt@i915_selftest@live@gem_execbuf.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-tglb2/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17730_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][60] -> [INCOMPLETE][61] ([i915#58] / [k.org#198133])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#69])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl8/igt@gem_workarounds@suspend-resume.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl1/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][64] -> [INCOMPLETE][65] ([i915#155])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#49]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][76] -> [FAIL][77] ([i915#31])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl1/igt@kms_setmode@basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-hostile@rcs0:
    - shard-iclb:         [FAIL][78] ([i915#1622]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@gem_ctx_persistence@engines-hostile@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb2/igt@gem_ctx_persistence@engines-hostile@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][80] ([i915#1528]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_exec_schedule@pi-distinct-iova@bcs0}:
    - shard-glk:          [FAIL][82] ([i915#859]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk6/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk9/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][84] ([i915#1436] / [i915#716]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][88] ([i915#72]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +6 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][94] ([i915#1188]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][96] ([fdo#108145] / [i915#265]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][98] ([fdo#109441]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][100] ([i915#31]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_setmode@basic.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          [SKIP][102] ([fdo#109271]) -> [SKIP][103] ([fdo#109271] / [i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl5/igt@i915_pm_dc@dc3co-vpb-simulation.html
    - shard-glk:          [SKIP][104] ([fdo#109271]) -> [SKIP][105] ([fdo#109271] / [i915#658])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-glk6/igt@i915_pm_dc@dc3co-vpb-simulation.html
    - shard-apl:          [SKIP][106] ([fdo#109271]) -> [SKIP][107] ([fdo#109271] / [i915#658])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl6/igt@i915_pm_dc@dc3co-vpb-simulation.html
    - shard-kbl:          [SKIP][108] ([fdo#109271]) -> [SKIP][109] ([fdo#109271] / [i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-kbl6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][110] ([i915#1319]) -> [TIMEOUT][111] ([i915#1319] / [i915#1635])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-iclb:         [SKIP][112] ([fdo#109278] / [fdo#112010] / [fdo#112025]) -> [SKIP][113] ([fdo#109278] / [fdo#112010])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb7/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb1/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
    - shard-skl:          [SKIP][114] ([fdo#109271] / [fdo#112025]) -> [SKIP][115] ([fdo#109271])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-skl5/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][116] ([i915#1911]) -> [SKIP][117] ([fdo#109642] / [fdo#111068])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112025]: https://bugs.freedesktop.org/show_bug.cgi?id=112025
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1622]: https://gitlab.freedesktop.org/drm/intel/issues/1622
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17730

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17730: 6c8bb714a08795448cab1124c0d118a1b6237ad8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17730/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
