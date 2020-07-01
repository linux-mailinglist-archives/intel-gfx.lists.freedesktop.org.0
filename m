Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8666F210BD4
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 15:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0476E8D2;
	Wed,  1 Jul 2020 13:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 403886E8D4;
 Wed,  1 Jul 2020 13:10:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3651EA47EB;
 Wed,  1 Jul 2020 13:10:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 01 Jul 2020 13:10:54 -0000
Message-ID: <159360905421.16669.5056149976247786286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/26=5D_Revert_=22drm/i915/gem=3A_Async_G?=
 =?utf-8?q?PU_relocations_only=22_=28rev2=29?=
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

Series: series starting with [01/26] Revert "drm/i915/gem: Async GPU relocations only" (rev2)
URL   : https://patchwork.freedesktop.org/series/78744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8661_full -> Patchwork_18018_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18018_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18018_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18018_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> ([FAIL][2], [FAIL][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk9/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk1/igt@gem_close@many-handles-one-vma.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk6/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][4] -> ([FAIL][5], [FAIL][6])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl1/igt@gem_close@many-handles-one-vma.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl4/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl3/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][7] -> ([FAIL][8], [FAIL][9])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl1/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl9/igt@gem_close@many-handles-one-vma.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl2/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][10] -> ([FAIL][11], [FAIL][12])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@gem_close@many-handles-one-vma.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-hsw5/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-hsw1/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][15] -> ([FAIL][16], [FAIL][17])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb5/igt@gem_close@many-handles-one-vma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb6/igt@gem_close@many-handles-one-vma.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][18] -> ([FAIL][19], [FAIL][20])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb8/igt@gem_close@many-handles-one-vma.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb2/igt@gem_close@many-handles-one-vma.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb5/igt@gem_close@many-handles-one-vma.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-tglb:         [PASS][21] -> ([FAIL][22], [FAIL][23]) ([i915#1815]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb5/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [PASS][24] -> ([FAIL][25], [FAIL][26]) ([i915#1815]) +7 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          [PASS][27] -> ([FAIL][28], [FAIL][29]) ([i915#1815]) +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-tglb:         [PASS][30] -> ([FAIL][31], [FAIL][32]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb3/igt@gem_exec_reloc@basic-many-active@vcs1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb1/igt@gem_exec_reloc@basic-many-active@vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb5/igt@gem_exec_reloc@basic-many-active@vcs1.html
    - shard-iclb:         NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-snb:          [PASS][34] -> ([DMESG-WARN][35], [DMESG-WARN][36])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb2/igt@gem_exec_reloc@basic-parallel.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb4/igt@gem_exec_reloc@basic-parallel.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-spin@vcs0:
    - shard-snb:          [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb1/igt@gem_exec_reloc@basic-spin@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@gem_exec_reloc@basic-spin@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          [PASS][39] -> ([FAIL][40], [FAIL][41]) ([i915#1815]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl2/igt@gem_exec_reloc@basic-wide-active@bcs0.html
    - shard-skl:          [PASS][42] -> ([FAIL][43], [FAIL][44]) ([i915#1815]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl5/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl9/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-iclb:         [PASS][45] -> ([FAIL][46], [FAIL][47]) ([i915#1815]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][50] -> ([DMESG-WARN][51], [DMESG-WARN][52])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl1/igt@i915_selftest@live@gem_contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@i915_selftest@live@gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_execbuf:
    - shard-skl:          [PASS][53] -> ([PASS][54], [INCOMPLETE][55])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl4/igt@i915_selftest@live@gem_execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl4/igt@i915_selftest@live@gem_execbuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl10/igt@i915_selftest@live@gem_execbuf.html
    - shard-apl:          [PASS][56] -> ([PASS][57], [INCOMPLETE][58])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl4/igt@i915_selftest@live@gem_execbuf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl6/igt@i915_selftest@live@gem_execbuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl4/igt@i915_selftest@live@gem_execbuf.html
    - shard-iclb:         [PASS][59] -> ([PASS][60], [INCOMPLETE][61])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb8/igt@i915_selftest@live@gem_execbuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb2/igt@i915_selftest@live@gem_execbuf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb5/igt@i915_selftest@live@gem_execbuf.html
    - shard-snb:          [PASS][62] -> ([INCOMPLETE][63], [DMESG-WARN][64]) ([i915#82])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb4/igt@i915_selftest@live@gem_execbuf.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@i915_selftest@live@gem_execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb6/igt@i915_selftest@live@gem_execbuf.html
    - shard-tglb:         [PASS][65] -> ([PASS][66], [INCOMPLETE][67])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb1/igt@i915_selftest@live@gem_execbuf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb1/igt@i915_selftest@live@gem_execbuf.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb2/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> ([FAIL][68], [FAIL][69], [FAIL][70], [FAIL][71], [FAIL][72]) ([i915#2110])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb4/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb5/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18018_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][73] -> ([DMESG-WARN][74], [DMESG-WARN][75]) ([i915#180])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][76] -> ([PASS][77], [FAIL][78]) ([i915#1528]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][79] -> ([DMESG-WARN][80], [PASS][81]) ([i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb5/igt@gem_eio@kms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb1/igt@gem_eio@kms.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [PASS][82] -> [INCOMPLETE][83] ([i915#1821]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-snb:          [PASS][84] -> ([INCOMPLETE][85], [INCOMPLETE][86]) ([i915#1821] / [i915#82])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          [PASS][87] -> ([TIMEOUT][88], [TIMEOUT][89]) ([i915#1958] / [i915#2119])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][90] -> ([TIMEOUT][91], [TIMEOUT][92]) ([i915#1958] / [i915#2119])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb1/igt@gem_exec_reloc@basic-parallel.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb1/igt@gem_exec_reloc@basic-parallel.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb2/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][93] -> ([TIMEOUT][94], [TIMEOUT][95]) ([i915#1958] / [i915#2119])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl8/igt@gem_exec_reloc@basic-parallel.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl5/igt@gem_exec_reloc@basic-parallel.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl9/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][96] -> ([TIMEOUT][97], [TIMEOUT][98]) ([i915#1635] / [i915#1958] / [i915#2119])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl6/igt@gem_exec_reloc@basic-parallel.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl4/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][99] -> ([TIMEOUT][100], [TIMEOUT][101]) ([i915#1958] / [i915#2119])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb7/igt@gem_exec_reloc@basic-parallel.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-iclb2/igt@gem_exec_reloc@basic-parallel.html
    - shard-glk:          [PASS][102] -> ([TIMEOUT][103], [TIMEOUT][104]) ([i915#1958] / [i915#2119])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk5/igt@gem_exec_reloc@basic-parallel.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk5/igt@gem_exec_reloc@basic-parallel.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk9/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          [PASS][105] -> [INCOMPLETE][106] ([i915#1821] / [i915#82])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb1/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][107] -> ([DMESG-WARN][108], [PASS][109]) ([i915#118] / [i915#95]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk9/igt@gem_exec_whisper@basic-contexts-all.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_flink_basic@double-flink:
    - shard-kbl:          [PASS][110] -> ([DMESG-WARN][111], [PASS][112]) ([i915#165])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@gem_flink_basic@double-flink.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl2/igt@gem_flink_basic@double-flink.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@gem_flink_basic@double-flink.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [PASS][113] -> [SKIP][114] ([fdo#109271])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-hsw5/igt@gem_shrink@reclaim.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-hsw2/igt@gem_shrink@reclaim.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][115] -> ([DMESG-WARN][116], [PASS][117]) ([i915#402]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-apl:          [PASS][118] -> ([DMESG-WARN][119], [DMESG-WARN][120]) ([i915#1635] / [i915#95]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl2/igt@i915_pm_rpm@gem-execbuf.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl6/igt@i915_pm_rpm@gem-execbuf.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl1/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-kbl:          [PASS][121] -> ([INCOMPLETE][122], [INCOMPLETE][123]) ([i915#151] / [i915#155])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [PASS][124] -> [INCOMPLETE][125] ([i915#82])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb4/igt@i915_selftest@live@blt.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-snb6/igt@i915_selftest@live@blt.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo:
    - shard-tglb:         [PASS][126] -> ([DMESG-WARN][127], [DMESG-WARN][128]) ([i915#402])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb6/igt@kms_ccs@pipe-d-ccs-on-another-bo.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb7/igt@kms_ccs@pipe-d-ccs-on-another-bo.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb6/igt@kms_ccs@pipe-d-ccs-on-another-bo.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][129] -> ([PASS][130], [DMESG-WARN][131]) ([i915#1982]) +7 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][132] -> ([DMESG-FAIL][133], [DMESG-FAIL][134]) ([i915#54] / [i915#95])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][135] -> ([INCOMPLETE][136], [INCOMPLETE][137]) ([i915#300])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [PASS][138] -> ([DMESG-WARN][139], [DMESG-WARN][140]) ([i915#1982]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-apl:          [PASS][141] -> ([PASS][142], [DMESG-WARN][143]) ([i915#1982]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][144] -> ([DMESG-FAIL][145], [DMESG-FAIL][146]) ([fdo#108145] / [i915#54] / [i915#95])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][147] -> ([PASS][148], [INCOMPLETE][149]) ([i915#69])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][150] -> ([DMESG-FAIL][151], [DMESG-FAIL][152]) ([i915#1635] / [i915#95])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][153] -> ([DMESG-FAIL][154], [DMESG-FAIL][155]) ([i915#95])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [PASS][156] -> ([DMESG-WARN][157], [PASS][158]) ([i915#1635] / [i915#95]) +20 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][159] -> ([PASS][160], [FAIL][161]) ([i915#1188])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-kbl:          [PASS][162] -> ([DMESG-WARN][163], [DMESG-WARN][164]) ([i915#93] / [i915#95]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][165] -> ([FAIL][166], [FAIL][167]) ([fdo#108145] / [i915#265]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-kbl:          [PASS][168] -> ([DMESG-WARN][169], [PASS][170]) ([i915#78])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][171] -> ([FAIL][172], [FAIL][173]) ([i915#31])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@kms_setmode@basic.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl4/igt@kms_setmode@basic.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - shard-tglb:         [PASS][174] -> ([DMESG-WARN][175], [DMESG-WARN][176]) ([i915#1982]) +1 similar issue
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-tglb5/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][177] -> ([PASS][178], [DMESG-WARN][179]) ([i915#180]) +6 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - shard-apl:          [PASS][180] -> [DMESG-WARN][181] ([i915#1635] / [i915#95])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl3/igt@kms_vblank@pi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
