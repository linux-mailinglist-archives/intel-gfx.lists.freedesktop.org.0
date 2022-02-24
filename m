Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A854C29B7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 11:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A82310FA16;
	Thu, 24 Feb 2022 10:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E574910FA16;
 Thu, 24 Feb 2022 10:41:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E11D0A008A;
 Thu, 24 Feb 2022 10:41:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8546816975953950378=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 24 Feb 2022 10:41:04 -0000
Message-ID: <164569926488.32675.15424031827054752290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_GPU_utilisation_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8546816975953950378==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client GPU utilisation (rev2)
URL   : https://patchwork.freedesktop.org/series/100573/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11276_full -> Patchwork_22370_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22370_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22370_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22370_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@drm_fdinfo@busy@vcs0} (NEW):
    - shard-snb:          NOTRUN -> [FAIL][1] +20 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-snb4/igt@drm_fdinfo@busy@vcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl3/igt@gem_exec_suspend@basic-s0@smem.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11276_full and Patchwork_22370_full:

### New IGT tests (45) ###

  * igt@drm_fdinfo@all-busy-check-all:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.52, 0.62] s

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [0.62, 0.73] s

  * igt@drm_fdinfo@basics:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@drm_fdinfo@busy:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.51, 0.57] s

  * igt@drm_fdinfo@busy-check-all@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.51, 0.59] s

  * igt@drm_fdinfo@busy-check-all@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.51, 1.01] s

  * igt@drm_fdinfo@busy-check-all@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.52, 0.54] s

  * igt@drm_fdinfo@busy-check-all@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.51, 0.57] s

  * igt@drm_fdinfo@busy-hang:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-idle:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-idle-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-idle-check-all@bcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.61, 0.63] s

  * igt@drm_fdinfo@busy-idle-check-all@rcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.62, 1.11] s

  * igt@drm_fdinfo@busy-idle-check-all@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@busy-idle@bcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.61, 0.64] s

  * igt@drm_fdinfo@busy-idle@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@busy-idle@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.62, 1.11] s

  * igt@drm_fdinfo@busy-idle@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.62, 0.64] s

  * igt@drm_fdinfo@busy-idle@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@busy@bcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.51, 0.60] s

  * igt@drm_fdinfo@busy@rcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.52, 0.58] s

  * igt@drm_fdinfo@busy@vcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.52, 1.01] s

  * igt@drm_fdinfo@busy@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.52, 0.58] s

  * igt@drm_fdinfo@idle:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@idle@bcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.50, 0.51] s

  * igt@drm_fdinfo@idle@rcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@idle@vcs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.50, 0.51] s

  * igt@drm_fdinfo@idle@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@isolation@bcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.51, 0.60] s

  * igt@drm_fdinfo@isolation@rcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.51, 0.58] s

  * igt@drm_fdinfo@isolation@vcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.52, 1.01] s

  * igt@drm_fdinfo@isolation@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.52] s

  * igt@drm_fdinfo@isolation@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.52, 0.58] s

  * igt@drm_fdinfo@most-busy-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.51, 0.56] s

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.52, 0.62] s

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - Statuses : 1 fail(s) 3 pass(s)
    - Exec time: [0.51, 0.56] s

  * igt@drm_fdinfo@most-busy-check-all@vecs0:
    - Statuses : 3 pass(s)
    - Exec time: [0.52, 0.57] s

  * igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.66] s

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.62, 0.73] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.68] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.62, 0.68] s

  

Known issues
------------

  Here are the changes found in Patchwork_22370_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) ([i915#5032])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl10/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][47] ([i915#4991])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#1099])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-snb7/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][51] ([i915#5076])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][52] ([i915#3371])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][53] ([i915#2842]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][54] -> [FAIL][55] ([i915#2842]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842]) +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-kbl:          NOTRUN -> [FAIL][57] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109283])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#112283])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_exec_params@secure-non-root.html
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#112283])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#4613]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk7/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-apl8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][68] ([i915#2658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_pread@exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][69] ([i915#2658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4270])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#4270]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#768]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_sync@basic-store-each:
    - shard-skl:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@gem_sync@basic-store-each.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#110542])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_userptr_blits@coherency-sync.html
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109290])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3323])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#2527] / [i915#2856]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2856]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb3/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][80] ([i915#454])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl6/igt@i915_pm_dc@dc6-dpms.html
    - shard-skl:          NOTRUN -> [FAIL][81] ([i915#454])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/igt@i915_pm_dc@dc6-dpms.html
    - shard-tglb:         NOTRUN -> [FAIL][82] ([i915#454])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][83] -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][87] ([i915#2681] / [i915#2684])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111644] / [i915#1397] / [i915#2411])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@i915_pm_rpm@dpms-non-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#110892])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109303])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][91] ([i915#2373])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][92] ([i915#1759])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@i915_selftest@live@gt_pm.html
    - shard-skl:          NOTRUN -> [DMESG-FAIL][93] ([i915#1886] / [i915#2291])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][94] ([i915#3921])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#4765])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb5/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111614]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb4/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][98] -> [DMESG-WARN][99] ([i915#118])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][100] ([i915#3743])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3777])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3777]) +4 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3777]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3777]) +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#111615]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#3689]) +7 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3886]) +17 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#111615] / [i915#3689]) +7 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3886]) +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#3886]) +7 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#3886]) +11 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278] / [i915#3886]) +7 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#3689] / [i915#3886]) +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +131 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-apl6/igt@kms_cdclk@mode-transition.html
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#3742])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-glk:          NOTRUN -> [SKIP][116] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-glk8/igt@kms_chamelium@hdmi-aspect-ratio.html
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109278] / [i915#1149]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109284] / [fdo#111827]) +15 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][123] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [PASS][125] -> [SKIP][126] ([fdo#109271]) +12 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][127] ([fdo#109271]) +110 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][129] ([i915#180]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109278]) +24 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#3319]) +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/index.html

--===============8546816975953950378==
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
<tr><td><b>Series:</b></td><td>Per client GPU utilisation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100573/">https://patchwork.freedesktop.org/series/100573/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22370/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11276_full -&gt; Patchwork_22370_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22370_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22370_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22370_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@drm_fdinfo@busy@vcs0} (NEW):</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-snb4/igt@drm_fdinfo@busy@vcs0.html">FAI=
L</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl7/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/s=
hard-skl3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11276_full and Patchwork_2=
2370_full:</p>
<h3>New IGT tests (45)</h3>
<ul>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.52, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [0.62, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@basics:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.51, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.51, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.51, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.52, 0.54] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.51, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.61, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.62, 1.11] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.61, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.62, 1.11] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.62, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.51, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.52, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.52, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.52, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@bcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.50, 0.51] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vcs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.50, 0.51] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@bcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.51, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.51, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.52, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.52, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.51, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.52, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 3 pass(s)</li>
<li>Exec time: [0.51, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.52, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.66] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.62, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.62, 0.68] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22370_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11276/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11276/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11276/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl8/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/sh=
ard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11276/shard-skl7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11276/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_11276/shard-skl5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1127=
6/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11276/shard-skl10/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-=
skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_11276/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11276/shard-skl1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl2/boot.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22370/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22370/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl10/boot.html">PASS</a>) (=
[i915#5032])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22370/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-=
WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-snb7/igt@gem_ctx_persistence@file.html"=
>SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_exec_balancer@parallel.htm=
l">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@gem_exec_capture@pi@rcs0.html=
">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@gem_exec_fair@basic-none-vip@=
rcs0.html">FAIL</a> ([i915#2842]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/sh=
ard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.=
html">FAIL</a> ([i915#2842]) +5 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.h=
tml">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2237=
0/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl7/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@gem_lmem_swapping@parallel-ra=
ndom-engines.html">SKIP</a> ([i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-glk7/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-apl8/igt@gem_lmem_swapping@parallel-rand=
om-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-skl1/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-kbl4/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@gem_pxp@create-regular-contex=
t-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@gem_pxp@protected-encrypted-s=
rc-copy-not-readible.html">SKIP</a> ([i915#4270]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb6/igt@gem_render_copy@yf-tiled-mc-c=
cs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-each:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl7/igt@gem_sync@basic-store-each.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-=
skl10/igt@gem_sync@basic-store-each.html">DMESG-WARN</a> ([i915#1982]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb1/igt@gem_userptr_blits@coherency-sy=
nc.html">SKIP</a> ([fdo#110542])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-iclb5/igt@gem_userptr_blits@coherency-sy=
nc.html">SKIP</a> ([fdo#109290])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@gen9_exec_parse@basic-rejecte=
d-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb3/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-kbl6/igt@i915_pm_dc@dc6-dpms.html">FAIL<=
/a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-skl6/igt@i915_pm_dc@dc6-dpms.html">FAIL<=
/a> ([i915#454])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11276/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-iclb3/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11276/shard-skl4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370/shard-skl6/igt=
@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb1/igt@i915_pm_rpm@dpms-non-lpsp.html=
">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-iclb2/igt@i915_pm_rpm@dpms-non-lpsp.html=
">SKIP</a> ([fdo#110892])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@i915_selftest@live@gt_lrc.htm=
l">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb5/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1759])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-skl4/igt@i915_selftest@live@gt_pm.html">=
DMESG-FAIL</a> ([i915#1886] / [i915#2291])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-snb4/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb5/igt@kms_atomic@atomic_plane_damag=
e.html">SKIP</a> ([i915#4765])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb4/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22370=
/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i91=
5#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_ccs@pipe-a-bad-pixel-form=
at-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +17 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +7 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) =
+5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-skl2/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb1/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +7 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +5 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-apl6/igt@kms_cdclk@mode-transition.html"=
>SKIP</a> ([fdo#109271]) +131 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-tglb1/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([i915#3742])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-glk8/igt@kms_chamelium@hdmi-aspect-ratio=
.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-skl9/igt@kms_chamelium@hdmi-aspect-ratio=
.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb2/igt@kms_color@pipe-d-degamma.html=
">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb2/igt@kms_color_chamelium@pipe-b-ct=
m-0-75.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +7 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22370/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-=
0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb8/igt@kms_color_chamelium@pipe-d-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11276/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22370/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.ht=
ml">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-2=
56x85-sliding.html">SKIP</a> ([fdo#109271]) +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-=
32x10-rapid-movement.html">SKIP</a> ([fdo#109278]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22370/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-onscre">SKIP</a> ([i915#3319]) +3 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8546816975953950378==--
