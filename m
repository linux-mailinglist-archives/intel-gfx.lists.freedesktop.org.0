Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD63607B8E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 17:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5785A10E309;
	Fri, 21 Oct 2022 15:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D31C10E309;
 Fri, 21 Oct 2022 15:54:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 928D8AA0EA;
 Fri, 21 Oct 2022 15:54:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2331346468599891255=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 21 Oct 2022 15:54:05 -0000
Message-ID: <166636764557.18266.10073058353662534006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221020104635.874860-1-suraj.kandpal@intel.com>
In-Reply-To: <20221020104635.874860-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?ove_Connector_iterator_macro?=
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

--===============2331346468599891255==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove Connector iterator macro
URL   : https://patchwork.freedesktop.org/series/109944/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12266_full -> Patchwork_109944v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109944v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109944v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 12)
------------------------------

  Additional (3): shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109944v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@madvise@smem (NEW):
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl7/igt@gem_exec_create@madvise@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/igt@gem_exec_create@madvise@smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_await@wide-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-rkl-3/igt@gem_exec_await@wide-all.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12266_full and Patchwork_109944v1_full:

### New IGT tests (500) ###

  * igt@gem_exec_create@forked@smem:
    - Statuses : 8 pass(s)
    - Exec time: [20.06, 20.50] s

  * igt@gem_exec_create@legacy@smem:
    - Statuses : 9 pass(s)
    - Exec time: [2.04, 2.22] s

  * igt@gem_exec_create@madvise@smem:
    - Statuses : 1 incomplete(s) 6 pass(s)
    - Exec time: [0.0, 20.44] s

  * igt@gem_pxp@create-protected-buffer:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@create-regular-buffer:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@create-regular-context-1:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@create-regular-context-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@create-valid-protected-context:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@display-protected-crc:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@fail-invalid-protected-context:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_pxp@hw-rejects-pxp-context:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@reject-modify-context-protection-on:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.30] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.30] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.30] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.43] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.43] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.55] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.58] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.55] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.43] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.45] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.55] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.62] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.61] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.75] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.72] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.77] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.58] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.63] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.68] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.62] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.72] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.73] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.44, 2.43] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.68] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.68] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.43] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.45] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.50] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.61] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.65] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.61] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.61] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.73] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.75] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.26] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.58] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.65] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.72] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.60] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.62] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.73] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [1.34, 1.95] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.68] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-y-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.68] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.71] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.45] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.57] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.47] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.58] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.23] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.55] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y:
    - Statuses : 3 pass(s)
    - Exec time: [0.09, 0.67] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.70] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.32] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.56] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.12, 0.63] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-yf:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 1.94] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.27] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.09, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.09, 0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.09, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.09, 0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.10, 0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.61] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.08, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.07, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.39] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.22] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.24] s

  * igt@kms_invalid_mode@bad-hsync-end:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_invalid_mode@bad-hsync-start:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_invalid_mode@bad-vsync-start:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vtotal:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_invalid_mode@clock-too-high:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@int-max-clock:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_invalid_mode@uint-max-clock:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-clock:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-vdisplay:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 6.55] s

  * igt@prime_mmap@test_correct@test_correct-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@prime_mmap@test_correct_cpu_write@test_correct_cpu_write-smem:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@prime_mmap@test_dup@test_dup-smem:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@prime_mmap@test_errors@test_errors-smem:
    - Statuses : 9 pass(s)
    - Exec time: [0.01, 0.40] s

  * igt@prime_mmap@test_forked@test_forked-smem:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.08] s

  * igt@prime_mmap@test_forked_cpu_write@test_forked_cpu_write-smem:
    - Statuses : 9 pass(s)
    - Exec time: [0.01, 0.16] s

  * igt@prime_mmap@test_invalid_sync_flags@test_invalid_sync_flags-smem:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@prime_mmap@test_map_unmap@test_map_unmap-smem:
    - Statuses : 9 pass(s)
    - Exec time: [0.00, 0.14] s

  * igt@prime_mmap@test_refcounting@test_refcounting-smem:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@prime_mmap@test_reprime@test_reprime-smem:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.12] s

  * igt@prime_mmap@test_userptr@test_userptr-smem:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_109944v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [FAIL][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48]) ([i915#5032])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl4/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          NOTRUN -> [INCOMPLETE][49] ([i915#6949] / [i915#7165])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +142 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#4525])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-iclb4/igt@gem_exec_balancer@parallel.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#2846])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2842]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][57] -> [SKIP][58] ([i915#2190])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_pxp@create-regular-context-1 (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#4270])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@fail-invalid-protected-context (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][62] ([i915#4270]) +13 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglu-5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][63] ([i915#4270]) +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-3 (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][64] ([i915#4270]) +11 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-dg1-13/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#4171])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-tglb2/igt@gem_softpin@evict-single-offset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb6/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#3297]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3323])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][69] ([i915#4991])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@probe:
    - shard-tglb:         NOTRUN -> [FAIL][70] ([i915#7224])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_userptr_blits@probe.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#5566] / [i915#716])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#2527] / [i915#2856])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-apl:          NOTRUN -> [FAIL][74] ([i915#7036])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#1904])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_query@hwconfig_table:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#6245])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-glk:          [PASS][77] -> [DMESG-FAIL][78] ([i915#7270])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-glk7/igt@i915_selftest@live@gem_contexts.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk9/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#5286])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111614])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111615]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3689] / [i915#6095]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#3689] / [i915#3886])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#6095])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +128 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3689]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl9/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_color_chamelium@ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl7/igt@kms_color_chamelium@ctm-negative.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][93] ([i915#1339] / [i915#7144])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl7/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3555]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][95] -> [INCOMPLETE][96] ([i915#180] / [i915#4939])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#2122])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#79])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][102] -> [FAIL][103] ([i915#79])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][104] -> [DMESG-WARN][105] ([i915#180]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][106] ([i915#2122])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#2587] / [i915#2672]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#2587] / [i915#2672]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_tiling@flip-change-tiling (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][109] ([i915#3555] / [i915#4098])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-rkl-4/igt@kms_flip_tiling@flip-change-tiling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#6497]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109280] / [fdo#111825]) +9 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_invalid_mode@zero-clock (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][112] ([i915#1845] / [i915#4098]) +4 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-rkl-1/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-snb:          [PASS][113] -> [SKIP][114] ([fdo#109271]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#5176]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#658]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][118] -> [SKIP][119] ([fdo#109441])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
    - shard-tglb:         NOTRUN -> [FAIL][120] ([i915#132] / [i915#3467])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2437])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl10/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][124] ([i915#4525]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][126] ([i915#2842]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][128] ([i915#2842]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131] +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl7/igt@gem_workarounds@suspend-resume.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][132] ([i915#1804]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][134] ([i915#79]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][136] ([i915#2122]) -> [PASS][137] +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][138] ([i915#1542]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/igt@perf@polling.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/igt@perf@polling.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][140] ([i915#588]) -> [SKIP][141] ([i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-skl:          [FAIL][142] ([i915#4275]) -> [SKIP][143] ([fdo#109271])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl7/igt@i915_pm_dc@dc9-dpms.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-skl:          [INCOMPLETE][144] -> [SKIP][145] ([fdo#109271])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([i915#180] / [i915#3002] / [i915#4312])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl7/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl6/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl3/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl3/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl1/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl3/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl1/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([i915#3002] / [i915#4312]) -> ([FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175]) ([i915#3002] / [i915#4312] / [i915#6949])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl4/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1904]: https://gitlab.freedesktop.org/drm/intel/issues/1904
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/index.html

--===============2331346468599891255==
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
<tr><td><b>Series:</b></td><td>Remove Connector iterator macro</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109944/">https://patchwork.freedesktop.org/series/109944/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109944v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109944v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12266_full -&gt; Patchwork_109944v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109944v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109944v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 12)</h2>
<p>Additional (3): shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109944v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_create@madvise@smem (NEW):<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl7/igt@gem_exec_create@madvise@smem.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/=
shard-skl2/igt@gem_exec_create@madvise@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_await@wide-all:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-rkl-3/igt@gem_exec_await@wide-all.ht=
ml">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12266_full and Patchwork_1=
09944v1_full:</p>
<h3>New IGT tests (500)</h3>
<ul>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [20.06, 20.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@legacy@smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.04, 2.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise@smem:</p>
<ul>
<li>Statuses : 1 incomplete(s) 6 pass(s)</li>
<li>Exec time: [0.0, 20.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-b-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-c-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-rc_ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-y-rc_ccs-c=
c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-linea=
r:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y-rc_=
ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-cc-to-y-rc_=
ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y-rc_ccs=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-rc_ccs-to-y-rc_ccs=
-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.44, 2.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-rc_ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-y-rc_ccs-c=
c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-linea=
r:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y-rc_=
ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-cc-to-y-rc_=
ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y-rc_ccs=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-rc_ccs-to-y-rc_ccs=
-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.34, 1.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-rc_ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-y-rc_ccs-c=
c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-linea=
r:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y-rc_=
ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-cc-to-y-rc_=
ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y-rc_ccs=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-rc_ccs-to-y-rc_ccs=
-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.09, 0.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.12, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-yf:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 1.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-c-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y-rc_ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-linear-to-y-rc_ccs-c=
c:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-x-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-linea=
r:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y-rc_=
ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-cc-to-y-rc_=
ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y-rc_ccs=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-rc_ccs-to-y-rc_ccs=
-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-d-y-to-y-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-linear:=
</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.09, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.09, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-linear-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.09, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.09, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-y-ccs:</=
p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-ccs-to-yf-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.10, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-ccs-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-a-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-linear:=
</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-linear-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-y-ccs:</=
p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-ccs-to-yf-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.08, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-ccs-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-b-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-linear:=
</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.07, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-1-pipe-c-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-linear-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-y-ccs:</=
p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-ccs-to-yf-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-ccs-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-a-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-linear-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-linear:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-y-ccs:</=
p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-ccs-to-yf-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-y-ccs:<=
/p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-ccs-to-yf-ccs:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-b-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-linear:=
</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@hdmi-a-2-pipe-c-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-a-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@vga-1-pipe-b-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 6.55] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_correct@test_correct-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_correct_cpu_write@test_correct_cpu_write-smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_dup@test_dup-smem:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_errors@test_errors-smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.01, 0.40] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_forked@test_forked-smem:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_forked_cpu_write@test_forked_cpu_write-smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.01, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_invalid_sync_flags@test_invalid_sync_flags-smem:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_map_unmap@test_map_unmap-smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.00, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_refcounting@test_refcounting-smem:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_reprime@test_reprime-smem:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_userptr@test_userptr-smem:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109944v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12266/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12266/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12266/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12266/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12266/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12266/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12266/shard-skl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl10/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12266/shard-skl10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl10/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shar=
d-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109944v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
944v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109944v1/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/sh=
ard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109944v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9944v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109944v1/shard-skl5/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/sh=
ard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109944v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9944v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109944v1/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-skl9/boot.html">PASS</a>) ([i915#5032])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@dmabuf@all@dma_fence_chain.=
html">INCOMPLETE</a> ([i915#6949] / [i915#7165])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +142 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-iclb4/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/s=
hard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9944v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-iclb4/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl10/igt@gem_lmem_swapping@heavy-ve=
rify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1 (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglu-5/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-rkl-5/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3 (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-dg1-13/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> ([i915#4270]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-tglb2/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10994=
4v1/shard-tglb6/igt@gem_softpin@evict-single-offset.html">FAIL</a> ([i915#4=
171])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gem_userptr_blits@probe.ht=
ml">FAIL</a> ([i915#7224])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/s=
hard-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#5566]=
 / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@gen9_exec_parse@basic-reje=
cted-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@i915_pipe_stress@stress-xrg=
b8888-ytiled.html">FAIL</a> ([i915#7036])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1904">i915#1904</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@i915_query@hwconfig_table.=
html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-glk7/igt@i915_selftest@live@gem_contexts.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944=
v1/shard-glk9/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> ([i9=
15#7270])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs.html">SKIP</a> ([i915#3689] / [i915#6095]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> ([i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +128 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl9/igt@kms_chamelium@hdmi-crc-fast=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_chamelium@vga-hpd-fast=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-negative:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl7/igt@kms_color_chamelium@ctm-neg=
ative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl7/igt@kms_content_protection@ueve=
nt@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1339">i915#1339</a> / [i915#7144])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_cursor_crc@cursor-rand=
om-32x10.html">SKIP</a> ([i915#3555]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/sha=
rd-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#4939]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_flip@2x-modeset-vs-vbl=
ank-race-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / [i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vbl=
ank-interruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109944v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL<=
/a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109944v1/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v=
1/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_flip@plain-flip-ts-chec=
k-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-rkl-4/igt@kms_flip_tiling@flip-chang=
e-tiling.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#6497]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +9 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-rkl-1/igt@kms_invalid_mode@zero-cloc=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1845">i915#1845</a> / [i915#4098]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109944v1/shard-snb5/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-b-planes.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp=
-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_plane_scaling@plane-up=
scale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> ([i915#5176]) +=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12266/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-ic=
lb3/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109944v1/shard-tglb7/igt@kms_psr@psr2_no_drrs.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">i=
915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/34=
67">i915#3467</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-skl10/igt@sysfs_clients@busy.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_109944v1/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109944v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109944v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-apl7/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109944v1/shard-apl2/igt@gem_workarounds@suspend-resume.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i91=
5#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109944v1/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-glk9/igt@kms_flip@=
2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_flip@flip-vs-absolute-=
wf_vblank-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl9/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl7=
/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP=
</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl7/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1099=
44v1/shard-skl2/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-=
gtt.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109944v1/shard-skl3/igt@kms_frontbuffer_tracking@fbc-rgb5=
65-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12266/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12266/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2266/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-apl3/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1226=
6/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / [i915#43=
12]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09944v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl3/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-a=
pl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109944v1/shard-apl2/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v=
1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-apl8/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3002">i915#3002</a> / [i915#4312])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12266/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12266/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12266/shard-skl9/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl5/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09944v1/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109944v1/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-skl4/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109944v1/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109944v1/shard-s=
kl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109944v1/shard-skl6/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i91=
5#3002</a> / [i915#4312] / [i915#6949])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============2331346468599891255==--
