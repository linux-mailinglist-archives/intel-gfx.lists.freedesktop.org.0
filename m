Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 219F57933FB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 05:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E93D10E1DA;
	Wed,  6 Sep 2023 03:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8535610E1DA;
 Wed,  6 Sep 2023 03:14:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 788FFA3ECB;
 Wed,  6 Sep 2023 03:14:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4135071623989803974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 06 Sep 2023 03:14:00 -0000
Message-ID: <169397004044.17387.15769919637748041040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230905193614.69771-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230905193614.69771-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRHJv?=
 =?utf-8?q?p_caches_per_GT?=
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

--===============4135071623989803974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop caches per GT
URL   : https://patchwork.freedesktop.org/series/123301/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13599_full -> Patchwork_123301v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123301v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123301v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123301v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@perf_pmu@init-sema@ccs3:
    - shard-dg2:          [PASS][2] -> [TIMEOUT][3] +1 other test timeout
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@perf_pmu@init-sema@ccs3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@perf_pmu@init-sema@ccs3.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][4] ([i915#5354]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13599_full and Patchwork_123301v1_full:

### New IGT tests (110) ###

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-128x128@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-128x128@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-256x256@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-256x256@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-64x64@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-64x64@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-128x42@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-128x42@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-256x256@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-256x256@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-128x128@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-128x128@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-4@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-4@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-4@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_lowres@tiling-4@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-4:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-none@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_multiple@tiling-x@pipe-a-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-b-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-x@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y:
    - Statuses : 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-a-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-b-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-y@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-a-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-a-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-b-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_multiple@tiling-yf@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_rmfb@rmfb-ioctl@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_123301v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_allocator@default-alignment:
    - shard-dg2:          [PASS][6] -> [SKIP][7] ([fdo#109315]) +6 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@api_intel_allocator@default-alignment.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@api_intel_allocator@default-alignment.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][8] -> [SKIP][9] ([i915#2582])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@fbdev@eof.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@fbdev@eof.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][10] -> [FAIL][11] ([i915#6268])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-snb:          NOTRUN -> [DMESG-WARN][12] ([i915#8841]) +3 other tests dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@invalid-size-set:
    - shard-mtlp:         [PASS][13] -> [DMESG-WARN][14] ([i915#2017])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_ctx_param@invalid-size-set.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_ctx_param@invalid-size-set.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#2575]) +18 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][17] ([i915#8898])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [PASS][18] -> [FAIL][19] ([i915#5784]) +1 other test fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-14/igt@gem_eio@unwedge-stress.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-17/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-mtlp:         [PASS][20] -> [FAIL][21] ([i915#4475])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_exec_capture@pi@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-mtlp:         [PASS][22] -> [FAIL][23] ([i915#4475] / [i915#7765])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_exec_capture@pi@vecs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2842])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271]) +284 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][29] ([fdo#103375])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [PASS][30] -> [ABORT][31] ([i915#7975] / [i915#8213])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4083])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3282])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#5190]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_workarounds@suspend-resume:
    - shard-dg2:          [PASS][36] -> [FAIL][37] ([fdo#103375]) +1 other test fail
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-1/igt@gem_workarounds@suspend-resume.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][38] -> [FAIL][39] ([i915#3989] / [i915#454])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][40] ([i915#6311])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [PASS][41] -> [FAIL][42] ([i915#3591])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@cursor:
    - shard-dg2:          [PASS][43] -> [SKIP][44] ([i915#5174])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@i915_pm_rpm@cursor.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg1:          [PASS][45] -> [SKIP][46] ([i915#1397]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#5174])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg2:          [PASS][48] -> [FAIL][49] ([i915#8717])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@i915_pm_rpm@i2c.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][50] -> [SKIP][51] ([i915#1397])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][52] -> [DMESG-FAIL][53] ([i915#5334])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - shard-mtlp:         [PASS][54] -> [DMESG-FAIL][55] ([i915#7699])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@i915_selftest@live@migrate.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@perf@request:
    - shard-mtlp:         [PASS][56] -> [DMESG-FAIL][57] ([i915#8573])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@i915_selftest@perf@request.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@i915_selftest@perf@request.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8502] / [i915#8709]) +11 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8502]) +7 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#404])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][61] -> [FAIL][62] ([i915#5138])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [PASS][63] -> [FAIL][64] ([i915#3743])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([fdo#111615])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3689] / [i915#3886] / [i915#5354]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3689] / [i915#5354]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5354]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#3886] / [i915#6095])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#6095])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4087]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3555])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#7118])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3555]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [INCOMPLETE][75] ([i915#7882] / [i915#7888] / [i915#8841])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][76] -> [FAIL][77] ([i915#2346]) +1 other test fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4213])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#9227])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#9226] / [i915#9261]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3469])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#79])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#79])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#109315]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [PASS][88] -> [FAIL][89] ([i915#6880]) +3 other tests fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3458]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#1825]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3555] / [i915#8228]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_hdr@static-swap.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#5176]) +7 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#5176]) +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#5176]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#5176]) +15 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5235]) +11 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#5235]) +11 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5235]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#5235]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#6524] / [i915#6805])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#1072])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4235])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_selftest@drm_plane:
    - shard-snb:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#8661])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@kms_selftest@drm_plane.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#8623])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-mtlp:         [PASS][107] -> [FAIL][108] ([fdo#103375])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-2/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf@blocking:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5608])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf@blocking.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([fdo#109289])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][111] -> [FAIL][112] ([i915#4349]) +3 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@gt-awake:
    - shard-dg2:          [PASS][113] -> [SKIP][114] ([i915#5608])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@perf_pmu@gt-awake.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf_pmu@gt-awake.html

  * igt@perf_pmu@multi-client@ccs0:
    - shard-mtlp:         [PASS][115] -> [FAIL][116] ([i915#4349])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@perf_pmu@multi-client@ccs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@perf_pmu@multi-client@ccs0.html

  * igt@syncobj_timeline@invalid-query-zero-handles:
    - shard-dg2:          [PASS][117] -> [SKIP][118] ([i915#2575]) +37 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@syncobj_timeline@invalid-query-zero-handles.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@syncobj_timeline@invalid-query-zero-handles.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][119] ([i915#7742]) -> [PASS][120] +1 other test pass
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg2:          [FAIL][121] ([fdo#103375]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@gem_eio@in-flight-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [FAIL][123] ([i915#2842]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][125] ([i915#2842]) -> [PASS][126] +1 other test pass
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][127] ([i915#2842]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@parallel@bcs0:
    - shard-mtlp:         [DMESG-FAIL][129] ([i915#8962] / [i915#9121]) -> [PASS][130] +1 other test pass
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@bcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@bcs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-mtlp:         [DMESG-FAIL][131] ([i915#9121]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_fence@parallel@vecs0:
    - shard-mtlp:         [FAIL][133] ([i915#8957]) -> [PASS][134] +2 other tests pass
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@vecs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][135] ([i915#4281]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-10/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-dg1:          [SKIP][137] ([i915#1937]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [FAIL][139] ([i915#3591]) -> [PASS][140] +1 other test pass
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][141] ([i915#1397]) -> [PASS][142] +2 other tests pass
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][143] ([i915#1397]) -> [PASS][144] +1 other test pass
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][145] ([i915#5138]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [FAIL][147] ([i915#3743]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][149] ([i915#2346]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [FAIL][151] ([i915#6880]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  
#### Warnings ####

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          [SKIP][153] ([i915#7701]) -> [FAIL][154] ([i915#6121])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@device_reset@cold-reset-bound.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@device_reset@cold-reset-bound.html

  * igt@gem_ctx_param@invalid-size-get:
    - shard-mtlp:         [DMESG-WARN][155] -> [DMESG-WARN][156] ([i915#2017])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_ctx_param@invalid-size-get.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_ctx_param@invalid-size-get.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg2:          [SKIP][157] ([i915#3539] / [i915#4852]) -> [SKIP][158] ([i915#2575])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          [SKIP][159] ([i915#3539]) -> [SKIP][160] ([i915#2575])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_flush@basic-uc-set-default.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-dg2:          [SKIP][161] ([i915#3281]) -> [SKIP][162] ([i915#2575]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-dg2:          [INCOMPLETE][163] ([i915#7793]) -> [FAIL][164] ([fdo#103375])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][165] ([i915#4936] / [i915#5493]) -> [TIMEOUT][166] ([i915#5493])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@isolation:
    - shard-dg2:          [SKIP][167] ([i915#4077]) -> [SKIP][168] ([i915#2575])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_mmap_gtt@isolation.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_gtt@isolation.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2:          [SKIP][169] ([i915#4083]) -> [SKIP][170] ([i915#2575])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_mmap_wc@read-write-distinct.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          [SKIP][171] ([i915#3282]) -> [SKIP][172] ([i915#2575])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_partial_pwrite_pread@reads-uncached.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          [SKIP][173] ([i915#4270]) -> [SKIP][174] ([i915#2575])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][175] ([i915#5190]) -> [SKIP][176] ([i915#2575] / [i915#5190]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          [SKIP][177] ([fdo#109289]) -> [SKIP][178] ([i915#2575])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gen3_mixed_blits.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          [SKIP][179] ([i915#2856]) -> [SKIP][180] ([i915#2575])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          [SKIP][181] ([i915#4387]) -> [SKIP][182] ([i915#2575])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@i915_pm_sseu@full-enable.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][183] ([fdo#103375]) -> [INCOMPLETE][184] ([i915#4817])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][185] ([i915#6228]) -> [SKIP][186] ([i915#2575])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_async_flips@invalid-async-flip.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][187] ([i915#5190]) -> [SKIP][188] ([fdo#109315] / [i915#5190])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][189] ([i915#4538] / [i915#5190]) -> [SKIP][190] ([fdo#109315] / [i915#5190]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
    - shard-dg2:          [SKIP][191] ([i915#3689] / [i915#5354]) -> [SKIP][192] ([i915#2575]) +8 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          [SKIP][193] ([i915#3689] / [i915#3886] / [i915#5354]) -> [SKIP][194] ([i915#2575]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs:
    - shard-dg2:          [SKIP][195] ([i915#5354]) -> [SKIP][196] ([i915#2575]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-dg2:          [SKIP][197] ([i915#7828]) -> [SKIP][198] ([i915#2575]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [DMESG-FAIL][199] ([i915#2017] / [i915#5954]) -> [FAIL][200] ([i915#2346])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][201] ([i915#3555]) -> [SKIP][202] ([i915#2575]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][203] ([i915#3955]) -> [SKIP][204] ([fdo#110189] / [i915#3955])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          [SKIP][205] ([fdo#109274]) -> [SKIP][206] ([i915#2575]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          [SKIP][207] ([i915#5354]) -> [SKIP][208] ([fdo#109315]) +8 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][209] ([i915#8708]) -> [SKIP][210] ([fdo#109315]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          [SKIP][211] ([i915#3458]) -> [SKIP][212] ([fdo#109315]) +2 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][213] ([i915#3555] / [i915#8228]) -> [SKIP][214] ([i915#2575])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][215] ([i915#4816]) -> [SKIP][216] ([i915#4070] / [i915#4816])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][217] ([i915#6953]) -> [SKIP][218] ([i915#2575])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-dg2:          [SKIP][219] ([i915#658]) -> [SKIP][220] ([fdo#109315])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-dg2:          [SKIP][221] ([i915#1072]) -> [SKIP][222] ([fdo#109315])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_psr@cursor_mmap_gtt.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-dg1:          [SKIP][223] ([i915#1072] / [i915#4078]) -> [SKIP][224] ([i915#1072])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@kms_psr@sprite_plane_onoff.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          [SKIP][225] ([i915#7387]) -> [SKIP][226] ([i915#5608])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@perf@global-sseu-config.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf@global-sseu-config.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][227] ([i915#7331]) -> [INCOMPLETE][228] ([i915#5493])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-mtlp:         [TIMEOUT][229] ([i915#6950]) -> [ABORT][230] ([i915#8521] / [i915#8865])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-6/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-5/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7793]: https://gitlab.freedesktop.org/drm/intel/issues/7793
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/intel/issues/7882
  [i915#7888]: https://gitlab.freedesktop.org/drm/intel/issues/7888
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8573]: https://gitlab.freedesktop.org/drm/intel/issues/8573
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
  [i915#8957]: https://gitlab.freedesktop.org/drm/intel/issues/8957
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261


Build changes
-------------

  * Linux: CI_DRM_13599 -> Patchwork_123301v1

  CI-20190529: 20190529
  CI_DRM_13599: 58fe10f34e80d0eeb5609128faa135260623a715 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7468: 7468
  Patchwork_123301v1: 58fe10f34e80d0eeb5609128faa135260623a715 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/index.html

--===============4135071623989803974==
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
<tr><td><b>Series:</b></td><td>Drop caches per GT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123301/">https://patchwork.freedesktop.org/series/123301/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13599_full -&gt; Patchwork_123301v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123301v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123301v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123301v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@init-sema@ccs3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@perf_pmu@init-sema@ccs3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@perf_pmu@init-sema@ccs3.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13599_full and Patchwork_123301v1_full:</p>
<h3>New IGT tests (110)</h3>
<ul>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x128@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x128@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x64@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x64@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x42@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x42@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-256x256@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-256x256@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x128@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x128@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x256@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x256@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-none@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-b-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-b-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-b-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123301v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_allocator@default-alignment:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@api_intel_allocator@default-alignment.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@api_intel_allocator@default-alignment.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-size-set:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_ctx_param@invalid-size-set.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_ctx_param@invalid-size-set.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_ctx_persistence@engines-mixed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-14/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_exec_capture@pi@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_exec_capture@pi@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_exec_capture@pi@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#7765</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +284 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@lmem0.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-1/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_workarounds@suspend-resume.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_rpm@cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@i915_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@i915_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@request:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@i915_selftest@perf@request.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@i915_selftest@perf@request.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8573">i915#8573</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7882">i915#7882</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7888">i915#7888</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9226">i915#9226</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_plane:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-snb5/igt@kms_selftest@drm_plane.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-2/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf@blocking.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@gt-awake:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@perf_pmu@gt-awake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf_pmu@gt-awake.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@multi-client@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@perf_pmu@multi-client@ccs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@perf_pmu@multi-client@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-query-zero-handles:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@syncobj_timeline@invalid-query-zero-handles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@syncobj_timeline@invalid-query-zero-handles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +37 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-11/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-6/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@bcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8962">i915#8962</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@bcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8957">i915#8957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-6/igt@gem_exec_fence@parallel@vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-tglu-3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-tglu-10/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@device_reset@cold-reset-bound.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-size-get:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-1/igt@gem_ctx_param@invalid-size-get.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-7/igt@gem_ctx_param@invalid-size-get.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7793">i915#7793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@isolation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_mmap_gtt@isolation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_gtt@isolation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_mmap_wc@read-write-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_mmap_wc@read-write-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gen3_mixed_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gen3_mixed_blits.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6228">i915#6228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-aux-stride-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg1-19/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-11/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7331">i915#7331</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13599/shard-mtlp-6/igt@sysfs_timeslice_duration@timeout@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6950">i915#6950</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123301v1/shard-mtlp-5/igt@sysfs_timeslice_duration@timeout@vecs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13599 -&gt; Patchwork_123301v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13599: 58fe10f34e80d0eeb5609128faa135260623a715 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7468: 7468<br />
  Patchwork_123301v1: 58fe10f34e80d0eeb5609128faa135260623a715 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4135071623989803974==--
