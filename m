Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B516F487933
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 15:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A547610FBD8;
	Fri,  7 Jan 2022 14:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 591E610F704;
 Fri,  7 Jan 2022 14:46:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53DF3AADD3;
 Fri,  7 Jan 2022 14:46:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5416373303848597511=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jan 2022 14:46:53 -0000
Message-ID: <164156681330.24389.11024062988524643186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220106165536.57208-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220106165536.57208-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_GPU_stats_=28rev6=29?=
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

--===============5416373303848597511==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client GPU stats (rev6)
URL   : https://patchwork.freedesktop.org/series/92574/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11052_full -> Patchwork_21932_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21932_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@drm_fdinfo@busy@vcs0} (NEW):
    - shard-snb:          NOTRUN -> [FAIL][1] +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-snb4/igt@drm_fdinfo@busy@vcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@api_intel_allocator@standalone:
    - {shard-tglu}:       NOTRUN -> [TIMEOUT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglu-2/igt@api_intel_allocator@standalone.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - {shard-rkl}:        ([PASS][3], [PASS][4]) -> [INCOMPLETE][5] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_parallel@contexts@bcs0:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-rkl-5/igt@gem_exec_parallel@contexts@bcs0.html

  * igt@gem_userptr_blits@stress-mm:
    - {shard-rkl}:        [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-6/igt@gem_userptr_blits@stress-mm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-rkl-5/igt@gem_userptr_blits@stress-mm.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-tglu}:       NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglu-8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - {shard-tglu}:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11052_full and Patchwork_21932_full:

### New IGT tests (52) ###

  * igt@drm_fdinfo@all-busy-check-all:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.51, 0.53] s

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.72] s

  * igt@drm_fdinfo@basics:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.0, 0.03] s

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.51, 0.60] s

  * igt@drm_fdinfo@busy-check-all@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.52, 0.59] s

  * igt@drm_fdinfo@busy-check-all@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.52, 1.01] s

  * igt@drm_fdinfo@busy-check-all@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [0.52] s

  * igt@drm_fdinfo@busy-check-all@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.52, 0.58] s

  * igt@drm_fdinfo@busy-hang:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-hang@bcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.52, 1.10] s

  * igt@drm_fdinfo@busy-hang@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.63, 1.10] s

  * igt@drm_fdinfo@busy-hang@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [1.01, 1.09] s

  * igt@drm_fdinfo@busy-hang@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [1.02, 1.10] s

  * igt@drm_fdinfo@busy-hang@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [1.03, 1.10] s

  * igt@drm_fdinfo@busy-idle-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@busy-idle-check-all@bcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.61, 0.68] s

  * igt@drm_fdinfo@busy-idle-check-all@rcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.62, 0.68] s

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - Statuses : 1 fail(s) 4 pass(s)
    - Exec time: [0.62, 1.11] s

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.63, 0.64] s

  * igt@drm_fdinfo@busy-idle-check-all@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.62, 0.68] s

  * igt@drm_fdinfo@busy-idle@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.62, 0.69] s

  * igt@drm_fdinfo@busy-idle@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.62, 0.73] s

  * igt@drm_fdinfo@busy-idle@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.62, 1.11] s

  * igt@drm_fdinfo@busy-idle@vcs1:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.63] s

  * igt@drm_fdinfo@busy-idle@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.62, 0.69] s

  * igt@drm_fdinfo@busy@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.51, 0.57] s

  * igt@drm_fdinfo@busy@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.52, 0.61] s

  * igt@drm_fdinfo@busy@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.52, 1.01] s

  * igt@drm_fdinfo@busy@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.52] s

  * igt@drm_fdinfo@busy@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.52, 0.58] s

  * igt@drm_fdinfo@idle@bcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@idle@rcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@idle@vcs0:
    - Statuses : 7 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@idle@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.50] s

  * igt@drm_fdinfo@idle@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.50, 0.52] s

  * igt@drm_fdinfo@isolation:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@isolation@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.51, 0.55] s

  * igt@drm_fdinfo@isolation@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.51, 0.53] s

  * igt@drm_fdinfo@isolation@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.52, 1.01] s

  * igt@drm_fdinfo@isolation@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.52] s

  * igt@drm_fdinfo@isolation@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.52, 0.53] s

  * igt@drm_fdinfo@most-busy-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.51, 0.53] s

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.52, 0.62] s

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [0.51, 0.52] s

  * igt@drm_fdinfo@most-busy-check-all@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.51, 0.52] s

  * igt@drm_fdinfo@most-busy-check-all@vecs0:
    - Statuses : 5 pass(s)
    - Exec time: [0.51, 0.52] s

  * igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.71] s

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.72] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs0:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [0.61, 0.72] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.61, 0.63] s

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.61, 0.69] s

  

Known issues
------------

  Here are the changes found in Patchwork_21932_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36]) ([i915#4386]) -> ([PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][62] ([i915#180]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#1099])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-snb7/igt@gem_ctx_persistence@engines-persistence.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#280]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([i915#4525]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][67] ([i915#4547])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl4/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][68] -> [FAIL][69] ([i915#2842]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][70] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][71] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][72] -> [FAIL][73] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-apl:          [PASS][74] -> [FAIL][75] ([i915#2842])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109283])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271]) +71 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl8/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#112283])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb5/igt@gem_exec_params@secure-non-root.html
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#112283])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_exec_params@secure-non-root.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#4613])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#4613])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#4613])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111656])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb3/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#4270])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#4270])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2856])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb8/igt@gen9_exec_parse@bb-start-far.html
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#2527] / [i915#2856])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb8/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][89] ([i915#454])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][90] ([i915#454]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#454])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#4281])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#1937])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111614])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#110725] / [fdo#111614])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          NOTRUN -> [DMESG-WARN][97] ([i915#118])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][98] ([i915#3743]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-iclb:         [PASS][99] -> [FAIL][100] ([i915#1888])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb7/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb1/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][101] -> [DMESG-WARN][102] ([i915#118]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3777])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3777])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +109 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#3886]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3886]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#3886]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3886])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109278] / [i915#3886]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3689] / [i915#3886])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#3689]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271]) +157 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109278]) +11 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#111615] / [i915#3689]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb6/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb5/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][119] -> [DMESG-WARN][120] ([i915#1982])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl5/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109278] / [i915#1149])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb4/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-glk6/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb2/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-snb:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-snb4/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb2/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][127] ([i915#1319]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][128] ([i915#1319])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/igt@kms_content_protection@atomic-dpms.html
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#1063]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@mei_interface:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb3/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid-movement:
    - shard-skl:          [PASS][131] -> [SKIP][132] ([fdo#109271]) +13 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid-movement.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#109279] / [i915#3359]) +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3359])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-snb:          NOTRUN -> [SKIP][136]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/index.html

--===============5416373303848597511==
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
<tr><td><b>Series:</b></td><td>Per client GPU stats (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92574/">https://patchwork.freedesktop.org/series/92574/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21932/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11052_full -&gt; Patchwork_21932_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21932_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>{igt@drm_fdinfo@busy@vcs0} (NEW):<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-snb4/igt@drm_fdinfo@busy@vcs0.html">FAI=
L</a> +23 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@api_intel_allocator@standalone:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglu-2/igt@api_intel_allocator@standalo=
ne.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11052/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11052/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">P=
ASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21932/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">=
INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@contexts@bcs0:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-rkl-5/igt@gem_exec_parallel@contexts@bc=
s0.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-rkl-6/igt@gem_userptr_blits@stress-mm.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/sha=
rd-rkl-5/igt@gem_userptr_blits@stress-mm.html">INCOMPLETE</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglu-8/igt@i915_pm_dc@dc6-psr.html">SKI=
P</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspe=
nd.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21932/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-dpms-su=
spend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11052_full and Patchwork_2=
1932_full:</p>
<h3>New IGT tests (52)</h3>
<ul>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.51, 0.53] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@basics:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.51, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.52, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.52, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.52, 0.58] s</li>
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
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.52, 1.10] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.63, 1.10] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [1.01, 1.09] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.02, 1.10] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.03, 1.10] s</li>
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
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.61, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.62, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 4 pass(s)</li>
<li>Exec time: [0.62, 1.11] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.63, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.62, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.62, 0.69] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.62, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.62, 1.11] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.62, 0.69] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.51, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.52, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.52, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.52, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@bcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vcs0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.50] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.50, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.51, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.51, 0.53] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
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
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.52, 0.53] s</li>
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
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.51, 0.53] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.52, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [0.51, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.51, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.51, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs0:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [0.61, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.61, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.61, 0.69] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21932_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11052/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11052/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11052/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11052/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11052/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1052/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11052/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-apl1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl3/igt@gem_ctx_isolation@preservation=
-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-snb7/igt@gem_ctx_persistence@engines-pe=
rsistence.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb8/igt@gem_ctx_sseu@invalid-sseu.htm=
l">SKIP</a> ([i915#280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21932/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> ([i915#4525]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-skl4/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11052/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
2/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2=
842]) +4 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11052/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
2/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11052/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
2/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-skl8/igt@gem_exec_params@no-vebox.html"=
>SKIP</a> ([fdo#109271]) +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb5/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_exec_params@secure-non-roo=
t.html">SKIP</a> ([fdo#112283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl6/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb1/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb2/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb3/igt@gem_mmap_gtt@coherency.html">=
SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb5/igt@gem_pxp@verify-pxp-key-change-=
after-suspend-resume.html">SKIP</a> ([i915#4270])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb3/igt@gem_pxp@verify-pxp-key-change-=
after-suspend-resume.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb8/igt@gen9_exec_parse@bb-start-far.h=
tml">SKIP</a> ([i915#2856])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb8/igt@gen9_exec_parse@bb-start-far.h=
tml">SKIP</a> ([i915#2527] / [i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb5/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL</=
a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotate=
-270.html">SKIP</a> ([fdo#111614])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate=
-180.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb7/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1932/shard-iclb1/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">FAIL</a> ([i=
915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
2/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +109 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-skl5/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl4/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-iclb4/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb8/igt@kms_ccs@pipe-c-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +157 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data=
-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +11 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb6/igt@kms_ccs@pipe-d-random-ccs-data=
-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +3 similar issues=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-iclb5/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-apl1/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21932/shard=
-skl5/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-iclb4/igt@kms_color@pipe-d-ctm-blue-to-=
red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-glk6/igt@kms_color_chamelium@pipe-d-dega=
mma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-skl1/igt@kms_color_chamelium@pipe-d-dega=
mma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb2/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-snb4/igt@kms_color_chamelium@pipe-d-dega=
mma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-iclb2/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-kbl7/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-apl2/igt@kms_content_protection@atomic-d=
pms.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21932/shard-tglb6/igt@kms_content_protection@atomic-=
dpms.html">SKIP</a> ([i915#1063]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-iclb3/igt@kms_content_protection@mei_in=
terface.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid-movement:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid-move=
ment.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21932/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-rapid=
-movement.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21932/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; [SKIP][136]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5416373303848597511==--
