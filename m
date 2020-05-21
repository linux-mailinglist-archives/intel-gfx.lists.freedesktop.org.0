Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4011DD0EB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 17:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAA46E943;
	Thu, 21 May 2020 15:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFE3C6E941;
 Thu, 21 May 2020 15:16:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE8C0A0BD0;
 Thu, 21 May 2020 15:16:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 15:16:02 -0000
Message-ID: <159007416297.4441.975058990523558035@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520204152.3032831-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200520204152.3032831-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Cancel_the_flush_worker_more_thoroughly?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Cancel the flush worker more thoroughly
URL   : https://patchwork.freedesktop.org/series/77490/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8515_full -> Patchwork_17736_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8515_full and Patchwork_17736_full:

### New IGT tests (74) ###

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.51, 7.10] s

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.61, 7.18] s

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.20] s

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.18] s

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.65, 11.33] s

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.65, 10.94] s

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.20] s

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.20] s

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.92, 11.16] s

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.92, 11.01] s

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.04, 0.73] s

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.05, 0.85] s

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.49, 6.05] s

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.44, 5.52] s

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.29] s

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.30] s

  * igt@kms_big_fb@linear-addfb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.45, 6.94] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.58, 7.42] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.18] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.19] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.56, 10.65] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.57, 11.22] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.22] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.21] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.87, 10.89] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.97, 10.68] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.06, 0.84] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - Statuses : 6 skip(s)
    - Exec time: [0.04, 0.72] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.32, 5.03] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.41, 5.25] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.03, 0.32] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.62] s

  * igt@kms_big_fb@x-tiled-addfb:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@x-tiled-addfb-size-overflow:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 7.05] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.84] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - Statuses : 2 pass(s) 5 skip(s)
    - Exec time: [0.0, 1.83] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - Statuses : 2 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.85] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 10.89] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.82] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 10.82] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.01] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 6.92] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.19] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.96] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.96] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.12] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.39] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.31] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.33] s

  * igt@kms_big_fb@y-tiled-addfb:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.47] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.40] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.80] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.84] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.47] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.01] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.91] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 12.10] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-addfb:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_17736_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl7/igt@gem_workarounds@suspend-resume.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl4/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1436])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#151] / [i915#155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl2/igt@i915_pm_rpm@system-suspend-modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-kbl2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#1559] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-kbl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#1559] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-apl:          [FAIL][19] ([i915#1528]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][23] ([i915#198]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#123] / [i915#69]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][29] ([i915#1188]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb6/igt@kms_psr@psr2_sprite_plane_onoff.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb4/igt@perf@blocking-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-iclb1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][37] ([i915#1515]) -> [WARN][38] ([i915#1515])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][39] ([i915#1319]) -> [FAIL][40] ([fdo#110321] / [fdo#110336])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl4/igt@kms_content_protection@atomic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][41] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][42] ([i915#1319]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][43] ([i915#608]) -> [SKIP][44] ([fdo#109642] / [fdo#111068])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/shard-iclb4/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8515 -> Patchwork_17736

  CI-20190529: 20190529
  CI_DRM_8515: 41f9bb782f3bb2f30be09683184bbeecb1fd31bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17736: a3dd258ba77810fb22af04b0e198f8a1cb0bf11b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17736/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
