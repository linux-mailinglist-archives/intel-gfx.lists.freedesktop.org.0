Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CD7392C40
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 13:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744CE6E1D7;
	Thu, 27 May 2021 11:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 832C36E1D7;
 Thu, 27 May 2021 11:01:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B9B4A00CC;
 Thu, 27 May 2021 11:01:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 27 May 2021 11:01:11 -0000
Message-ID: <162211327147.12241.13064907840009003801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_gpu_relocations?=
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
Content-Type: multipart/mixed; boundary="===============0968814060=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0968814060==
Content-Type: multipart/alternative;
 boundary="===============0835803735732831372=="

--===============0835803735732831372==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Disable gpu relocations
URL   : https://patchwork.freedesktop.org/series/90619/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10138_full -> Patchwork_20210_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20210_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20210_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20210_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-spin@bcs0:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_exec_reloc@basic-spin@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb1/igt@gem_exec_reloc@basic-spin@bcs0.html
    - shard-snb:          [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-snb7/igt@gem_exec_reloc@basic-spin@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@gem_exec_reloc@basic-spin@bcs0.html

  * igt@gem_exec_reloc@basic-spin@vcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl3/igt@gem_exec_reloc@basic-spin@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_reloc@basic-spin@vcs0.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@gem_exec_schedule@deep@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_exec_schedule@deep@rcs0.html
    - shard-skl:          [PASS][9] -> [FAIL][10] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@gem_exec_schedule@deep@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_schedule@deep@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][11] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_exec_schedule@deep@vcs0.html
    - shard-apl:          [PASS][12] -> [FAIL][13] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_exec_schedule@deep@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl7/igt@gem_exec_schedule@deep@vcs0.html

  * igt@gem_exec_schedule@deep@vcs1:
    - shard-iclb:         [PASS][14] -> [FAIL][15] +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@gem_exec_schedule@deep@vcs1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_exec_schedule@deep@vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_20210_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#1839])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1099]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][18] -> [TIMEOUT][19] ([i915#2369] / [i915#3063])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#2846])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fence@parallel@rcs0:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#118] / [i915#95]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_fence@parallel@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk4/igt@gem_exec_fence@parallel@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][25] ([i915#2389]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#2389]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#2389]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#2389]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#2389]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb5/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#2389]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-tglb:         NOTRUN -> [TIMEOUT][36] ([i915#3183])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          NOTRUN -> [TIMEOUT][37] ([i915#3183])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][38] ([i915#2389]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@deep@vecs0:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#2624])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@gem_exec_schedule@deep@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_exec_schedule@deep@vecs0.html
    - shard-kbl:          NOTRUN -> [FAIL][41] ([i915#2624])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_exec_schedule@deep@vecs0.html
    - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#2624])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_exec_schedule@deep@vecs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl7/igt@gem_exec_schedule@deep@vecs0.html
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2624])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@gem_exec_schedule@deep@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@gem_exec_schedule@deep@vecs0.html
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#2624])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_exec_schedule@deep@vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb2/igt@gem_exec_schedule@deep@vecs0.html
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2624])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@gem_exec_schedule@deep@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_exec_schedule@deep@vecs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#307])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk4/igt@gem_mmap_gtt@big-copy-xy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-apl:          [PASS][52] -> [INCOMPLETE][53] ([i915#3468])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-apl:          NOTRUN -> [INCOMPLETE][54] ([i915#3468])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
    - shard-kbl:          [PASS][55] -> [INCOMPLETE][56] ([i915#3468])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-iclb:         [PASS][57] -> [INCOMPLETE][58] ([i915#3468])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-tglb:         [PASS][59] -> [INCOMPLETE][60] ([i915#3468] / [i915#750])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-skl:          NOTRUN -> [INCOMPLETE][61] ([i915#198] / [i915#3468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-x.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][62] ([i915#3468])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][63] ([i915#3468])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-glk:          NOTRUN -> [INCOMPLETE][64] ([i915#2055] / [i915#2502] / [i915#3468])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk8/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#3160]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@gem_mmap_offset@clear.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl7/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][67] ([i915#2658])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3323])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#3297])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#3318])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109289])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][72] -> [DMESG-WARN][73] ([i915#1436] / [i915#716])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2705])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl8/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111304])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_chamelium@hdmi-aspect-ratio.html
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][84] ([i915#1319]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#3116])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3319])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#109279] / [i915#3359])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#3444])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#3444])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3359])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-tglb:         NOTRUN -> [CRASH][91] ([i915#3494])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][92] -> [INCOMPLETE][93] ([i915#155] / [i915#180] / [i915#636])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111825]) +4 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#2122])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2767])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +62 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][104] ([fdo#109271]) +257 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][105] ([fdo#109271]) +27 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][106] -> [FAIL][107] ([i915#49])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109280]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109289])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +5 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][113] ([i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][116] ([i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#658]) +7 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_su@page_flip:
    - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][121] -> [SKIP][122] ([fdo#109441]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][123] ([i915#31])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-forked:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109278]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_vblank@pipe-d-wait-forked.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2437])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271]) +269 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#2530])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1722])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl3/igt@perf@polling-small-buf.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@perf@polling-small-buf.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271]) +76 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@prime_nv_pcopy@test2.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109291])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@prime_nv_pcopy@test3_3.html

  * igt@prime_nv_pcopy@test3_4:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#109291])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@prime_nv_pcopy@test3_4.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@sysfs_clients@create.html

  * igt@sysfs_clients@recycle:
    - shard-glk:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994]) +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994]) +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][138] ([i915#2842]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [FAIL][140] ([i915#2842]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [INCOMPLETE][142] ([i915#2055] / [i915#3468]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/index.html

--===============0835803735732831372==
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
<tr><td><b>Series:</b></td><td>drm/i915: Disable gpu relocations</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90619/">https://patchwork.freedesktop.org/series/90619/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10138_full -&gt; Patchwork_20210_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20210_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20210_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20210_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-spin@bcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_exec_reloc@basic-spin@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb1/igt@gem_exec_reloc@basic-spin@bcs0.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-snb7/igt@gem_exec_reloc@basic-spin@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@gem_exec_reloc@basic-spin@bcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl3/igt@gem_exec_reloc@basic-spin@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_reloc@basic-spin@vcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@gem_exec_schedule@deep@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_exec_schedule@deep@rcs0.html">FAIL</a> +6 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@gem_exec_schedule@deep@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@gem_exec_schedule@deep@rcs0.html">FAIL</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_exec_schedule@deep@vcs0.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_exec_schedule@deep@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl7/igt@gem_exec_schedule@deep@vcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vcs1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@gem_exec_schedule@deep@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_exec_schedule@deep@vcs1.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20210_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_fence@parallel@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk4/igt@gem_exec_fence@parallel@rcs0.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb5/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vecs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@gem_exec_schedule@deep@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_exec_schedule@deep@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl7/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@gem_exec_schedule@deep@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb3/igt@gem_exec_schedule@deep@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb2/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@gem_exec_schedule@deep@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_exec_schedule@deep@vecs0.html">FAIL</a> ([i915#2624])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk4/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk8/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a> ([i915#2055] / [i915#2502] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl7/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl8/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">CRASH</a> ([i915#3494])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> ([fdo#111825]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl7/igt@kms_flip_tiling@flip-x-tiled@edp-1-pipe-c.html">FAIL</a> ([i915#2767])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +257 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk8/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb1/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-snb5/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@kms_vblank@pipe-d-wait-forked.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +269 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@nouveau_crc@pipe-b-source-outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl3/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl1/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl3/igt@prime_nv_pcopy@test2.html">SKIP</a> ([fdo#109271]) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-iclb4/igt@prime_nv_pcopy@test3_3.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb8/igt@prime_nv_pcopy@test3_4.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-skl3/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-apl6/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-kbl7/igt@sysfs_clients@split-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk9/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20210/shard-glk2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0835803735732831372==--

--===============0968814060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0968814060==--
