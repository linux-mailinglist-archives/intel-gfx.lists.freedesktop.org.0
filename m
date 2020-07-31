Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A899C234BD4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 21:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E860E6EB49;
	Fri, 31 Jul 2020 19:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06D936EB49;
 Fri, 31 Jul 2020 19:58:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F368BA363D;
 Fri, 31 Jul 2020 19:58:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 31 Jul 2020 19:58:33 -0000
Message-ID: <159622551395.10472.10514238205722289606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200731134553.156492-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200731134553.156492-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_timeline_semaphore_support?=
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
Content-Type: multipart/mixed; boundary="===============1902546656=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1902546656==
Content-Type: multipart/alternative;
 boundary="===============3773692531164567139=="

--===============3773692531164567139==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: timeline semaphore support
URL   : https://patchwork.freedesktop.org/series/80146/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8822_full -> Patchwork_18286_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18286_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18286_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18286_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@gem_exec_fence@syncobj-backward-timeline-chain-engines} (NEW):
    - shard-glk:          NOTRUN -> [DMESG-WARN][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk7/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html
    - shard-iclb:         NOTRUN -> [DMESG-WARN][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * {igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines} (NEW):
    - shard-tglb:         NOTRUN -> [DMESG-WARN][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb6/igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines.html

  * {igt@gem_exec_fence@syncobj-timeline-wait} (NEW):
    - shard-tglb:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb7/igt@gem_exec_fence@syncobj-timeline-wait.html
    - shard-skl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl7/igt@gem_exec_fence@syncobj-timeline-wait.html
    - shard-glk:          NOTRUN -> [FAIL][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk1/igt@gem_exec_fence@syncobj-timeline-wait.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html

  * {igt@syncobj_timeline@device-submit-unordered} (NEW):
    - shard-snb:          NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-snb5/igt@syncobj_timeline@device-submit-unordered.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][10] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@syncobj_timeline@device-submit-unordered.html
    - shard-hsw:          NOTRUN -> [DMESG-WARN][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw8/igt@syncobj_timeline@device-submit-unordered.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][12] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@syncobj_timeline@device-submit-unordered.html

  * {igt@syncobj_timeline@reset-during-wait-for-submit} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@syncobj_timeline@reset-during-wait-for-submit.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8822_full and Patchwork_18286_full:

### New IGT tests (132) ###

  * igt@gem_exec_fence@invalid-timeline-fence-array:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - Statuses : 6 dmesg-warn(s) 2 skip(s)
    - Exec time: [0.0, 0.30] s

  * igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:
    - Statuses : 6 dmesg-warn(s) 2 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@gem_exec_fence@syncobj-timeline-chain-engines:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.24] s

  * igt@gem_exec_fence@syncobj-timeline-export:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-flags:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_fence@syncobj-timeline-invalid-wait:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_fence@syncobj-timeline-repeat:
    - Statuses : 7 pass(s)
    - Exec time: [0.22, 3.10] s

  * igt@gem_exec_fence@syncobj-timeline-signal:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_fence@syncobj-timeline-unused-fence:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - Statuses : 4 fail(s) 4 pass(s)
    - Exec time: [0.00, 0.36] s

  * igt@syncobj_timeline@32bits-limit:
    - Statuses : 8 timeout(s)
    - Exec time: [120.29, 122.00] s

  * igt@syncobj_timeline@device-signal-unordered:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@device-submit-unordered:
    - Statuses : 8 dmesg-warn(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.12] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-all-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-multi-wait-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-all-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@etime-single-wait-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@host-signal-ordered:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@host-signal-points:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.07] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
    - Statuses : 1 timeout(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@invalid-query-bad-pad:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-query-one-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-query-zero-handles:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-bad-pad:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-illegal-point:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-signal-one-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-signal-zero-handles:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-single-wait-unsubmitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-transfer-bad-pad:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@invalid-wait-bad-flags:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-wait-illegal-handle:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_timeline@multi-wait-all-available-signaled:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-for-submit-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-all-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-available-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@syncobj_timeline@multi-wait-submitted-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@reset-during-wait-for-submit:
    - Statuses : 2 fail(s) 6 pass(s)
    - Exec time: [0.10, 0.31] s

  * igt@syncobj_timeline@reset-multiple-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@reset-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@reset-unsignaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal-array:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@signal-point-0:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-available-submitted:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-all-for-submit-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@syncobj_timeline@single-wait-all-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-available-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-available-submitted:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-for-submit-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@single-wait-signaled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@transfer-timeline-point:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_timeline@wait-all-complex:
    - Statuses : 8 pass(s)
    - Exec time: [0.21, 0.23] s

  * igt@syncobj_timeline@wait-all-delayed-signal:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-for-submit-complex:
    - Statuses : 8 pass(s)
    - Exec time: [0.21, 0.23] s

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-for-submit-snapshot:
    - Statuses : 8 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-all-interrupted:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-all-snapshot:
    - Statuses : 8 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-any-complex:
    - Statuses : 8 pass(s)
    - Exec time: [0.06, 0.07] s

  * igt@syncobj_timeline@wait-any-interrupted:
    - Statuses : 6 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-any-snapshot:
    - Statuses : 8 pass(s)
    - Exec time: [0.08, 0.09] s

  * igt@syncobj_timeline@wait-delayed-signal:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-for-submit-complex:
    - Statuses : 8 pass(s)
    - Exec time: [0.06, 0.07] s

  * igt@syncobj_timeline@wait-for-submit-delayed-submit:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@syncobj_timeline@wait-for-submit-snapshot:
    - Statuses : 8 pass(s)
    - Exec time: [0.08, 0.09] s

  

Known issues
------------

  Here are the changes found in Patchwork_18286_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dumb_buffer@map-invalid-size:
    - shard-snb:          [PASS][14] -> [TIMEOUT][15] ([i915#1958] / [i915#2119])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-snb5/igt@dumb_buffer@map-invalid-size.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-snb6/igt@dumb_buffer@map-invalid-size.html
    - shard-hsw:          [PASS][16] -> [TIMEOUT][17] ([i915#1958] / [i915#2119])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw4/igt@dumb_buffer@map-invalid-size.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw6/igt@dumb_buffer@map-invalid-size.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk8/igt@gem_exec_whisper@basic-queues.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk6/igt@gem_exec_whisper@basic-queues.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         [PASS][20] -> [SKIP][21] ([i915#1904])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][22] -> [WARN][23] ([i915#1519])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - shard-skl:          [PASS][24] -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl1/igt@kms_atomic@crtc-invalid-params-fence.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl6/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982]) +72 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [PASS][30] -> [DMESG-WARN][31] ([i915#128])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb5/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1635] / [i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#1635] / [i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][40] -> [DMESG-FAIL][41] ([i915#1982])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][44] -> [DMESG-WARN][45] ([i915#1982]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#49])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#83])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb2/igt@kms_panel_fitting@atomic-fastset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb8/igt@kms_panel_fitting@atomic-fastset.html
    - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#83])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@kms_panel_fitting@atomic-fastset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][52] -> [INCOMPLETE][53] ([i915#1185] / [i915#250])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@kms_psr@psr2_basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-small-buf:
    - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#1722])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb4/igt@perf@polling-small-buf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb3/igt@perf@polling-small-buf.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][58] ([i915#118] / [i915#95]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_exec_whisper@basic-sync:
    - shard-hsw:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw6/igt@gem_exec_whisper@basic-sync.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw4/igt@gem_exec_whisper@basic-sync.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65] +71 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-skl:          [SKIP][66] ([fdo#109271]) -> [PASS][67] +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][68] ([i915#79]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/index.html

--===============3773692531164567139==
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
<tr><td><b>Series:</b></td><td>drm/i915: timeline semaphore support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80146/">https://patchwork.freedesktop.org/series/80146/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8822_full -&gt; Patchwork_18286_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18286_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18286_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18286_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@gem_exec_fence@syncobj-backward-timeline-chain-engines} (NEW):</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk7/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb6/igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fence@syncobj-timeline-wait} (NEW):</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb7/igt@gem_exec_fence@syncobj-timeline-wait.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl7/igt@gem_exec_fence@syncobj-timeline-wait.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk1/igt@gem_exec_fence@syncobj-timeline-wait.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@syncobj_timeline@device-submit-unordered} (NEW):</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-snb5/igt@syncobj_timeline@device-submit-unordered.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@syncobj_timeline@device-submit-unordered.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw8/igt@syncobj_timeline@device-submit-unordered.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@syncobj_timeline@device-submit-unordered.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@syncobj_timeline@reset-during-wait-for-submit} (NEW):</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@syncobj_timeline@reset-during-wait-for-submit.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8822_full and Patchwork_18286_full:</p>
<h3>New IGT tests (132)</h3>
<ul>
<li>
<p>igt@gem_exec_fence@invalid-timeline-fence-array:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>Statuses : 6 dmesg-warn(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:</p>
<ul>
<li>Statuses : 6 dmesg-warn(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-chain-engines:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-export:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-flags:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-invalid-wait:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-repeat:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.22, 3.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-signal:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-unused-fence:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>Statuses : 4 fail(s) 4 pass(s)</li>
<li>Exec time: [0.00, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@32bits-limit:</p>
<ul>
<li>Statuses : 8 timeout(s)</li>
<li>Exec time: [120.29, 122.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-signal-unordered:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-submit-unordered:</p>
<ul>
<li>Statuses : 8 dmesg-warn(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-ordered:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@host-signal-points:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:</p>
<ul>
<li>Statuses : 1 timeout(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-bad-pad:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-one-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-zero-handles:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-bad-pad:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-illegal-point:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-one-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-signal-zero-handles:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-unsubmitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-bad-pad:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-bad-flags:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-illegal-handle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-available-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-submitted-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-during-wait-for-submit:</p>
<ul>
<li>Statuses : 2 fail(s) 6 pass(s)</li>
<li>Exec time: [0.10, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-multiple-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-unsignaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-array:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@signal-point-0:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-available-submitted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-all-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-for-submit-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@single-wait-signaled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-complex:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.21, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-delayed-signal:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-complex:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.21, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-snapshot:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-interrupted:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-snapshot:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-complex:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.06, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-interrupted:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-snapshot:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-delayed-signal:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-complex:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.06, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-delayed-submit:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-for-submit-snapshot:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.08, 0.09] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18286_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dumb_buffer@map-invalid-size:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-snb5/igt@dumb_buffer@map-invalid-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-snb6/igt@dumb_buffer@map-invalid-size.html">TIMEOUT</a> ([i915#1958] / [i915#2119])</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw4/igt@dumb_buffer@map-invalid-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw6/igt@dumb_buffer@map-invalid-size.html">TIMEOUT</a> ([i915#1958] / [i915#2119])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk8/igt@gem_exec_whisper@basic-queues.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk6/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#1904])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1519])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl1/igt@kms_atomic@crtc-invalid-params-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl6/igt@kms_atomic@crtc-invalid-params-fence.html">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">DMESG-WARN</a> ([i915#1982]) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-b-torture-move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb5/igt@kms_cursor_legacy@pipe-b-torture-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb4/igt@kms_cursor_legacy@pipe-b-torture-move.html">DMESG-WARN</a> ([i915#128])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-apl7/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">DMESG-WARN</a> ([i915#1635] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw6/igt@kms_flip@2x-flip-vs-fences-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html">FAIL</a> ([i915#1635] / [i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FAIL</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-tglb2/igt@kms_panel_fitting@atomic-fastset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-tglb8/igt@kms_panel_fitting@atomic-fastset.html">FAIL</a> ([i915#83])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@kms_panel_fitting@atomic-fastset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb8/igt@kms_panel_fitting@atomic-fastset.html">FAIL</a> ([i915#83])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> ([i915#1185] / [i915#250])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb3/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-sync:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-hsw6/igt@gem_exec_whisper@basic-sync.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-hsw4/igt@gem_exec_whisper@basic-sync.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">PASS</a> +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18286/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8822/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-h">FAIL</a> ([i915#79]) -&gt; [PASS][69]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3773692531164567139==--

--===============1902546656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1902546656==--
