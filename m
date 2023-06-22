Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE673A57F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 18:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E27310E58A;
	Thu, 22 Jun 2023 16:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BB1A10E58A;
 Thu, 22 Jun 2023 16:02:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53092AADE8;
 Thu, 22 Jun 2023 16:02:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4813198484145810377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 22 Jun 2023 16:02:58 -0000
Message-ID: <168744977832.4869.16354532309607224394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230621114827.167713-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230621114827.167713-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Swap_ggtt=5Fvma_during_?=
 =?utf-8?q?legacy_cursor_update_=28rev3=29?=
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

--===============4813198484145810377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Swap ggtt_vma during legacy cursor update (rev3)
URL   : https://patchwork.freedesktop.org/series/119676/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13302_full -> Patchwork_119676v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119676v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119676v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 8)
------------------------------

  Additional (1): shard-dg2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119676v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2:
    - shard-glk:          [PASS][1] -> [FAIL][2] +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk1/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk2/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@test-cursor@pipe-a-vga-1:
    - shard-snb:          [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-snb6/igt@kms_async_flips@test-cursor@pipe-a-vga-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb7/igt@kms_async_flips@test-cursor@pipe-a-vga-1.html

  * igt@kms_async_flips@test-cursor@pipe-b-dp-1:
    - shard-apl:          [PASS][5] -> [FAIL][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl7/igt@kms_async_flips@test-cursor@pipe-b-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl4/igt@kms_async_flips@test-cursor@pipe-b-dp-1.html

  * igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][7] -> [FAIL][8] +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1.html

  * igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][9] -> [FAIL][10] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-4/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-1:
    - {shard-dg1}:        NOTRUN -> [FAIL][11] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-19/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-1.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - {shard-dg2}:        NOTRUN -> [TIMEOUT][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - {shard-dg2}:        NOTRUN -> [FAIL][13] +10 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg2-10/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
    - {shard-dg1}:        [PASS][14] -> [FAIL][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-18/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13302_full and Patchwork_119676v3_full:

### New IGT tests (148) ###

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-mc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-rc_ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-rc_ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-none@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-x@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-x@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-x@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-x@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-with-pixel-format-20x20@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-with-pixel-format-20x20@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_119676v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-apl:          [PASS][16] -> [ABORT][17] ([i915#7461] / [i915#8211] / [i915#8234])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl3/igt@gem_barrier_race@remote-request@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl6/igt@gem_barrier_race@remote-request@rcs0.html
    - shard-tglu:         [PASS][18] -> [ABORT][19] ([i915#8211] / [i915#8234])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-7/igt@gem_barrier_race@remote-request@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][20] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-1/igt@gem_exec_fair@basic-none@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][25] -> [FAIL][26] ([i915#2842])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2842])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [PASS][29] -> [ABORT][30] ([i915#5161])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][31] -> [SKIP][32] ([i915#4281])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][33] -> [FAIL][34] ([fdo#103375])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271]) +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-rkl:          [PASS][36] -> [FAIL][37] ([i915#3743])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271]) +41 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#2346]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#2346]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111767])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3555] / [i915#4579]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#5176])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#4579] / [i915#5176])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4579]) +9 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4579])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk9/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][50] ([i915#7742]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - {shard-dg1}:        [TIMEOUT][52] ([i915#3778] / [i915#7392]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-13/igt@gem_exec_endless@dispatch@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][54] ([i915#2846]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][56] ([i915#2842]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-1/igt@gem_exec_fair@basic-none@vcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_mmap_offset@clear@smem0:
    - {shard-dg1}:        [DMESG-WARN][58] ([i915#8304]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-17/igt@gem_mmap_offset@clear@smem0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][60] ([i915#5566]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-dg1}:        [FAIL][62] ([i915#3591]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - {shard-dg1}:        [SKIP][64] ([i915#1397]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu:         [FAIL][66] ([i915#4767]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - {shard-dg1}:        [DMESG-WARN][68] ([i915#1982]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-15/igt@kms_rotation_crc@sprite-rotation-270.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@perf@oa-exponents@0-rcs0:
    - shard-glk:          [ABORT][70] ([i915#5213] / [i915#7941]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk7/igt@perf@oa-exponents@0-rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@perf@oa-exponents@0-rcs0.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - {shard-dg1}:        [FAIL][72] ([i915#4349]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-18/igt@perf_pmu@busy-double-start@vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-14/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [WARN][74] ([i915#2681]) -> [FAIL][75] ([i915#2681] / [i915#3591])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][76] ([i915#2681] / [i915#3591]) -> [WARN][77] ([i915#2681])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][78] ([i915#3955]) -> [SKIP][79] ([fdo#110189] / [i915#3955])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8621]: https://gitlab.freedesktop.org/drm/intel/issues/8621
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708


Build changes
-------------

  * Linux: CI_DRM_13302 -> Patchwork_119676v3

  CI-20190529: 20190529
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119676v3: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/index.html

--===============4813198484145810377==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Swap ggtt_vma during legacy cursor update (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119676/">https://patchwork.freedesktop.org/series/119676/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13302_full -&gt; Patchwork_119676v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119676v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119676v3_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (7 -&gt; 8)</h2>
<p>Additional (1): shard-dg2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119676v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk1/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk2/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-2.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-snb6/igt@kms_async_flips@test-cursor@pipe-a-vga-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb7/igt@kms_async_flips@test-cursor@pipe-a-vga-1.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl7/igt@kms_async_flips@test-cursor@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl4/igt@kms_async_flips@test-cursor@pipe-b-dp-1.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-1.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-4/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_async_flips@test-cursor@pipe-b-hdmi-a-2.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-1:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-19/igt@kms_async_flips@test-cursor@pipe-a-hdmi-a-1.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>{shard-dg2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>{shard-dg2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg2-10/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">FAIL</a> +10 similar issues</p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-18/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13302_full and Patchwork_119676v3_full:</p>
<h3>New IGT tests (148)</h3>
<ul>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-mc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-4-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-linear-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-a-x-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-mc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-4-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-linear-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-b-x-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-mc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-4-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-linear-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-c-x-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-mc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-rc_ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-4-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-linear-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-mc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-rc_ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-4-pipe-d-x-to-4-rc_ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-pixel-format-20x20@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-pixel-format-20x20@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119676v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl3/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl6/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-7/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8234">i915#8234</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-7/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-snb5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk9/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-13/igt@gem_exec_endless@dispatch@rcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-17/igt@gem_mmap_offset@clear@smem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8304">i915#8304</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk6/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-15/igt@kms_rotation_crc@sprite-rotation-270.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-18/igt@kms_rotation_crc@sprite-rotation-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-glk7/igt@perf@oa-exponents@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-glk8/igt@perf@oa-exponents@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-dg1-18/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-dg1-14/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119676v3/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13302 -&gt; Patchwork_119676v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119676v3: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4813198484145810377==--
