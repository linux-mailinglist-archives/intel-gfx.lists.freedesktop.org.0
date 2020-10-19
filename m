Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F102292A81
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD566E9F7;
	Mon, 19 Oct 2020 15:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 672FF6E9F7;
 Mon, 19 Oct 2020 15:33:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F226A0091;
 Mon, 19 Oct 2020 15:33:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 19 Oct 2020 15:33:46 -0000
Message-ID: <160312162634.32022.7341857747515776514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev10=29?=
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
Content-Type: multipart/mixed; boundary="===============1400630552=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1400630552==
Content-Type: multipart/alternative;
 boundary="===============8431844763995684290=="

--===============8431844763995684290==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev10)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9162_full -> Patchwork_18730_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18730_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18730_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18730_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][1] -> [TIMEOUT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-kbl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl1/igt@gem_exec_whisper@basic-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][5] -> [TIMEOUT][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          NOTRUN -> [TIMEOUT][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][9] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:
    - shard-snb:          NOTRUN -> [FAIL][10] +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:
    - shard-kbl:          [PASS][11] -> [FAIL][12] +16 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt:
    - shard-skl:          [PASS][13] -> [FAIL][14] +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:
    - shard-snb:          [PASS][15] -> [FAIL][16] +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
    - shard-iclb:         [PASS][17] -> [FAIL][18] +16 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html

  * igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:
    - shard-glk:          [PASS][19] -> [FAIL][20] +17 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:
    - shard-hsw:          [PASS][21] -> [FAIL][22] +12 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:
    - shard-tglb:         [PASS][23] -> [FAIL][24] +16 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html

  * igt@gem_userptr_blits@readonly-mmap-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][25] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         [PASS][26] -> [SKIP][27] +6 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         [PASS][28] -> [SKIP][29] +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-vga1-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-vga1-hdmi-a1.html

  
#### Warnings ####

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglb:         [SKIP][31] ([fdo#110542]) -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html
    - shard-iclb:         [SKIP][33] ([fdo#109290]) -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglb:         [SKIP][35] ([fdo#110426] / [i915#1704]) -> [SKIP][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb3/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-iclb:         [SKIP][37] ([fdo#110426] / [i915#1704]) -> [SKIP][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@kms_plane_cursor@pipe-d-primary-size-128:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb2/igt@kms_plane_cursor@pipe-d-primary-size-128.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb7/igt@kms_plane_cursor@pipe-d-primary-size-128.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][41] -> ([FAIL][42], [FAIL][43]) ([i915#2439])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl1/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         [FAIL][44] -> ([FAIL][45], [FAIL][46]) ([i915#2439])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb4/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][47], [FAIL][48]) ([i915#1436] / [i915#2029] / [i915#2439]) -> ([FAIL][49], [FAIL][50], [FAIL][51]) ([i915#1611] / [i915#1814] / [i915#2029] / [i915#2439])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl3/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@userptr}:
    - shard-glk:          [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_ctx_persistence@userptr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk6/igt@gem_ctx_persistence@userptr.html
    - shard-tglb:         [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb8/igt@gem_ctx_persistence@userptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb1/igt@gem_ctx_persistence@userptr.html
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@gem_ctx_persistence@userptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@gem_ctx_persistence@userptr.html
    - shard-iclb:         [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb3/igt@gem_ctx_persistence@userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@gem_ctx_persistence@userptr.html

  * {igt@gem_exec_parallel@engines@userptr}:
    - shard-skl:          [PASS][60] -> [FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@gem_exec_parallel@engines@userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@gem_exec_parallel@engines@userptr.html
    - shard-kbl:          [PASS][62] -> [INCOMPLETE][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl6/igt@gem_exec_parallel@engines@userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl1/igt@gem_exec_parallel@engines@userptr.html

  * {igt@gem_exec_parallel@userptr@bcs0}:
    - shard-glk:          [PASS][64] -> [FAIL][65] +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_exec_parallel@userptr@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_parallel@userptr@bcs0.html

  * {igt@gem_exec_parallel@userptr@rcs0}:
    - shard-hsw:          [PASS][66] -> [FAIL][67] +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw6/igt@gem_exec_parallel@userptr@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw6/igt@gem_exec_parallel@userptr@rcs0.html
    - shard-snb:          [PASS][68] -> [FAIL][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html

  * {igt@gem_exec_parallel@userptr@vcs0}:
    - shard-iclb:         [PASS][70] -> [FAIL][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_exec_parallel@userptr@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_exec_parallel@userptr@vcs0.html

  * {igt@gem_exec_parallel@userptr@vcs1}:
    - shard-kbl:          [PASS][72] -> [FAIL][73] +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@gem_exec_parallel@userptr@vcs1.html
    - shard-iclb:         NOTRUN -> [FAIL][74]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_exec_parallel@userptr@vcs1.html

  * {igt@gem_exec_parallel@userptr@vecs0}:
    - shard-tglb:         [PASS][75] -> [FAIL][76] +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb2/igt@gem_exec_parallel@userptr@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html

  * {igt@gen9_exec_parse@bb-large}:
    - shard-skl:          [SKIP][77] ([fdo#109271]) -> [FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@gen9_exec_parse@bb-large.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@gen9_exec_parse@bb-large.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-skl:          [FAIL][79] ([i915#2521]) -> [DMESG-FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@prime_vgem@basic-userptr}:
    - shard-tglb:         [PASS][81] -> [SKIP][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@prime_vgem@basic-userptr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb3/igt@prime_vgem@basic-userptr.html
    - shard-iclb:         [PASS][83] -> [SKIP][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@prime_vgem@basic-userptr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb7/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18730_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-hsw:          [PASS][85] -> [TIMEOUT][86] ([i915#1976])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@gem_eio@in-flight-contexts-10ms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][87] -> [FAIL][88] ([i915#1635] / [i915#2389]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2389]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [PASS][91] -> [DMESG-WARN][92] ([i915#118] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_exec_whisper@basic-normal.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][93] -> [FAIL][94] ([i915#644])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-apl:          [PASS][95] -> [FAIL][96] ([i915#1635] / [i915#2356])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@gem_sync@basic-store-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl8/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@access-control:
    - shard-skl:          [PASS][97] -> [SKIP][98] ([fdo#109271]) +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@gem_userptr_blits@access-control.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl1/igt@gem_userptr_blits@access-control.html
    - shard-snb:          [PASS][99] -> [SKIP][100] ([fdo#109271]) +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb5/igt@gem_userptr_blits@access-control.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb7/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:
    - shard-hsw:          [PASS][101] -> [FAIL][102] ([i915#1888]) +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:
    - shard-apl:          [PASS][103] -> [FAIL][104] ([i915#1635]) +16 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html

  * igt@gem_userptr_blits@relocations:
    - shard-glk:          [PASS][105] -> [SKIP][106] ([fdo#109271]) +9 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk5/igt@gem_userptr_blits@relocations.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk4/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [PASS][107] -> [SKIP][108] ([fdo#109271] / [i915#1635]) +9 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-kbl:          [PASS][109] -> [SKIP][110] ([fdo#109271]) +8 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-hsw:          [PASS][111] -> [SKIP][112] ([fdo#109271]) +7 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][113] -> [DMESG-WARN][114] ([i915#1982]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@i915_module_load@reload.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb3/igt@i915_module_load@reload.html
    - shard-iclb:         [PASS][115] -> [DMESG-WARN][116] ([i915#1982]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@i915_module_load@reload.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb7/igt@i915_module_load@reload.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-skl:          [PASS][117] -> [DMESG-WARN][118] ([i915#1982]) +7 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render:
    - shard-kbl:          [PASS][119] -> [DMESG-WARN][120] ([i915#1982])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][121] -> [INCOMPLETE][122] ([i915#155])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#1188])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][125] -> [DMESG-FAIL][126] ([fdo#108145] / [i915#1982])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][127] -> [FAIL][128] ([fdo#108145] / [i915#265])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109441]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][131] -> [FAIL][132] ([i915#1635] / [i915#31])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl3/igt@kms_setmode@basic.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-apl:          [PASS][133] -> [DMESG-WARN][134] ([i915#1635] / [i915#1982]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@kms_vblank@pipe-c-wait-idle-hang.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@hotrebind}:
    - shard-tglb:         [DMESG-WARN][135] ([i915#1982]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb2/igt@core_hotunplug@hotrebind.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb8/igt@core_hotunplug@hotrebind.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][137] ([i915#118] / [i915#95]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk2/igt@gem_exec_whisper@basic-contexts.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_tiled_blits@basic:
    - shard-snb:          [FAIL][139] -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb5/igt@gem_tiled_blits@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb2/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][141] ([i915#1519]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-apl:          [DMESG-WARN][143] ([i915#1635] / [i915#1982]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl8/igt@i915_pm_rpm@fences-dpms.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl6/igt@i915_pm_rpm@fences-dpms.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][145] ([i915#2521]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][147] ([i915#2346]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [DMESG-WARN][149] ([i915#1982]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][151] ([i915#1982]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][153] ([i915#2055]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][155] ([i915#2122]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@wf_vblank-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][157] ([i915#1982]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_flip@wf_vblank-ts-check@a-dp1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_flip@wf_vblank-ts-check@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][159] ([fdo#108145] / [i915#1982]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][161] ([fdo#109441]) -> [PASS][162] +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][163] ([i915#198]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html

--===============8431844763995684290==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9162_full -&gt; Patchwork_18730_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18730_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18730_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18730_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@gem_exec_nop@basic-sequential.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb5/igt@gem_exec_nop@basic-sequential.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl1/igt@gem_exec_whisper@basic-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@gem_exec_whisper@basic-contexts.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@uc.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl5/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@gem_userptr_blits@map-fixed-invalidate-gup@gtt.html">FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wb:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +12 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_userptr_blits@map-fixed-invalidate-gup@wb.html">FAIL</a> +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-gup@wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_userptr_blits@map-fixed-invalidate-gup@wc.html">FAIL</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@wb.html">FAIL</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb7/igt@gem_userptr_blits@readonly-mmap-unsync.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#110542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb1/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([fdo#109290]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb3/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-128:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb2/igt@kms_plane_cursor@pipe-d-primary-size-128.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb7/igt@kms_plane_cursor@pipe-d-primary-size-128.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl1/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb4/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb1/igt@runner@aborted.html">FAIL</a>) ([i915#2439])</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#2029] / [i915#2439]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@runner@aborted.html">FAIL</a>) ([i915#1611] / [i915#1814] / [i915#2029] / [i915#2439])</p>
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
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk6/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb8/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb1/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb3/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb3/igt@gem_ctx_persistence@userptr.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl6/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl1/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@bcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_exec_parallel@userptr@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_parallel@userptr@bcs0.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@rcs0}:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw6/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw6/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +4 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb4/igt@gem_exec_parallel@userptr@rcs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb8/igt@gem_exec_parallel@userptr@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_exec_parallel@userptr@vcs0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vcs1}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl2/igt@gem_exec_parallel@userptr@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl4/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb4/igt@gem_exec_parallel@userptr@vcs1.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_parallel@userptr@vecs0}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb2/igt@gem_exec_parallel@userptr@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb6/igt@gem_exec_parallel@userptr@vecs0.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gen9_exec_parse@bb-large}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@gen9_exec_parse@bb-large.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@kms_async_flips@async-flip-with-page-flip-events.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb3/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb7/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18730_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#1976])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#1635] / [i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk6/igt@gem_exec_whisper@basic-normal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_whisper@basic-normal.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644])</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@gem_sync@basic-store-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl8/igt@gem_sync@basic-store-all.html">FAIL</a> ([i915#1635] / [i915#2356])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl9/igt@gem_userptr_blits@access-control.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl1/igt@gem_userptr_blits@access-control.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb5/igt@gem_userptr_blits@access-control.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb7/igt@gem_userptr_blits@access-control.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@wc.html">FAIL</a> ([i915#1888]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-gup@wc.html">FAIL</a> ([i915#1635]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk5/igt@gem_userptr_blits@relocations.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk4/igt@gem_userptr_blits@relocations.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl7/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([fdo#109271] / [i915#1635]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb3/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb7/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">DMESG-WARN</a> ([i915#1982]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> ([i915#155])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> ([fdo#108145] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl6/igt@kms_setmode@basic.html">FAIL</a> ([i915#1635] / [i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-idle-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl2/igt@kms_vblank@pipe-c-wait-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl3/igt@kms_vblank@pipe-c-wait-idle-hang.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@hotrebind}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-tglb2/igt@core_hotunplug@hotrebind.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-tglb8/igt@core_hotunplug@hotrebind.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-glk2/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-glk2/igt@gem_exec_whisper@basic-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-snb5/igt@gem_tiled_blits@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-snb2/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-apl8/igt@i915_pm_rpm@fences-dpms.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-apl6/igt@i915_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw4/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> ([i915#2055]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-kbl7/igt@kms_flip@wf_vblank-ts-check@a-dp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-kbl6/igt@kms_flip@wf_vblank-ts-check@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">DMESG-FAIL</a> ([fdo#108145] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18730/shard-skl">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============8431844763995684290==--

--===============1400630552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1400630552==--
