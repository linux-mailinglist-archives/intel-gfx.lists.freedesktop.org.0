Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A85339657
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F846E5A2;
	Fri, 12 Mar 2021 18:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39E406E5A2;
 Fri, 12 Mar 2021 18:25:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 328F2A01BB;
 Fri, 12 Mar 2021 18:25:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 12 Mar 2021 18:25:09 -0000
Message-ID: <161557350919.8355.2233198980090737891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?ault_request/fence_expiry_+_watchdog?=
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
Content-Type: multipart/mixed; boundary="===============0014698265=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0014698265==
Content-Type: multipart/alternative;
 boundary="===============1971874447744910381=="

--===============1971874447744910381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Default request/fence expiry + watchdog
URL   : https://patchwork.freedesktop.org/series/87930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9854_full -> Patchwork_19789_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19789_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19789_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19789_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb8/igt@gem_exec_balancer@bonded-true-hang.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][6] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb7/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_hangman@engine-hang@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@i915_hangman@engine-hang@rcs0.html

  * igt@i915_hangman@error-state-capture@bcs0:
    - shard-snb:          [PASS][8] -> [FAIL][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb2/igt@i915_hangman@error-state-capture@bcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb6/igt@i915_hangman@error-state-capture@bcs0.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - shard-glk:          [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk1/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk9/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
    - shard-apl:          NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl1/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
    - shard-kbl:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl7/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
    - shard-skl:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl4/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-tglb:         [FAIL][17] ([i915#2389]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb3/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs0:
    - shard-snb:          [FAIL][19] ([i915#2389]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb5/igt@gem_exec_reloc@basic-wide-active@vcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb5/igt@gem_exec_reloc@basic-wide-active@vcs0.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          [INCOMPLETE][21] ([i915#2502] / [i915#2667]) -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-apl7/igt@gem_userptr_blits@vma-merge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl2/igt@gem_userptr_blits@vma-merge.html
    - shard-iclb:         [INCOMPLETE][23] ([i915#2502] / [i915#2667]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-iclb4/igt@gem_userptr_blits@vma-merge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          [INCOMPLETE][25] ([i915#2502] / [i915#2667]) -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk9/igt@gem_userptr_blits@vma-merge.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk6/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          [INCOMPLETE][27] ([i915#2502] / [i915#2667]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl6/igt@gem_userptr_blits@vma-merge.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         [INCOMPLETE][29] ([i915#2502] / [i915#2667]) -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb2/igt@gem_userptr_blits@vma-merge.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          [INCOMPLETE][31] ([i915#2502] / [i915#2667]) -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl6/igt@gem_userptr_blits@vma-merge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl7/igt@gem_userptr_blits@vma-merge.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9854_full and Patchwork_19789_full:

### New IGT tests (4) ###

  * igt@gem_watchdog@default-physical:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.00, 1.26] s

  * igt@gem_watchdog@default-virtual:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.10, 1.26] s

  * igt@gem_watchdog@watchdog-physical:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.00, 0.84] s

  * igt@gem_watchdog@watchdog-virtual:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.09, 0.79] s

  

Known issues
------------

  Here are the changes found in Patchwork_19789_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@feature_discovery@chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@feature_discovery@chamelium.html

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#1839])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@feature_discovery@display-4x.html

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#1888] / [i915#3160])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk6/igt@gem_create@create-clear.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk8/igt@gem_create@create-clear.html
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#3160])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl9/igt@gem_create@create-clear.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl1/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][40] ([i915#3002])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@gem_create@create-massive.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][41] ([i915#3002])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#1099]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][43] -> [TIMEOUT][44] ([i915#2369] / [i915#3063])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][45] -> [INCOMPLETE][46] ([i915#1895] / [i915#3031])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-iclb6/igt@gem_exec_balancer@hang.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][47] -> [FAIL][48] ([i915#2846])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
    - shard-skl:          NOTRUN -> [FAIL][49] ([i915#2846])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][50] -> [FAIL][51] ([i915#2842])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#2842])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][54] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109313])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][56] ([i915#2389]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][57] ([i915#2389]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][58] -> [DMESG-WARN][59] ([i915#1610] / [i915#2803])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][60] -> [INCOMPLETE][61] ([i915#155])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
    - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#198])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@gem_exec_suspend@basic-s3.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][64] -> [DMESG-WARN][65] ([i915#118] / [i915#95]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#768]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109312])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb1/igt@gem_softpin@evict-snoop.html
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109312])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][69] ([i915#3002])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          NOTRUN -> [INCOMPLETE][70] ([i915#198])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl9/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109289]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#112306]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][73] ([i915#1436] / [i915#716])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +347 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#112306]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][76] -> [INCOMPLETE][77] ([i915#2880])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110892])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp.html
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111644] / [i915#1397] / [i915#2411])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109506] / [i915#2411])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@i915_pm_rpm@pc8-residency.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#404])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#1769])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#1769])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#110725] / [fdo#111614])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#111614]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110723]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#2705]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@kms_big_joiner@basic.html
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2705])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl2/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2705]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl1/igt@kms_big_joiner@invalid-modeset.html
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2705])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_big_joiner@invalid-modeset.html
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2705])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_big_joiner@invalid-modeset.html
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2705])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111304])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [FAIL][97] ([i915#1149] / [i915#315])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_color@pipe-a-ctm-0-25.html
    - shard-tglb:         NOTRUN -> [FAIL][98] ([i915#1149] / [i915#315])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][99] ([i915#1149]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-b-degamma:
    - shard-tglb:         NOTRUN -> [FAIL][100] ([i915#1149]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#109284] / [fdo#111827]) +13 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
    - shard-glk:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][106] ([i915#1319])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109300] / [fdo#111066])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb8/igt@kms_content_protection@content_type_change.html
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#111828])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [PASS][109] -> [FAIL][110] ([i915#54]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109278] / [fdo#109279])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109279]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271]) +84 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl1/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109278]) +8 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][116] ([i915#2346] / [i915#533])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][117] ([IGT#6])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         NOTRUN -> [FAIL][118] ([i915#2346])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl3/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#111825]) +33 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         NOTRUN -> [FAIL][121] ([i915#2122])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][122] -> [FAIL][123] ([i915#2122])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][124] -> [DMESG-WARN][125] ([i915#180]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2642])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2642])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#2587])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271]) +136 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109280]) +14 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@static-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#1187])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_hdr@static-toggle.html

  * igt@kms_lease@simple_lease:
    - shard-skl:          [PASS][132] -> [SKIP][133] ([fdo#109271]) +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl2/igt@kms_lease@simple_lease.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl6/igt@kms_lease@simple_lease.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#533])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-tglb:         [PASS][135] -> [INCOMPLETE][136] ([i915#1436] / [i915#1982])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][137] -> [DMESG-WARN][138] ([i915#180] / [i915#533])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    -

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html

--===============1971874447744910381==
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
<tr><td><b>Series:</b></td><td>Default request/fence expiry + watchdog</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87930/">https://patchwork.freedesktop.org/series/87930/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9854_full -&gt; Patchwork_19789_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19789_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19789_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19789_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb8/igt@gem_exec_balancer@bonded-true-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@gem_exec_balancer@bonded-true-hang.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@i915_hangman@engine-hang@rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@bcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb2/igt@i915_hangman@error-state-capture@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb6/igt@i915_hangman@error-state-capture@bcs0.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-functional:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk1/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk9/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">FAIL</a></p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl1/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl7/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl4/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb3/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb5/igt@gem_exec_reloc@basic-wide-active@vcs0.html">FAIL</a> ([i915#2389]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb5/igt@gem_exec_reloc@basic-wide-active@vcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-apl7/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl2/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-iclb4/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk9/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk6/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb2/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl6/igt@gem_userptr_blits@vma-merge.html">INCOMPLETE</a> ([i915#2502] / [i915#2667]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl7/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9854_full and Patchwork_19789_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.10, 1.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@watchdog-physical:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 0.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@watchdog-virtual:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.09, 0.79] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19789_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@feature_discovery@chamelium.html">SKIP</a> ([fdo#111827])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@feature_discovery@chamelium.html">SKIP</a> ([fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk6/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk8/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl9/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl1/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-iclb6/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb4/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#3031])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109313])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#155])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#198])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb1/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl9/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@gen3_render_tiledy_blits.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@gen9_exec_parse@allowed-single.html">SKIP</a> ([fdo#112306]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +347 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([fdo#112306]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#2880])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@i915_pm_rpm@pc8-residency.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#404])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl2/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_color@pipe-a-ctm-0-25.html">FAIL</a> ([i915#1149] / [i915#315])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_color@pipe-a-ctm-0-25.html">FAIL</a> ([i915#1149] / [i915#315])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_color@pipe-a-degamma.html">FAIL</a> ([i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@kms_color@pipe-b-degamma.html">FAIL</a> ([i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-snb2/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +13 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb8/igt@kms_content_protection@content_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_content_protection@content_type_change.html">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl1/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html">SKIP</a> ([fdo#109271]) +84 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html">SKIP</a> ([fdo#109278]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl3/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#111825]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +136 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb6/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@simple_lease:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-skl2/igt@kms_lease@simple_lease.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-skl6/igt@kms_lease@simple_lease.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-tglb1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">INCOMPLETE</a> ([i915#1436] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9854/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19789/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> ([i915#180] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:<br />
    -</p>
</li>
</ul>

</body>
</html>

--===============1971874447744910381==--

--===============0014698265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0014698265==--
