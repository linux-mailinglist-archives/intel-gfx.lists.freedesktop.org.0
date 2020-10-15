Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE8528F776
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 19:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17DF6ED00;
	Thu, 15 Oct 2020 17:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AFBD16ED00;
 Thu, 15 Oct 2020 17:10:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EC18A47EA;
 Thu, 15 Oct 2020 17:10:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 15 Oct 2020 17:10:53 -0000
Message-ID: <160278185361.13182.974496934715231778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0076166642=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0076166642==
Content-Type: multipart/alternative;
 boundary="===============7597080107356238724=="

--===============7597080107356238724==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev3)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9140_full -> Patchwork_18703_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18703_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18703_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18703_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_blits@basic:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb3/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/igt@gem_blits@basic.html

  * igt@gem_exec_capture@userptr:
    - shard-iclb:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb3/igt@gem_exec_capture@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb8/igt@gem_exec_capture@userptr.html
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk4/igt@gem_exec_capture@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@gem_exec_capture@userptr.html
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl7/igt@gem_exec_capture@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl6/igt@gem_exec_capture@userptr.html
    - shard-snb:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-snb4/igt@gem_exec_capture@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb7/igt@gem_exec_capture@userptr.html
    - shard-skl:          NOTRUN -> [DMESG-FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl7/igt@gem_exec_capture@userptr.html
    - shard-tglb:         [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb5/igt@gem_exec_capture@userptr.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb8/igt@gem_exec_capture@userptr.html

  * igt@gem_exec_schedule@pi-distinct-iova@rcs0:
    - shard-iclb:         [PASS][14] -> [INCOMPLETE][15] +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl10/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@rcs0:
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl4/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl4/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
    - shard-glk:          [PASS][19] -> [INCOMPLETE][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk1/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * igt@gem_exec_schedule@pi-userfault@bcs0:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb5/igt@gem_exec_schedule@pi-userfault@bcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb1/igt@gem_exec_schedule@pi-userfault@bcs0.html

  * igt@gem_exec_schedule@pi-userfault@rcs0:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl8/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl7/igt@gem_exec_schedule@pi-userfault@rcs0.html
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl2/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl6/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * igt@gem_exec_schedule@pi-userfault@vcs0:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb2/igt@gem_exec_schedule@pi-userfault@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb7/igt@gem_exec_schedule@pi-userfault@vcs0.html

  * igt@gem_exec_schedule@pi-userfault@vecs0:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl8/igt@gem_exec_schedule@pi-userfault@vecs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl7/igt@gem_exec_schedule@pi-userfault@vecs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-kbl:          [PASS][31] -> [TIMEOUT][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl1/igt@gem_exec_whisper@basic-fds-priority-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl7/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][33] -> [TIMEOUT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup:
    - shard-iclb:         NOTRUN -> [SKIP][35] +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup.html

  * igt@gem_userptr_blits@process-exit-mmap:
    - shard-tglb:         NOTRUN -> [SKIP][36] +11 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb2/igt@gem_userptr_blits@process-exit-mmap.html

  * igt@gem_userptr_blits@stress-mm-invalidate-close:
    - shard-iclb:         [PASS][37] -> [SKIP][38] +22 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb4/igt@gem_userptr_blits@stress-mm-invalidate-close.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb3/igt@gem_userptr_blits@stress-mm-invalidate-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][39] -> [SKIP][40] +22 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][41] ([fdo#110542]) -> [SKIP][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb2/igt@gem_userptr_blits@coherency-unsync.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb6/igt@gem_userptr_blits@coherency-unsync.html
    - shard-iclb:         [SKIP][43] ([fdo#109290]) -> [SKIP][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb4/igt@gem_userptr_blits@coherency-unsync.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][45] ([fdo#110426] / [i915#1704]) -> [SKIP][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][47] ([fdo#110426] / [i915#1704]) -> [SKIP][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb6/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@userptr}:
    - shard-glk:          [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk1/igt@gem_ctx_persistence@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk4/igt@gem_ctx_persistence@userptr.html
    - shard-tglb:         [PASS][51] -> [DMESG-FAIL][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb6/igt@gem_ctx_persistence@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/igt@gem_ctx_persistence@userptr.html
    - shard-iclb:         [PASS][53] -> [DMESG-FAIL][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb3/igt@gem_ctx_persistence@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb4/igt@gem_ctx_persistence@userptr.html

  * {igt@gem_exec_parallel@engines@userptr}:
    - shard-skl:          [PASS][55] -> [DMESG-FAIL][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl9/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl8/igt@gem_exec_parallel@engines@userptr.html
    - shard-glk:          [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk1/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@gem_exec_parallel@engines@userptr.html
    - shard-kbl:          [PASS][59] -> [DMESG-FAIL][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl4/igt@gem_exec_parallel@engines@userptr.html
    - shard-snb:          [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-snb7/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb7/igt@gem_exec_parallel@engines@userptr.html

  * {igt@gen9_exec_parse@bb-large}:
    - shard-skl:          [SKIP][63] ([fdo#109271]) -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl3/igt@gen9_exec_parse@bb-large.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl3/igt@gen9_exec_parse@bb-large.html
    - shard-glk:          [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk8/igt@gen9_exec_parse@bb-large.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk5/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@gen9_exec_parse@bb-large.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl2/igt@gen9_exec_parse@bb-large.html

  * {igt@prime_vgem@basic-userptr}:
    - shard-tglb:         [PASS][69] -> [SKIP][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb6/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/igt@prime_vgem@basic-userptr.html
    - shard-iclb:         [PASS][71] -> [SKIP][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb3/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb4/igt@prime_vgem@basic-userptr.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@amd_pinned_memory@map-buffer increment-offset (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][73] +7 similar issues
   [73]: None

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * spec@amd_pinned_memory@map-buffer offset=0:
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][74] +1 similar issue
   [74]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9140_full and Patchwork_18703_full:

### New Piglit tests (8) ###

  * spec@amd_pinned_memory@decrement-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@amd_pinned_memory@increment-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@amd_pinned_memory@map-buffer decrement-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@amd_pinned_memory@map-buffer increment-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@amd_vertex_shader_viewport_index@amd_vertex_shader_viewport_index-render:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_map_buffer_range@copybuffersubdata decrement-offset:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@nv_texture_barrier@arb_texture_barrier-texture-halves-ping-pong-operation-chain:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@nv_texture_env_combine4@nv_texture_env_combine4-combine:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18703_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-apl:          [PASS][75] -> [INCOMPLETE][76] ([i915#1635]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@gem_blits@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl3/igt@gem_blits@basic.html
    - shard-snb:          [PASS][77] -> [INCOMPLETE][78] ([i915#82])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-snb2/igt@gem_blits@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb2/igt@gem_blits@basic.html

  * igt@gem_exec_capture@userptr:
    - shard-apl:          [PASS][79] -> [DMESG-FAIL][80] ([i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl2/igt@gem_exec_capture@userptr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl8/igt@gem_exec_capture@userptr.html

  * igt@gem_exec_reloc@basic-many-active@bcs0:
    - shard-apl:          [PASS][81] -> [FAIL][82] ([i915#1635] / [i915#2389]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl3/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * igt@gem_exec_schedule@pi-userfault@rcs0:
    - shard-apl:          [PASS][83] -> [DMESG-WARN][84] ([i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl4/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-apl:          [PASS][85] -> [TIMEOUT][86] ([i915#1635])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@gem_exec_whisper@basic-queues.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl7/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_userptr_blits@create-destroy-sync:
    - shard-glk:          [PASS][87] -> [SKIP][88] ([fdo#109271]) +23 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk8/igt@gem_userptr_blits@create-destroy-sync.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk8/igt@gem_userptr_blits@create-destroy-sync.html

  * igt@gem_userptr_blits@process-exit-busy:
    - shard-skl:          [PASS][89] -> [SKIP][90] ([fdo#109271]) +21 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl9/igt@gem_userptr_blits@process-exit-busy.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl6/igt@gem_userptr_blits@process-exit-busy.html

  * igt@gem_userptr_blits@stress-mm-invalidate-close:
    - shard-apl:          [PASS][91] -> [SKIP][92] ([fdo#109271] / [i915#1635]) +23 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl8/igt@gem_userptr_blits@stress-mm-invalidate-close.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl6/igt@gem_userptr_blits@stress-mm-invalidate-close.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-snb:          [PASS][93] -> [SKIP][94] ([fdo#109271]) +25 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-snb5/igt@gem_userptr_blits@stress-purge.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb4/igt@gem_userptr_blits@stress-purge.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][95] -> [SKIP][96] ([fdo#109271]) +24 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][97] -> [INCOMPLETE][98] ([i915#636])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl5/igt@i915_suspend@forcewake.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-skl:          [PASS][99] -> [DMESG-WARN][100] ([i915#1982]) +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][101] -> [FAIL][102] ([i915#2416]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][103] -> [DMESG-WARN][104] ([i915#1982])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#1188])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-kbl:          [PASS][107] -> [DMESG-WARN][108] ([i915#1982])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl4/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl4/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([fdo#109441]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-query-idle-hang:
    - shard-apl:          [PASS][111] -> [DMESG-WARN][112] ([i915#1635] / [i915#1982])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@kms_vblank@pipe-a-query-idle-hang.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl7/igt@kms_vblank@pipe-a-query-idle-hang.html

  * igt@perf@blocking-parameterized:
    - shard-glk:          [PASS][113] -> [DMESG-WARN][114] ([i915#1982])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk2/igt@perf@blocking-parameterized.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk1/igt@perf@blocking-parameterized.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][115] -> [FAIL][116] ([i915#1542])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@perf@polling-parameterized.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl7/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [DMESG-WARN][117] ([i915#118] / [i915#95]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk7/igt@gem_exec_whisper@basic-queues.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk2/igt@gem_exec_whisper@basic-queues.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][119] ([i915#1982]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl7/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-glk:          [DMESG-WARN][123] ([i915#1982]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-apl:          [DMESG-WARN][125] ([i915#1635] / [i915#1982]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][127] ([i915#2416]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [DMESG-WARN][129] ([i915#1982]) -> [PASS][130] +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-skl:          [FAIL][131] ([i915#49]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][133] ([fdo#108145] / [i915#265]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][135] ([fdo#109642] / [fdo#111068]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][139] ([i915#1982]) -> [DMESG-FAIL][140] ([i915#1982] / [i915#79])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [DMESG-FAIL][141] ([i915#1982]) -> [FAIL][142] ([i915#2416])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][143] ([i915#2439] / [k.org#202321]) -> ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#2398] / [i915#2439] / [k.org#202321])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk9/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109290]: https://bugs.freedesktop.org/show_bug.cgi?id=109290
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110426]: https://bugs.freedesktop.org/show_bug.cgi?id=110426
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html

--===============7597080107356238724==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev3)</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18703/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18703/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9140_full -&gt; Patchwork_18703_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18703_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18703_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18703_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb3/igt@gem_blits@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/ig=
t@gem_blits@basic.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb3/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-ic=
lb8/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-glk4/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk=
6/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-kbl7/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl=
6/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-snb4/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb=
7/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18703/shard-skl7/igt@gem_exec_capture@userptr.html">=
DMESG-FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-tglb5/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tg=
lb8/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-distinct-iova@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18703/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html">INCOMP=
LETE</a> +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18703/shard-skl10/igt@gem_exec_schedule@pi-distinct-=
iova@rcs0.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-shared-iova@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-kbl4/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-kbl4/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</=
a> +3 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-glk2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-glk1/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</=
a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb5/igt@gem_exec_schedule@pi-userfault@bcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-tglb1/igt@gem_exec_schedule@pi-userfault@bcs0.html">DMESG-WARN</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@rcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-skl8/igt@gem_exec_schedule@pi-userfault@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1870=
3/shard-skl7/igt@gem_exec_schedule@pi-userfault@rcs0.html">DMESG-WARN</a> +=
2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-kbl2/igt@gem_exec_schedule@pi-userfault@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1870=
3/shard-kbl6/igt@gem_exec_schedule@pi-userfault@rcs0.html">DMESG-WARN</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-iclb2/igt@gem_exec_schedule@pi-userfault@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-iclb7/igt@gem_exec_schedule@pi-userfault@vcs0.html">DMESG-WARN</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl8/igt@gem_exec_schedule@pi-userfault@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-skl7/igt@gem_exec_schedule@pi-userfault@vecs0.html">INCOMPLETE</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-kbl1/igt@gem_exec_whisper@basic-fds-priority-all.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18703/shard-kbl7/igt@gem_exec_whisper@basic-fds-priority-all.html">TIMEOUT=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
703/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">TIMEOUT</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18703/shard-iclb8/igt@gem_userptr_blits@map-fixed-i=
nvalidate-overlap-gup.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18703/shard-tglb2/igt@gem_userptr_blits@process-exi=
t-mmap.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm-invalidate-close:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-iclb4/igt@gem_userptr_blits@stress-mm-invalidate-close.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18703/shard-iclb3/igt@gem_userptr_blits@stress-mm-invalidate-close.h=
tml">SKIP</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-cycles.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18703/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> =
+22 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-tglb2/igt@gem_userptr_blits@coherency-unsync.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110542">fdo#1=
10542</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18703/shard-tglb6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>=
 +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109290">fdo#1=
09290</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18703/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>=
 +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110426"=
>fdo#110426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1704">i915#1704</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18703/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-uns=
ync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110426"=
>fdo#110426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1704">i915#1704</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18703/shard-iclb6/igt@gem_userptr_blits@readonly-pwrite-uns=
ync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_ctx_persistence@userptr}:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-glk1/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-=
glk4/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-tglb6/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard=
-tglb7/igt@gem_ctx_persistence@userptr.html">DMESG-FAIL</a> +1 similar issu=
e</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb3/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard=
-iclb4/igt@gem_ctx_persistence@userptr.html">DMESG-FAIL</a> +1 similar issu=
e</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-skl9/igt@gem_exec_parallel@engines@userptr.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/=
shard-skl8/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a> +1 si=
milar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-glk1/igt@gem_exec_parallel@engines@userptr.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/=
shard-glk6/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-kbl6/igt@gem_exec_parallel@engines@userptr.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/=
shard-kbl4/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a> +1 si=
milar issue</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-snb7/igt@gem_exec_parallel@engines@userptr.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/=
shard-snb7/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gen9_exec_parse@bb-large}:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-skl3/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/s=
hard-skl3/igt@gen9_exec_parse@bb-large.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-glk8/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk=
5/igt@gen9_exec_parse@bb-large.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-kbl6/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-kbl=
2/igt@gen9_exec_parse@bb-large.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-tglb6/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tg=
lb7/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-iclb3/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-ic=
lb4/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@amd_pinned_memory@map-buffer increment-offset (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> +7 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>spec@amd_pinned_memory@map-buffer offset=3D0:<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"None">CRASH</a> +1 similar =
issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9140_full and Patchwork_18=
703_full:</p>
<h3>New Piglit tests (8)</h3>
<ul>
<li>
<p>spec@amd_pinned_memory@decrement-offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@amd_pinned_memory@increment-offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@amd_pinned_memory@map-buffer decrement-offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@amd_pinned_memory@map-buffer increment-offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@amd_vertex_shader_viewport_index@amd_vertex_shader_viewport_index-r=
ender:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_map_buffer_range@copybuffersubdata decrement-offset:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@nv_texture_barrier@arb_texture_barrier-texture-halves-ping-pong-ope=
ration-chain:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@nv_texture_env_combine4@nv_texture_env_combine4-combine:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18703_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-apl1/igt@gem_blits@basic.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-apl3/igt@gem=
_blits@basic.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1635">i915#1635</a>) +3 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9140/shard-snb2/igt@gem_blits@basic.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-snb2/igt@gem=
_blits@basic.html">INCOMPLETE</a> ([i915#82])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl2/igt@gem_exec_capture@userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-ap=
l8/igt@gem_exec_capture@userptr.html">DMESG-FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8703/shard-apl3/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#=
2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl4/igt@gem_exec_schedule@pi-userfault@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
03/shard-apl4/igt@gem_exec_schedule@pi-userfault@rcs0.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl4/igt@gem_exec_whisper@basic-queues.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/sha=
rd-apl7/igt@gem_exec_whisper@basic-queues.html">TIMEOUT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-sync:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk8/igt@gem_userptr_blits@create-destroy-sync.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8703/shard-glk8/igt@gem_userptr_blits@create-destroy-sync.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-busy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl9/igt@gem_userptr_blits@process-exit-busy.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_187=
03/shard-skl6/igt@gem_userptr_blits@process-exit-busy.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>=
) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm-invalidate-close:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl8/igt@gem_userptr_blits@stress-mm-invalidate-close.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18703/shard-apl6/igt@gem_userptr_blits@stress-mm-invalidate-close.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1635">i915#1635</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-snb5/igt@gem_userptr_blits@stress-purge.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/sh=
ard-snb4/igt@gem_userptr_blits@stress-purge.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +25 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8703/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl5/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-skl1=
/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18703/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18703/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-pri=
mscrn-cur-indfb-move.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2416">i915#2416</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-sp=
r-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18703/shard-tglb3/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-=
skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-kbl4/igt@kms_plane_cursor@pipe-c-primary-size-128.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18703/shard-kbl4/igt@kms_plane_cursor@pipe-c-primary-size-128.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-iclb7=
/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-idle-hang:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl4/igt@kms_vblank@pipe-a-query-idle-hang.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703=
/shard-apl7/igt@kms_vblank@pipe-a-query-idle-hang.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk2/igt@perf@blocking-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard=
-glk1/igt@perf@blocking-parameterized.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-=
skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk7/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18703/shard-glk2/igt@gem_exec_whisper@basic-queues.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl1/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18703/shard-skl7/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> =
+3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18703/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18703/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-256x25=
6-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18703/shard-apl6/igt@kms_draw_crc@draw-method-rgb5=
65-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-msflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2416">i915#2416</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18703/shard-tglb6/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-indfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb7/igt@kms_frontbuffe=
r_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18703/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pw=
rite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18703/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-iclb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18703/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18703/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18703/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issu">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-in=
dfb-msflip-blt.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18703/shard-tglb8/igt@kms_frontbuffer_tr=
acking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9140/shard-glk6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / [k.org#202=
321]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18703/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18703/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18703/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18703/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/shard-glk6/igt@runner=
@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2398">i915#2398</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2439">i915#2439</a> / [k.org#202321])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7597080107356238724==--

--===============0076166642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0076166642==--
