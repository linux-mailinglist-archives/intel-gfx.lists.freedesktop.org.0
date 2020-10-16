Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2BC290B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 20:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C572B6EE66;
	Fri, 16 Oct 2020 18:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 462176EE66;
 Fri, 16 Oct 2020 18:31:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32295A47E6;
 Fri, 16 Oct 2020 18:31:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 16 Oct 2020 18:31:57 -0000
Message-ID: <160287311716.8601.11181585442233188170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============1097052821=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1097052821==
Content-Type: multipart/alternative;
 boundary="===============4318537047566016169=="

--===============4318537047566016169==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev8)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9149_full -> Patchwork_18718_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18718_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18718_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18718_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-forked:
    - shard-iclb:         [PASS][1] -> [TIMEOUT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb8/igt@gem_exec_whisper@basic-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_exec_whisper@basic-forked.html
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_exec_whisper@basic-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb3/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:
    - shard-snb:          NOTRUN -> [FAIL][8] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:
    - shard-kbl:          [PASS][9] -> [FAIL][10] +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl3/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt:
    - shard-skl:          [PASS][11] -> [FAIL][12] +12 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:
    - shard-snb:          [PASS][13] -> [FAIL][14] +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
    - shard-iclb:         [PASS][15] -> [FAIL][16] +16 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:
    - shard-glk:          [PASS][17] -> [FAIL][18] +16 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk1/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:
    - shard-hsw:          [PASS][19] -> [FAIL][20] +14 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:
    - shard-tglb:         [PASS][21] -> [FAIL][22] +16 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html

  * igt@gem_userptr_blits@readonly-mmap-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][23] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][24] -> [SKIP][25] +6 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         [PASS][26] -> [SKIP][27] +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk9/igt@i915_selftest@live@gt_heartbeat.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][32] ([fdo#110542]) -> [SKIP][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html
    - shard-iclb:         [SKIP][34] ([fdo#109290]) -> [SKIP][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb8/igt@gem_userptr_blits@coherency-unsync.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:
    - shard-snb:          [INCOMPLETE][36] ([i915#82]) -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][38] ([fdo#110426] / [i915#1704]) -> [SKIP][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][40] ([fdo#110426] / [i915#1704]) -> [SKIP][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][42] -> ([FAIL][43], [FAIL][44]) ([i915#2439])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl4/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         [FAIL][45] -> ([FAIL][46], [FAIL][47]) ([i915#2439])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@runner@aborted.html
    - shard-tglb:         [FAIL][48] -> ([FAIL][49], [FAIL][50]) ([i915#2439])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb3/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb6/igt@runner@aborted.html
    - shard-skl:          [FAIL][51] ([i915#1436]) -> ([FAIL][52], [FAIL][53]) ([i915#2439])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl3/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@userptr}:
    - shard-glk:          [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_ctx_persistence@userptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk3/igt@gem_ctx_persistence@userptr.html
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb5/igt@gem_ctx_persistence@userptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@gem_ctx_persistence@userptr.html
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl4/igt@gem_ctx_persistence@userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@gem_ctx_persistence@userptr.html
    - shard-iclb:         [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_ctx_persistence@userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@gem_ctx_persistence@userptr.html
    - shard-kbl:          [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@gem_ctx_persistence@userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl6/igt@gem_ctx_persistence@userptr.html

  * {igt@gem_exec_parallel@userptr@bcs0}:
    - shard-glk:          [PASS][64] -> [FAIL][65] +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_exec_parallel@userptr@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html

  * {igt@gem_exec_parallel@userptr@rcs0}:
    - shard-hsw:          [PASS][66] -> [FAIL][67] +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw7/igt@gem_exec_parallel@userptr@rcs0.html
    - shard-snb:          [PASS][68] -> [FAIL][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_exec_parallel@userptr@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html

  * {igt@gem_exec_parallel@userptr@vcs0}:
    - shard-iclb:         [PASS][70] -> [FAIL][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_exec_parallel@userptr@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_exec_parallel@userptr@vcs0.html

  * {igt@gem_exec_parallel@userptr@vcs1}:
    - shard-kbl:          [PASS][72] -> [FAIL][73] +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl1/igt@gem_exec_parallel@userptr@vcs1.html
    - shard-iclb:         NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_exec_parallel@userptr@vcs1.html

  * {igt@gem_exec_parallel@userptr@vecs0}:
    - shard-tglb:         [PASS][75] -> [FAIL][76] +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_exec_parallel@userptr@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb5/igt@gem_exec_parallel@userptr@vecs0.html
    - shard-skl:          [PASS][77] -> [FAIL][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl5/igt@gem_exec_parallel@userptr@vecs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl5/igt@gem_exec_parallel@userptr@vecs0.html

  * {igt@gen9_exec_parse@bb-large}:
    - shard-skl:          [SKIP][79] ([fdo#109271]) -> [FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl9/igt@gen9_exec_parse@bb-large.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl10/igt@gen9_exec_parse@bb-large.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-skl:          [FAIL][81] ([i915#2521]) -> [DMESG-FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@prime_vgem@basic-userptr}:
    - shard-tglb:         [PASS][83] -> [SKIP][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb6/igt@prime_vgem@basic-userptr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb2/igt@prime_vgem@basic-userptr.html
    - shard-iclb:         [PASS][85] -> [SKIP][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb4/igt@prime_vgem@basic-userptr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb5/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18718_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-hsw:          [PASS][87] -> [TIMEOUT][88] ([i915#1976])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_reloc@basic-many-active@bcs0:
    - shard-apl:          [PASS][89] -> [FAIL][90] ([i915#1635] / [i915#2389]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl1/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][91] -> [DMESG-WARN][92] ([i915#118] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-snb:          [PASS][93] -> [INCOMPLETE][94] ([i915#82])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_partial_pwrite_pread@reads-display.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb7/igt@gem_partial_pwrite_pread@reads-display.html
    - shard-hsw:          [PASS][95] -> [FAIL][96] ([i915#1888] / [i915#2261])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw1/igt@gem_partial_pwrite_pread@reads-display.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw8/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_sync@basic-store-all:
    - shard-apl:          [PASS][97] -> [FAIL][98] ([i915#1635] / [i915#2356])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl7/igt@gem_sync@basic-store-all.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@access-control:
    - shard-skl:          [PASS][99] -> [SKIP][100] ([fdo#109271]) +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl4/igt@gem_userptr_blits@access-control.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl4/igt@gem_userptr_blits@access-control.html
    - shard-snb:          [PASS][101] -> [SKIP][102] ([fdo#109271]) +7 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb5/igt@gem_userptr_blits@access-control.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb:
    - shard-hsw:          [PASS][103] -> [FAIL][104] ([i915#1888])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:
    - shard-apl:          [PASS][105] -> [FAIL][106] ([i915#1635]) +16 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html

  * igt@gem_userptr_blits@relocations:
    - shard-glk:          [PASS][107] -> [SKIP][108] ([fdo#109271]) +9 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk7/igt@gem_userptr_blits@relocations.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk9/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [PASS][109] -> [SKIP][110] ([fdo#109271] / [i915#1635]) +9 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][111] -> [SKIP][112] ([fdo#109271]) +8 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-hsw:          [PASS][113] -> [SKIP][114] ([fdo#109271]) +7 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][115] -> [FAIL][116] ([i915#2122])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render:
    - shard-kbl:          [PASS][117] -> [DMESG-WARN][118] ([i915#1982])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][119] -> [DMESG-FAIL][120] ([fdo#108145] / [i915#1982])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][121] -> [DMESG-WARN][122] ([i915#1982]) +8 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([fdo#108145] / [i915#265])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([fdo#109441]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - shard-tglb:         [PASS][127] -> [DMESG-WARN][128] ([i915#1982])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1542])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@perf@polling-parameterized.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-skl:          [FAIL][131] ([i915#1888]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@gem_exec_whisper@basic-queues-all.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_ringfill@basic-all:
    - shard-hsw:          [FAIL][133] ([i915#1888]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw1/igt@gem_ringfill@basic-all.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw8/igt@gem_ringfill@basic-all.html

  * igt@gem_tiled_blits@basic:
    - shard-snb:          [FAIL][135] -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb4/igt@gem_tiled_blits@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_tiled_blits@basic.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][137] ([i915#1436] / [i915#716]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl3/igt@gen9_exec_parse@allowed-all.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl1/igt@gen9_exec_parse@allowed-all.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][139] ([i915#2521]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-apl:          [FAIL][141] ([i915#1635] / [i915#2521]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl4/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - shard-skl:          [DMESG-WARN][143] ([i915#1982]) -> [PASS][144] +4 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][145] ([i915#1982]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@a-edp1:
    - shard-tglb:         [DMESG-WARN][147] ([i915#1982]) -> [PASS][148] +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@kms_flip@blocking-wf_vblank@a-edp1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb5/igt@kms_flip@blocking-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:
    - shard-kbl:          [DMESG-WARN][149] ([i915#1982]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][151] ([i915#2122]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-snb:          [FAIL][153] ([i915#2546]) -> [PASS][154] +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [INCOMPLETE][155] ([i915#155]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][157] ([fdo#109441]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][159] ([i915#1982]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb5/igt@perf_pmu@module-unload.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb3/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][161] ([i915#2424]) -> [SKIP][162] ([fdo#109271])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][163] ([fdo#110321] / [i915#1635]) -> [TIMEOUT][164] ([i915#1319] / [i915#1635])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl2/igt@kms_content_protection@srm.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [DMESG-FAIL][165] ([i915#1982]) -> [DMESG-WARN][166] ([i915#1982

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html

--===============4318537047566016169==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9149_full -&gt; Patchwork_18718_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18718_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18718_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18718_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb8/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb3/igt@gem_exec_whisper@basic-forked.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl3/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +12 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk1/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">FAIL</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#110542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb8/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#109290]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html">INCOMPLETE</a> ([i915#82]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb6/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb3/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb6/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl3/igt@runner@aborted.html">FAIL</a> ([i915#1436]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_ctx_persistence@userptr}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk3/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb5/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb8/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl4/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb6/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl6/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@bcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk2/igt@gem_exec_parallel@userptr@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk1/igt@gem_exec_parallel@userptr@bcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@rcs0}:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw7/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb3/igt@gem_exec_parallel@userptr@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_exec_parallel@userptr@vcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs1}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl1/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a> +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vecs0}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb5/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl5/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl5/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gen9_exec_parse@bb-large}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl9/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl10/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_async_flips@async-flip-with-page-flip-events.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb6/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb4/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb5/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18718_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#1976])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl1/igt@gem_exec_reloc@basic-many-active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> ([i915#1635] / [i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@gem_partial_pwrite_pread@reads-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb7/igt@gem_partial_pwrite_pread@reads-display.html">INCOMPLETE</a> ([i915#82])</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw1/igt@gem_partial_pwrite_pread@reads-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw8/igt@gem_partial_pwrite_pread@reads-display.html">FAIL</a> ([i915#1888] / [i915#2261])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl7/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_sync@basic-store-all.html">FAIL</a> ([i915#1635] / [i915#2356])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl4/igt@gem_userptr_blits@access-control.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl4/igt@gem_userptr_blits@access-control.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb5/igt@gem_userptr_blits@access-control.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_userptr_blits@access-control.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wb.html">FAIL</a> ([i915#1888])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">FAIL</a> ([i915#1635]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk7/igt@gem_userptr_blits@relocations.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk9/igt@gem_userptr_blits@relocations.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([fdo#109271] / [i915#1635]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw7/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> ([fdo#108145] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">DMESG-WARN</a> ([i915#1982]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb8/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb3/igt@kms_vblank@pipe-b-ts-continuation-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-idle.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@gem_exec_whisper@basic-queues-all.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl3/igt@gem_exec_whisper@basic-queues-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-hsw1/igt@gem_ringfill@basic-all.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-hsw8/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb4/igt@gem_tiled_blits@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb6/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#1635] / [i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl4/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-glk4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-tglb8/igt@kms_flip@blocking-wf_vblank@a-edp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-tglb5/igt@kms_flip@blocking-wf_vblank@a-edp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#155]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-iclb5/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-iclb3/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> ([i915#2424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9149/shard-apl2/igt@kms_content_protection@srm.html">FAIL</a> ([fdo#110321] / [i915#1635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18718/shard-apl7/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319] / [i915#1635])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          [DMESG-FAIL][165] ([i915#1982]) -&gt; [DMESG-WARN][166] ([i915#1982</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4318537047566016169==--

--===============1097052821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1097052821==--
