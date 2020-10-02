Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D490281A5C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 20:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF576E976;
	Fri,  2 Oct 2020 18:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B68166E976;
 Fri,  2 Oct 2020 18:01:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3E4BA0003;
 Fri,  2 Oct 2020 18:01:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 02 Oct 2020 18:01:52 -0000
Message-ID: <160166171263.3606.17765354145823575944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!?=
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
Content-Type: multipart/mixed; boundary="===============0744356040=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0744356040==
Content-Type: multipart/alternative;
 boundary="===============2396109611508169635=="

--===============2396109611508169635==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock!
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9092_full -> Patchwork_18613_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18613_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18613_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18613_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@reset-stress:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@pi-distinct-iova@rcs0:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@bcs0:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb2/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb1/igt@gem_exec_schedule@pi-shared-iova@bcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@rcs0:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][7] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
    - shard-glk:          [PASS][10] -> [INCOMPLETE][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * igt@gem_mmap_wc@copy:
    - shard-hsw:          [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@gem_mmap_wc@copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@gem_mmap_wc@copy.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup:
    - shard-iclb:         NOTRUN -> [SKIP][14] +13 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup.html

  * igt@gem_userptr_blits@process-exit-mmap:
    - shard-tglb:         NOTRUN -> [SKIP][15] +13 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@gem_userptr_blits@process-exit-mmap.html

  * igt@gem_userptr_blits@stress-mm-invalidate-close:
    - shard-iclb:         [PASS][16] -> [SKIP][17] +24 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@gem_userptr_blits@stress-mm-invalidate-close.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb1/igt@gem_userptr_blits@stress-mm-invalidate-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][18] -> [SKIP][19] +24 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][20] ([fdo#110542]) -> [SKIP][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb6/igt@gem_userptr_blits@coherency-unsync.html
    - shard-iclb:         [SKIP][22] ([fdo#109290]) -> [SKIP][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][24] ([fdo#110426] / [i915#1704]) -> [SKIP][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][26] ([fdo#110426] / [i915#1704]) -> [SKIP][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@userptr@bcs0}:
    - shard-glk:          [PASS][28] -> [FAIL][29] +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk4/igt@gem_exec_parallel@userptr@bcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html

  * {igt@gem_exec_parallel@userptr@rcs0}:
    - shard-hsw:          [PASS][30] -> [FAIL][31] +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@gem_exec_parallel@userptr@rcs0.html
    - shard-snb:          [PASS][32] -> [FAIL][33] +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-snb7/igt@gem_exec_parallel@userptr@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html

  * {igt@gem_exec_parallel@userptr@vcs0}:
    - shard-iclb:         [PASS][34] -> [FAIL][35] +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@gem_exec_parallel@userptr@vcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb6/igt@gem_exec_parallel@userptr@vcs0.html

  * {igt@gem_exec_parallel@userptr@vcs1}:
    - shard-kbl:          [PASS][36] -> [FAIL][37] +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html

  * {igt@gem_exec_parallel@userptr@vecs0}:
    - shard-tglb:         [PASS][38] -> [FAIL][39] +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@gem_exec_parallel@userptr@vecs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html
    - shard-skl:          [PASS][40] -> [FAIL][41] +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@gem_exec_parallel@userptr@vecs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@gem_exec_parallel@userptr@vecs0.html

  * {igt@gen9_exec_parse@bb-large}:
    - shard-skl:          [SKIP][42] ([fdo#109271]) -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@gen9_exec_parse@bb-large.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl5/igt@gen9_exec_parse@bb-large.html

  
Known issues
------------

  Here are the changes found in Patchwork_18613_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox:
    - shard-skl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982]) +11 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl8/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox.html

  * igt@gem_exec_reloc@basic-many-active@bcs0:
    - shard-apl:          [PASS][46] -> [FAIL][47] ([i915#1635] / [i915#2389]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#2389]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_schedule@pi-shared-iova@rcs0:
    - shard-apl:          [PASS][50] -> [INCOMPLETE][51] ([i915#1635]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl1/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-apl:          [PASS][52] -> [TIMEOUT][53] ([i915#1635])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl3/igt@gem_exec_whisper@basic-forked.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-hsw:          [PASS][54] -> [SKIP][55] ([fdo#109271]) +25 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@gem_userptr_blits@coherency-sync.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw4/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-sync:
    - shard-glk:          [PASS][56] -> [SKIP][57] ([fdo#109271]) +26 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@gem_userptr_blits@create-destroy-sync.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk4/igt@gem_userptr_blits@create-destroy-sync.html

  * igt@gem_userptr_blits@process-exit-busy:
    - shard-skl:          [PASS][58] -> [SKIP][59] ([fdo#109271]) +24 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@gem_userptr_blits@process-exit-busy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl9/igt@gem_userptr_blits@process-exit-busy.html

  * igt@gem_userptr_blits@stress-mm-invalidate-close:
    - shard-apl:          [PASS][60] -> [SKIP][61] ([fdo#109271] / [i915#1635]) +26 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_userptr_blits@stress-mm-invalidate-close.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl1/igt@gem_userptr_blits@stress-mm-invalidate-close.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-snb:          [PASS][62] -> [SKIP][63] ([fdo#109271]) +27 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-snb7/igt@gem_userptr_blits@stress-purge.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-snb4/igt@gem_userptr_blits@stress-purge.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][64] -> [SKIP][65] ([fdo#109271]) +9 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@live@gt_timelines:
    - shard-hsw:          [PASS][66] -> [INCOMPLETE][67] ([i915#2439]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw1/igt@i915_selftest@live@gt_timelines.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw4/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][68] -> [FAIL][69] ([i915#96])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][72] -> [INCOMPLETE][73] ([i915#198]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][74] -> [INCOMPLETE][75] ([i915#648])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([fdo#108145] / [i915#265])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][78] -> [DMESG-WARN][79] ([i915#1982])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@file:
    - shard-skl:          [DMESG-WARN][80] ([i915#1982]) -> [PASS][81] +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_ctx_persistence@file.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][82] ([i915#1635] / [i915#2389]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-hsw:          [FAIL][84] ([i915#2389]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-hsw:          [INCOMPLETE][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-apl:          [DMESG-WARN][88] ([i915#1635] / [i915#1982]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][90] ([i915#300]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][92] ([i915#1982]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-iclb:         [FAIL][94] ([i915#79]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][98] ([i915#1982]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][100] ([i915#1982]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][102] ([i915#49]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][104] ([i915#1188]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][106] ([fdo#108145] / [i915#265]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][108] ([fdo#109441]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-hsw:          [WARN][110] ([i915#2283]) -> [INCOMPLETE][111] ([i915#2439])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw1/igt@device_reset@unbind-reset-rebind.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw2/igt@device_reset@unbind-reset-rebind.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [DMESG-WARN][112] ([i915#1982]) -> [DMESG-FAIL][113] ([i915#1982])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-FAIL][114] ([i915#1982]) -> [DMESG-WARN][115] ([i915#1982])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [DMESG-FAIL][116] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][117] ([fdo#108145] / [i915#1635] / [i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109290]: https://bugs.freedesktop.org/show_bug.cgi?id=109290
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110426]: https://bugs.freedesktop.org/show_bug.cgi?id=110426
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2469]: https://gitlab.freedesktop.org/drm/intel/issues/2469
  [i915#2476]: https://gitlab.freedesktop.org/drm/intel/issues/2476
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9092 -> Patchwork_18613

  CI-20190529: 20190529
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18613: 6ac5d2f0c380fdc4d44d6f072450e17750edac34 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html

--===============2396109611508169635==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock!</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9092_full -&gt; Patchwork_18613_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18613_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18613_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18613_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@gem_eio@reset-stress.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-distinct-iova@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova@rcs0.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-shared-iova@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb2/igt@gem_exec_schedule@pi-shared-iova@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb1/igt@gem_exec_schedule@pi-shared-iova@bcs0.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-shared-iova@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@gem_mmap_wc@copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@gem_mmap_wc@copy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup.html">SKIP</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@gem_userptr_blits@process-exit-mmap.html">SKIP</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm-invalidate-close:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@gem_userptr_blits@stress-mm-invalidate-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb1/igt@gem_userptr_blits@stress-mm-invalidate-close.html">SKIP</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +24 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110542">fdo#110542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109290">fdo#109290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110426">fdo#110426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1704">i915#1704</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb1/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110426">fdo#110426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1704">i915#1704</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb1/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
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
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk4/igt@gem_exec_parallel@userptr@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@rcs0}:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-snb7/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@gem_exec_parallel@userptr@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb6/igt@gem_exec_parallel@userptr@vcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs1}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vecs0}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gen9_exec_parse@bb-large}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl5/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18613_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl8/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@vebox.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl4/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-shared-iova@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl1/igt@gem_exec_schedule@pi-shared-iova@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl3/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl3/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@gem_userptr_blits@coherency-sync.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw4/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-sync:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@gem_userptr_blits@create-destroy-sync.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-glk4/igt@gem_userptr_blits@create-destroy-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-busy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@gem_userptr_blits@process-exit-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl9/igt@gem_userptr_blits@process-exit-busy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm-invalidate-close:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_userptr_blits@stress-mm-invalidate-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl1/igt@gem_userptr_blits@stress-mm-invalidate-close.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-snb7/igt@gem_userptr_blits@stress-purge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-snb4/igt@gem_userptr_blits@stress-purge.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw4/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/648">i915#648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_ctx_persistence@file.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl3/igt@gem_ctx_persistence@file.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw7/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw1/igt@device_reset@unbind-reset-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-hsw2/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-skl4/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18613/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9092 -&gt; Patchwork_18613</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18613: 6ac5d2f0c380fdc4d44d6f072450e17750edac34 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2396109611508169635==--

--===============0744356040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0744356040==--
