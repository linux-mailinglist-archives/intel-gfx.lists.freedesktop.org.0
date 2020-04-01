Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F2B19B60C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8EA6E98A;
	Wed,  1 Apr 2020 18:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FB936E98A;
 Wed,  1 Apr 2020 18:56:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94D33A00E7;
 Wed,  1 Apr 2020 18:56:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 01 Apr 2020 18:56:46 -0000
Message-ID: <158576740660.25625.17493250298933061625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331104209.432176-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200331104209.432176-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75303/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8228_full -> Patchwork_17153_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17153_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17153_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17153_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk6/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-glk4/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-apl7/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl10/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-skl2/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb2/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb7/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl4/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb5/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-snb6/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb5/igt@gem_close@many-handles-one-vma.html

  * igt@gem_ctx_freq@sysfs:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] +20 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl7/igt@gem_ctx_freq@sysfs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-apl4/igt@gem_ctx_freq@sysfs.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb1/igt@gem_exec_whisper@basic-fds-all.html

  * igt@perf_pmu@busy-hang-bcs0:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] +19 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl7/igt@perf_pmu@busy-hang-bcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-skl9/igt@perf_pmu@busy-hang-bcs0.html

  * igt@perf_pmu@busy-idle-vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-skl4/igt@perf_pmu@busy-idle-vcs0.html

  * igt@perf_pmu@busy-start-vecs0:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] +18 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb2/igt@perf_pmu@busy-start-vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb5/igt@perf_pmu@busy-start-vecs0.html

  * igt@perf_pmu@busy-vcs0:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] +22 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@perf_pmu@busy-vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl4/igt@perf_pmu@busy-vcs0.html

  * igt@perf_pmu@render-node-busy-rcs0:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] +24 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-tglb1/igt@perf_pmu@render-node-busy-rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb1/igt@perf_pmu@render-node-busy-rcs0.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][27], [FAIL][28], [FAIL][29])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb1/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb1/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb4/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb3/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb6/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb1/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb5/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-tglb1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][35] ([i915#1515]) -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [INCOMPLETE][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb7/igt@perf_pmu@busy-start-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb4/igt@perf_pmu@busy-start-vcs1.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][39] ([i915#1423] / [i915#92]) -> ([FAIL][40], [FAIL][41], [FAIL][42])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl3/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl3/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl4/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl6/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8228_full and Patchwork_17153_full:

### New IGT tests (1) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17153_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([i915#677])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276] / [i915#677])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276]) +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112146]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([i915#1318]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl2/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [PASS][55] -> [INCOMPLETE][56] ([i915#1318] / [i915#58] / [k.org#198133]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
    - shard-apl:          [PASS][57] -> [INCOMPLETE][58] ([i915#1318]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl4/igt@gem_exec_whisper@basic-fds-forked.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-apl1/igt@gem_exec_whisper@basic-fds-forked.html
    - shard-skl:          [PASS][59] -> [INCOMPLETE][60] ([i915#1318]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-skl3/igt@gem_exec_whisper@basic-fds-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-skl2/igt@gem_exec_whisper@basic-fds-forked.html
    - shard-iclb:         [PASS][61] -> [INCOMPLETE][62] ([i915#1318]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb5/igt@gem_exec_whisper@basic-fds-forked.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-kbl7/igt@i915_suspend@forcewake.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl3/igt@kms_flip@flip-vs-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-apl2/igt@kms_flip@flip-vs-suspend.html

  * igt@perf_pmu@busy-idle-vcs0:
    - shard-snb:          [PASS][67] -> [INCOMPLETE][68] ([i915#82]) +23 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-snb6/igt@perf_pmu@busy-idle-vcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-snb4/igt@perf_pmu@busy-idle-vcs0.html

  * igt@perf_pmu@other-read-2:
    - shard-glk:          [PASS][69] -> [INCOMPLETE][70] ([i915#58] / [k.org#198133]) +19 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk8/igt@perf_pmu@other-read-2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-glk1/igt@perf_pmu@other-read-2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][71] ([fdo#109276] / [i915#677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][73] ([i915#677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_wait@await-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-iclb6/igt@gem_wait@await-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-iclb2/igt@gem_wait@await-vcs1.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][79] ([i915#52] / [i915#54]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/shard-apl6/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/shard-apl6/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17153

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17153: 783376875259ac31360f42c83a606c2762400071 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
