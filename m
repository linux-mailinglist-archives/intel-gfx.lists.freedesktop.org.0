Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E0F1DD607
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 20:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99ADF6E159;
	Thu, 21 May 2020 18:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 673496E159;
 Thu, 21 May 2020 18:34:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D951A47EA;
 Thu, 21 May 2020 18:34:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 21 May 2020 18:34:04 -0000
Message-ID: <159008604435.4441.7833025739385401449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_DG1?=
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

Series: Introduce DG1
URL   : https://patchwork.freedesktop.org/series/77496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8515_full -> Patchwork_17740_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17740_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17740_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17740_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][1] ([i915#588]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8515_full and Patchwork_17740_full:

### New IGT tests (74) ###

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.51, 7.16] s

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.60, 7.22] s

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.20] s

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.18] s

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.64, 11.15] s

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.63, 11.11] s

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.21] s

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.20] s

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.91, 11.01] s

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.92, 11.14] s

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.04, 0.73] s

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.06, 0.83] s

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.49, 6.06] s

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.48, 5.43] s

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.29] s

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.29] s

  * igt@kms_big_fb@linear-addfb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.47, 3.02] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.58, 7.12] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.17] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.18] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.56, 10.38] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - Statuses : 6 pass(s)
    - Exec time: [1.58, 10.83] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.22] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.20] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.87, 11.22] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.96, 10.61] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.06, 0.86] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.04, 0.74] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - Statuses : 7 pass(s)
    - Exec time: [1.27, 5.05] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.40, 5.27] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.01, 0.30] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.02, 0.38] s

  * igt@kms_big_fb@x-tiled-addfb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@x-tiled-addfb-size-overflow:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.99] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.94] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - Statuses : 2 pass(s) 5 skip(s)
    - Exec time: [0.0, 1.83] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - Statuses : 2 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.84] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.01] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 10.71] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 10.73] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 11.56] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.21] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.54] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 1.00] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.95] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.35] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.04] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.34] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.32] s

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
    - Exec time: [0.0, 7.51] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 6.75] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.81] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.83] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.08] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 10.66] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.21] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.21] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.03] s

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

  Here are the changes found in Patchwork_17740_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#300])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#1559] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-kbl4/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#1559] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb7/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-apl:          [FAIL][31] ([i915#1528]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [FAIL][33] ([i915#168]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl9/igt@kms_color@pipe-a-ctm-max.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl5/igt@kms_color@pipe-a-ctm-max.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [FAIL][39] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#123] / [i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][43] ([fdo#109642] / [fdo#111068]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][47] ([i915#31]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl1/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl4/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb4/igt@perf@blocking-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][51] ([i915#468]) -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][53] ([i915#1515]) -> [WARN][54] ([i915#1515])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][55] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][56] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl2/igt@kms_content_protection@legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][57] ([fdo#110321]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-apl6/igt@kms_content_protection@lic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][59] ([i915#608]) -> [SKIP][60] ([fdo#109642] / [fdo#111068])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/shard-iclb7/igt@kms_psr2_su@page_flip.html

  
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
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8515 -> Patchwork_17740

  CI-20190529: 20190529
  CI_DRM_8515: 41f9bb782f3bb2f30be09683184bbeecb1fd31bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17740: bc44bd9a82afa9176ff124f0b0772fb0e76f6851 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
