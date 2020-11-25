Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFFE2C426D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 15:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FD86EA16;
	Wed, 25 Nov 2020 14:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7754489EF7;
 Wed, 25 Nov 2020 14:49:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BA8CA47E2;
 Wed, 25 Nov 2020 14:49:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 25 Nov 2020 14:49:28 -0000
Message-ID: <160631576840.8876.5820377601637510911@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev11=29?=
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
Content-Type: multipart/mixed; boundary="===============0602753036=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0602753036==
Content-Type: multipart/alternative;
 boundary="===============4291194908286194484=="

--===============4291194908286194484==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev11)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9389_full -> Patchwork_18975_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18975_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18975_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18975_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:
    - shard-skl:          [PASS][2] -> [FAIL][3] +12 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl8/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:
    - shard-kbl:          [PASS][4] -> [FAIL][5] +16 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:
    - shard-snb:          [PASS][6] -> [FAIL][7] +16 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
    - shard-iclb:         [PASS][8] -> [FAIL][9] +16 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb5/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb8/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:
    - shard-glk:          [PASS][10] -> [FAIL][11] +16 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk3/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk9/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:
    - shard-hsw:          [PASS][12] -> [FAIL][13] +16 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:
    - shard-tglb:         [PASS][14] -> [FAIL][15] +16 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wb:
    - shard-skl:          NOTRUN -> [FAIL][16] +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wb.html

  * igt@gem_userptr_blits@readonly-mmap-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][18] -> [SKIP][19] +6 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         [PASS][20] -> [SKIP][21] +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][22] ([fdo#110542]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html
    - shard-iclb:         [SKIP][24] ([fdo#109290]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][26] ([fdo#110426] / [i915#1704]) -> [SKIP][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][28] ([fdo#110426] / [i915#1704]) -> [SKIP][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][30] ([i915#2295] / [i915#483]) -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@userptr@bcs0}:
    - shard-glk:          [PASS][32] -> [FAIL][33] +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk7/igt@gem_exec_parallel@userptr@bcs0.html

  * {igt@gem_exec_parallel@userptr@rcs0}:
    - shard-hsw:          [PASS][34] -> [FAIL][35] +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw5/igt@gem_exec_parallel@userptr@rcs0.html
    - shard-snb:          [PASS][36] -> [FAIL][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb5/igt@gem_exec_parallel@userptr@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb5/igt@gem_exec_parallel@userptr@rcs0.html

  * {igt@gem_exec_parallel@userptr@vcs1}:
    - shard-kbl:          [PASS][38] -> [FAIL][39] +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl4/igt@gem_exec_parallel@userptr@vcs1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@gem_exec_parallel@userptr@vcs1.html

  * {igt@gem_exec_parallel@userptr@vecs0}:
    - shard-tglb:         [PASS][40] -> [FAIL][41] +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@gem_exec_parallel@userptr@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html
    - shard-skl:          [PASS][42] -> [FAIL][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl10/igt@gem_exec_parallel@userptr@vecs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl7/igt@gem_exec_parallel@userptr@vecs0.html
    - shard-iclb:         [PASS][44] -> [FAIL][45] +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@gem_exec_parallel@userptr@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@gem_exec_parallel@userptr@vecs0.html

  * {igt@gem_userptr_blits@vma-merge}:
    - shard-snb:          [FAIL][46] ([i915#1635]) -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb4/igt@gem_userptr_blits@vma-merge.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-iclb:         [INCOMPLETE][48] ([i915#2667]) -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb3/igt@gem_userptr_blits@vma-merge.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb6/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          [INCOMPLETE][50] ([i915#2667]) -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk9/igt@gem_userptr_blits@vma-merge.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk9/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          [INCOMPLETE][52] ([i915#2667]) -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl1/igt@gem_userptr_blits@vma-merge.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl3/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         [INCOMPLETE][54] ([i915#2667]) -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@gem_userptr_blits@vma-merge.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb3/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          [INCOMPLETE][56] ([i915#2667]) -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@gem_userptr_blits@vma-merge.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@vma-merge.html

  * {igt@gen9_exec_parse@bb-large}:
    - shard-skl:          [SKIP][58] ([fdo#109271]) -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl7/igt@gen9_exec_parse@bb-large.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl9/igt@gen9_exec_parse@bb-large.html

  * {igt@prime_vgem@basic-userptr}:
    - shard-tglb:         [PASS][60] -> [SKIP][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb7/igt@prime_vgem@basic-userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb5/igt@prime_vgem@basic-userptr.html
    - shard-iclb:         [PASS][62] -> [SKIP][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb2/igt@prime_vgem@basic-userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb1/igt@prime_vgem@basic-userptr.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9389_full and Patchwork_18975_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18975_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2389]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_userptr_blits@access-control:
    - shard-skl:          [PASS][66] -> [SKIP][67] ([fdo#109271]) +7 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl2/igt@gem_userptr_blits@access-control.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl4/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:
    - shard-apl:          [PASS][68] -> [FAIL][69] ([i915#1635]) +16 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html

  * igt@gem_userptr_blits@relocations:
    - shard-glk:          [PASS][70] -> [SKIP][71] ([fdo#109271]) +9 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk7/igt@gem_userptr_blits@relocations.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk6/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [PASS][72] -> [SKIP][73] ([fdo#109271] / [i915#1635]) +9 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][74] -> [SKIP][75] ([fdo#109271]) +8 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-hsw:          [PASS][76] -> [SKIP][77] ([fdo#109271]) +7 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw5/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [PASS][78] -> [INCOMPLETE][79] ([i915#1185])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb8/igt@i915_suspend@debugfs-reader.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][82] -> [FAIL][83] ([i915#1149])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@kms_color@pipe-a-gamma.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb8/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#54])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-apl:          [PASS][86] -> [DMESG-WARN][87] ([i915#1635] / [i915#1982]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#2346])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-tglb:         [PASS][90] -> [FAIL][91] ([i915#2346]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][92] -> [DMESG-WARN][93] ([i915#1982]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk5/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw1/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][96] -> [FAIL][97] ([i915#2598])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#79])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][100] -> [INCOMPLETE][101] ([i915#198])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2122]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#2122])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][106] -> [DMESG-WARN][107] ([i915#1982])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-kbl:          [PASS][108] -> [DMESG-WARN][109] ([i915#1982]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-badstride:
    - shard-iclb:         [PASS][110] -> [DMESG-WARN][111] ([i915#1982])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][112] -> [FAIL][113] ([i915#1188])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - shard-snb:          [PASS][114] -> [SKIP][115] ([fdo#109271]) +12 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][120] -> [DMESG-WARN][121] ([i915#1982] / [i915#262])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@perf_pmu@module-unload.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][122] ([i915#658]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@feature_discovery@psr2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][124] ([i915#118] / [i915#95]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-tglb:         [FAIL][126] ([i915#2521]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_busy@basic-modeset-pipe-c:
    - shard-hsw:          [DMESG-WARN][128] ([i915#44]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw4/igt@kms_busy@basic-modeset-pipe-c.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw2/igt@kms_busy@basic-modeset-pipe-c.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][130] ([i915#54]) -> [PASS][131] +4 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][132] ([i915#2346]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          [FAIL][134] ([i915#64]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk6/igt@kms_fbcon_fbt@fbc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][136] ([i915#79]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][138] ([i915#62]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl2/igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl6/igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1.html

  * {igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a}:
    - shard-apl:          [DMESG-WARN][140] ([i915#1635] / [i915#1982]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl7/igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl2/igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          [DMESG-WARN][142] ([i915#1982]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][144] ([i915#1982]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-skl:          [DMESG-WARN][146] ([i915#1982]) -> [PASS][147] +5 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_panel_fitting@atomic-fastset.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][148] ([i915#198]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][150] ([fdo#108145] / [i915#265]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][152] ([fdo#109642] / [fdo#111068]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][154] ([fdo#109441]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [DMESG-WARN][156] ([i915#1635] / [i915#1982] / [i915#262]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl3/igt@perf_pmu@module-unload.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl8/igt@perf_pmu@module-unload.html
    - shard-skl:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html

--===============4291194908286194484==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9389_full -&gt; Patchwork_18975_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18975_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18975_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18975_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl8/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +16 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb5/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb8/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk3/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk9/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wb.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#110542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#109290]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@runner@aborted.html">FAIL</a> ([i915#2295] / [i915#483]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@userptr@bcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk7/igt@gem_exec_parallel@userptr@bcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@rcs0}:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw5/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb5/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb5/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl4/igt@gem_exec_parallel@userptr@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vecs0}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl10/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl7/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_userptr_blits@vma-merge}:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb4/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#1635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb3/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl1/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl3/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb3/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gen9_exec_parse@bb-large}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl7/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl9/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb7/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb5/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9389_full and Patchwork_18975_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18975_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk2/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl2/igt@gem_userptr_blits@access-control.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl4/igt@gem_userptr_blits@access-control.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">FAIL</a> ([i915#1635]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk7/igt@gem_userptr_blits@relocations.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk6/igt@gem_userptr_blits@relocations.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl1/igt@gem_userptr_blits@unsync-unmap-after-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([fdo#109271] / [i915#1635]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw5/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> ([i915#1185])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#1982]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb5/igt@kms_color@pipe-a-gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb8/igt@kms_color@pipe-a-gamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html">FAIL</a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk5/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk4/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw1/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb@ab-vga1-hdmi-a1.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-badstride:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-snb5/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-modeset-pipe-c:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-hsw4/igt@kms_busy@basic-modeset-pipe-c.html">DMESG-WARN</a> ([i915#44]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-hsw2/igt@kms_busy@basic-modeset-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-glk6/igt@kms_fbcon_fbt@fbc.html">FAIL</a> ([i915#64]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-glk5/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl2/igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#62]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl6/igt@kms_flip@flip-vs-rmfb-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl7/igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl2/igt@kms_flip_tiling@flip-y-tiled@dp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_panel_fitting@atomic-fastset.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl10/igt@kms_panel_fitting@atomic-fastset.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/shard-apl3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1635] / [i915#1982] / [i915#262]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18975/shard-apl8/igt@perf_pmu@module-unload.html">PASS</a></p>
</li>
<li>
<p>shard-skl:</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4291194908286194484==--

--===============0602753036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0602753036==--
