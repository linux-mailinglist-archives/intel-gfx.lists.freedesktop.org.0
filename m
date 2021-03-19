Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102CE3411FF
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 02:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172FC6E249;
	Fri, 19 Mar 2021 01:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DEBF6E21D;
 Fri, 19 Mar 2021 01:17:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E336A0BA8;
 Fri, 19 Mar 2021 01:17:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 19 Mar 2021 01:17:41 -0000
Message-ID: <161611666102.8628.1124825882873170304@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210318170419.2107512-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210318170419.2107512-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?ault_request/fence_expiry_+_watchdog_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1910152452=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1910152452==
Content-Type: multipart/alternative;
 boundary="===============5602330674182792655=="

--===============5602330674182792655==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Default request/fence expiry + watchdog (rev3)
URL   : https://patchwork.freedesktop.org/series/87930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9870_full -> Patchwork_19806_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19806_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19806_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19806_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl10/igt@gem_ctx_ringsize@idle@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl7/igt@gem_ctx_ringsize@idle@bcs0.html

  * {igt@gem_watchdog@far-fence@bcs0} (NEW):
    - shard-glk:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk7/igt@gem_watchdog@far-fence@bcs0.html

  * {igt@gem_watchdog@far-fence@vcs0} (NEW):
    - shard-apl:          NOTRUN -> [FAIL][4] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl1/igt@gem_watchdog@far-fence@vcs0.html

  * {igt@gem_watchdog@far-fence@vecs0} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][5] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl7/igt@gem_watchdog@far-fence@vecs0.html

  
#### Warnings ####

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          [INCOMPLETE][6] ([i915#2502] / [i915#2667]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-apl6/igt@gem_userptr_blits@vma-merge.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_userptr_blits@vma-merge.html
    - shard-iclb:         [INCOMPLETE][8] ([i915#2502] / [i915#2667]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb7/igt@gem_userptr_blits@vma-merge.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb6/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          [INCOMPLETE][10] ([i915#2502] / [i915#2667]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-glk6/igt@gem_userptr_blits@vma-merge.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk6/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          [INCOMPLETE][12] ([i915#2502] / [i915#2667]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-kbl6/igt@gem_userptr_blits@vma-merge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl4/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         [INCOMPLETE][14] ([i915#2502] / [i915#2667]) -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-tglb3/igt@gem_userptr_blits@vma-merge.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb7/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          [INCOMPLETE][16] ([i915#2502] / [i915#2667]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl7/igt@gem_userptr_blits@vma-merge.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl7/igt@gem_userptr_blits@vma-merge.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23]) ([i915#1814] / [i915#2029] / [i915#2724] / [i915#3002]) -> ([FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30]) ([i915#1814] / [i915#2029] / [i915#2426] / [i915#3002])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl2/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl3/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl7/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl9/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl3/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl4/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl2/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl6/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl8/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl3/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl5/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl3/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl5/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9870_full and Patchwork_19806_full:

### New IGT tests (8) ###

  * igt@gem_watchdog@default-physical:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.00, 1.28] s

  * igt@gem_watchdog@default-virtual:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.26] s

  * igt@gem_watchdog@far-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_watchdog@far-fence@bcs0:
    - Statuses : 3 fail(s) 2 pass(s) 1 skip(s)
    - Exec time: [0.00, 5.87] s

  * igt@gem_watchdog@far-fence@rcs0:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.00, 3.33] s

  * igt@gem_watchdog@far-fence@vcs0:
    - Statuses : 1 fail(s) 4 pass(s) 1 skip(s)
    - Exec time: [0.00, 3.02] s

  * igt@gem_watchdog@far-fence@vcs1:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [1.39, 1.73] s

  * igt@gem_watchdog@far-fence@vecs0:
    - Statuses : 2 fail(s) 3 pass(s)
    - Exec time: [1.39, 2.92] s

  

Known issues
------------

  Here are the changes found in Patchwork_19806_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#1839])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb7/igt@feature_discovery@display-4x.html
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#1839])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb3/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109314])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb3/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#1099]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb6/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#280])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([i915#155])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-kbl2/igt@gem_eio@kms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl6/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][38] -> [TIMEOUT][39] ([i915#2369] / [i915#3063])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb8/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [PASS][40] -> [TIMEOUT][41] ([i915#2369] / [i915#2481] / [i915#3070])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][42] ([i915#2842])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#2842])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#2842]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#2842])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +361 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#2389])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-snb:          NOTRUN -> [FAIL][51] ([i915#2389]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb7/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][52] ([i915#2389])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][53] -> [DMESG-WARN][54] ([i915#1610] / [i915#2803])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl6/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-semaphore-codependency:
    - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982] / [i915#409])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl2/igt@gem_exec_schedule@u-semaphore-codependency.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl8/igt@gem_exec_schedule@u-semaphore-codependency.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [PASS][57] -> [DMESG-WARN][58] ([i915#118] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-glk1/igt@gem_exec_whisper@basic-fds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk3/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][60] -> [FAIL][61] ([i915#307])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][62] ([i915#2658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][63] ([i915#2658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#768]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109312])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb3/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109312])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][67] ([i915#3002])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][68] -> [INCOMPLETE][69] ([i915#198]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl5/igt@gem_workarounds@suspend-resume-context.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109289]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109289]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb2/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#112306])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +43 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl3/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][74] ([i915#2782])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110725] / [fdo#111614])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#111614])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl10/igt@kms_chamelium@vga-hpd-after-suspend.html
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb3/igt@kms_chamelium@vga-hpd-after-suspend.html
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-c-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][82] ([i915#1149])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb6/igt@kms_color@pipe-c-degamma.html
    - shard-tglb:         NOTRUN -> [FAIL][83] ([i915#1149]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@kms_color@pipe-c-degamma.html

  * igt@kms_color@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109278] / [i915#1149]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl2/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][88] ([i915#1319])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#2105])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [fdo#109279])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109279])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [PASS][92] -> [SKIP][93] ([fdo#109271]) +21 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-right-edge:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278]) +12 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][96] ([IGT#6])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +95 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl8/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109349])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - shard-skl:          [PASS][99] -> [DMESG-WARN][100] ([i915#1982])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-snb:          [PASS][101] -> [SKIP][102] ([fdo#109271]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#111825]) +13 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109274]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +12 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271]) +59 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#49])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#1187])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb5/igt@kms_hdr@static-toggle-suspend.html
    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#1187])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][114] ([i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
    - shard-apl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2733])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#658]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
    - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-glk1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([fdo#109441])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][125] ([IGT#2])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#533]) +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2530])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb4/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#2530])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@perf@polling:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1542])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl1/igt@perf@polling.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl9/igt@perf@polling.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271]) +204 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([fdo#109291]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb3/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@prime_nv_pcopy@test3_4:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109291]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@prime_nv_pcopy@test3_4.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [PASS][134] -> [FAIL][135] ([i915#3028])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-kbl4/igt@sysfs_clients@recycle.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl3/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [PASS][136] -> [FAIL][137] ([i915#3028])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-iclb6/igt@sysfs_clients@recycle-many.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb4/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@rcs0:
    - shard-kbl:          [PASS][138] -> [SKIP][139] ([fdo#109271] / [i915#3026])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-kbl7/igt@sysfs_clients@sema-10@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl6/igt@sysfs_clients@sema-10@rcs0.html

  * igt@sysfs_clients@split-10@rcs0:
    - shard-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/index.html

--===============5602330674182792655==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Default request/fence expiry + watchdog (rev=
3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87930/">https://patchwork.freedesktop.org/series/87930/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19806/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9870_full -&gt; Patchwork_19806_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19806_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19806_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19806_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@idle@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl10/igt@gem_ctx_ringsize@idle@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard=
-skl7/igt@gem_ctx_ringsize@idle@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@gem_watchdog@far-fence@bcs0} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-glk7/igt@gem_watchdog@far-fence@bcs0.ht=
ml">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@gem_watchdog@far-fence@vcs0} (NEW):</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl1/igt@gem_watchdog@far-fence@vcs0.ht=
ml">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_watchdog@far-fence@vecs0} (NEW):</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-kbl7/igt@gem_watchdog@far-fence@vecs0.h=
tml">FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-apl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a>=
 ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_userptr_blits@vma-merge.html=
">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-iclb7/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a=
> ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb6/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-glk6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a>=
 ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19806/shard-glk6/igt@gem_userptr_blits@vma-merge.html=
">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-kbl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a>=
 ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19806/shard-kbl4/igt@gem_userptr_blits@vma-merge.html=
">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-tglb3/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a=
> ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb7/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-skl7/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a>=
 ([i915#2502] / [i915#2667]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19806/shard-skl7/igt@gem_userptr_blits@vma-merge.html=
">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9870/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9870/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl9/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
870/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/shard-skl4/igt@runner@aborted.html">=
FAIL</a>) ([i915#1814] / [i915#2029] / [i915#2724] / [i915#3002]) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl=
2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl6/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-=
skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19806/shard-skl3/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/sha=
rd-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19806/shard-skl3/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/=
shard-skl5/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2029] / =
[i915#2426] / [i915#3002])</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9870_full and Patchwork_19=
806_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence@bcs0:</p>
<ul>
<li>Statuses : 3 fail(s) 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 5.87] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 3.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence@vcs1:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [1.39, 1.73] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@far-fence@vecs0:</p>
<ul>
<li>Statuses : 2 fail(s) 3 pass(s)</li>
<li>Exec time: [1.39, 2.92] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19806_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb7/igt@feature_discovery@display-4x.h=
tml">SKIP</a> ([i915#1839])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb3/igt@feature_discovery@display-4x.h=
tml">SKIP</a> ([i915#1839])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb3/igt@gem_ctx_param@set-priority-no=
t-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-snb6/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@gem_ctx_sseu@mmap-args.html">=
SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-kbl2/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl6/igt@gem_ei=
o@kms.html">INCOMPLETE</a> ([i915#155])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-tglb=
8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])<=
/p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9870/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-iclb=
2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] /=
 [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
806/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/sha=
rd-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/sh=
ard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-snb2/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> ([fdo#109271]) +361 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_exec_reloc@basic-many-activ=
e@rcs0.html">FAIL</a> ([i915#2389])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-snb7/igt@gem_exec_reloc@basic-many-activ=
e@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl6/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1980=
6/shard-skl6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-codependency:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl2/igt@gem_exec_schedule@u-semaphore-codependency.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19806/shard-skl8/igt@gem_exec_schedule@u-semaphore-codependency.html">D=
MESG-WARN</a> ([i915#1982] / [i915#409])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-glk1/igt@gem_exec_whisper@basic-fds.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-=
glk3/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a> ([i915#118] / [i91=
5#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
06/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">FAIL</a> ([i915=
#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-snb5/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-apl1/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> ([i915#768]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb3/igt@gem_softpin@evict-snoop-interr=
uptible.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gem_softpin@evict-snoop-interr=
uptible.html">SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl2/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl5/igt@gem_workarounds@suspend-resume-context.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19806/shard-skl1/igt@gem_workarounds@suspend-resume-context.html">INCOMPLET=
E</a> ([i915#198]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb2/igt@gen7_exec_parse@bitmasks.html=
">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@gen9_exec_parse@cmd-crossing-=
page.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-kbl3/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> ([fdo#109271]) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-snb5/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_big_fb@x-tiled-8bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate=
-270.html">SKIP</a> ([fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb2/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-skl10/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb3/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-glk7/igt@kms_chamelium@vga-hpd-after-sus=
pend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@kms_chamelium@vga-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb6/igt@kms_color@pipe-c-degamma.html"=
>FAIL</a> ([i915#1149])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb2/igt@kms_color@pipe-c-degamma.html"=
>FAIL</a> ([i915#1149]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_color@pipe-d-degamma.html=
">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-kbl2/igt@kms_color_chamelium@pipe-a-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-snb6/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-random.html">SKIP</a> ([fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19806/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-ed=
ge.html">SKIP</a> ([fdo#109271]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-right-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb2/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-right-edge.html">SKIP</a> ([fdo#109278]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-=
flipa-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl6/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl8/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-e=
dp.html">SKIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-y=
tiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19806/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mma=
p-cpu-ytiled.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19806/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.htm=
l">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb5/igt@kms_flip@2x-flip-vs-absolute-=
wf_vblank.html">SKIP</a> ([fdo#111825]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-rec=
reate-interruptible.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +12 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-glk1/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +59 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19806/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-b=
lt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb5/igt@kms_hdr@static-toggle-suspend.=
html">SKIP</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb4/igt@kms_hdr@static-toggle-suspend.=
html">SKIP</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +5 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-glk6/igt@kms_plane_alpha_blend@pipe-c-co=
nstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issu=
es</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-co=
nstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issu=
e</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb7/igt@kms_psr2_sf@cursor-plane-upda=
te-sf.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-apl7/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issue=
s</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-glk1/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue=
</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-kbl2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-skl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard=
-iclb5/igt@kms_psr@psr2_sprite_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl1/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-iclb4/igt@nouveau_crc@pipe-c-ctx-flip-de=
tection.html">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19806/shard-tglb5/igt@nouveau_crc@pipe-c-ctx-flip-de=
tection.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-skl1/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-skl9/igt@perf@=
polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-apl2/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +204 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-tglb3/igt@prime_nv_api@i915_self_import=
_to_different_fd.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19806/shard-iclb8/igt@prime_nv_pcopy@test3_4.html">=
SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-kbl4/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-kbl3/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-iclb6/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard=
-iclb4/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9870/shard-kbl7/igt@sysfs_clients@sema-10@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19806/shard-=
kbl6/igt@sysfs_clients@sema-10@rcs0.html">SKIP</a> ([fdo#109271] / [i915#30=
26])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@rcs0:</p>
<ul>
<li>shard-</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5602330674182792655==--

--===============1910152452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1910152452==--
