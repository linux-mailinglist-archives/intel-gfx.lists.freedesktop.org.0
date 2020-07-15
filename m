Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C75220EBA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 16:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC07A6EB6D;
	Wed, 15 Jul 2020 14:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C67F36EB6D;
 Wed, 15 Jul 2020 14:06:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF8F9A00C7;
 Wed, 15 Jul 2020 14:06:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 15 Jul 2020 14:06:37 -0000
Message-ID: <159482199777.3438.396910864487226560@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Async_G?=
 =?utf-8?q?PU_relocations_only=22_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1444072980=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1444072980==
Content-Type: multipart/alternative;
 boundary="===============7845916431842149469=="

--===============7845916431842149469==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/23] Revert "drm/i915/gem: Async GPU relocations only" (rev3)
URL   : https://patchwork.freedesktop.org/series/79470/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8748_full -> Patchwork_18175_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18175_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18175_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18175_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [PASS][3] -> [FAIL][4] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl3/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          [PASS][9] -> [FAIL][10] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb4/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_18175_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [PASS][16] -> [TIMEOUT][17] ([i915#1958] / [i915#2119])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_eio@in-flight-contexts-10ms.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#1635]) +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          [PASS][20] -> [TIMEOUT][21] ([i915#1958] / [i915#2119])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][22] -> [TIMEOUT][23] ([i915#1958] / [i915#2119])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@gem_exec_reloc@basic-parallel.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][24] -> [TIMEOUT][25] ([i915#1958] / [i915#2119])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl6/igt@gem_exec_reloc@basic-parallel.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl1/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][26] -> [TIMEOUT][27] ([i915#1635] / [i915#1958] / [i915#2119])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl3/igt@gem_exec_reloc@basic-parallel.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl8/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][28] -> [TIMEOUT][29] ([i915#1958] / [i915#2119])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@gem_exec_reloc@basic-parallel.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb7/igt@gem_exec_reloc@basic-parallel.html
    - shard-glk:          [PASS][30] -> [TIMEOUT][31] ([i915#1958] / [i915#2119])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk7/igt@gem_exec_reloc@basic-parallel.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk5/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-apl:          [PASS][32] -> [INCOMPLETE][33] ([i915#1318] / [i915#1635])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl3/igt@gem_exec_whisper@basic-queues-priority.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][36] -> [DMESG-WARN][37] ([i915#402]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
    - shard-glk:          [PASS][38] -> [DMESG-FAIL][39] ([i915#118] / [i915#70] / [i915#95])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk9/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1982]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl6/igt@kms_flip@basic-plain-flip@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][42] -> [DMESG-WARN][43] ([i915#1982])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][44] -> [INCOMPLETE][45] ([i915#198])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#69])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-iclb:         [INCOMPLETE][52] ([i915#1185]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-iclb:         [FAIL][54] ([i915#1528]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-tglb:         [FAIL][56] ([i915#1930]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb5/igt@gem_exec_reloc@basic-concurrent0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-glk:          [FAIL][58] ([i915#1930]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][60] ([i915#1635] / [i915#1930]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][62] ([i915#1930]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl2/igt@gem_exec_reloc@basic-concurrent0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-iclb:         [FAIL][64] ([i915#1930]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb1/igt@gem_exec_reloc@basic-concurrent0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-snb:          [FAIL][66] ([i915#1930]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb5/igt@gem_exec_reloc@basic-concurrent0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-skl:          [FAIL][68] ([i915#1930]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][70] ([i915#1958] / [i915#2119]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][72] ([i915#1958]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][74] ([i915#1958]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@gem_exec_reloc@basic-concurrent16.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][76] ([i915#1958]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl3/igt@gem_exec_reloc@basic-concurrent16.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][78] ([i915#1635] / [i915#1958]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][80] ([i915#1958]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb8/igt@gem_exec_reloc@basic-concurrent16.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb7/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][82] ([i915#1958] / [i915#58] / [k.org#198133]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][84] ([i915#2036]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][86] ([i915#118] / [i915#95]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_softpin@noreloc-interruptible:
    - shard-snb:          [INCOMPLETE][88] ([i915#82]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_softpin@noreloc-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@gem_softpin@noreloc-interruptible.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-kbl:          [DMESG-WARN][90] ([i915#1982]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][92] ([i915#1982]) -> [PASS][93] +24 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl5/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [DMESG-WARN][94] ([i915#1982]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-snb:          [SKIP][96] ([fdo#109271]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][98] ([i915#1982]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +10 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][104] ([fdo#108145] / [i915#265]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         [DMESG-WARN][108] ([i915#402]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_psr@psr2_dpms.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@kms_psr@psr2_dpms.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][110] ([i915#1542]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@perf@blocking-parameterized.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb7/igt@perf@blocking-parameterized.html

  * igt@testdisplay:
    - shard-kbl:          [TIMEOUT][112] ([i915#1692] / [i915#1958] / [i915#2119]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl4/igt@testdisplay.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@testdisplay.html

  
#### Warnings ####

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][114] ([i915#1635]) -> [INCOMPLETE][115] ([i915#1635] / [i915#2179])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl6/igt@i915_selftest@mock@requests.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl6/igt@i915_selftest@mock@requests.html
    - shard-glk:          [INCOMPLETE][116] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][117] ([i915#2179] / [i915#58] / [k.org#198133])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk3/igt@i915_selftest@mock@requests.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk2/igt@i915_selftest@mock@requests.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][118] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][119] ([i915#1319] / [i915#2119]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][120] ([fdo#108145] / [i915#1635] / [i915#265]) -> [DMESG-FAIL][121] ([fdo#108145] / [i915#1635] / [i915#1982])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_cursor@pipe-d-overlay-size-128:
    - shard-snb:          [TIMEOUT][122] ([i915#1958] / [i915#2119]) -> [SKIP][123] ([fdo#109271]) +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@kms_plane_cursor@pipe-d-overlay-size-128.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@kms_plane_cursor@pipe-d-overlay-size-128.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1692]: https://gitlab.freedesktop.org/drm/intel/issues/1692
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2179]: https://gitlab.freedesktop.org/drm/intel/issues/2179
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8748 -> Patchwork_18175

  CI-20190529: 20190529
  CI_DRM_8748: 14b60366c7e4ab1c5f3f79673951a1eda4c403e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18175: 0bd31d2bfd05b0a9fe5c8e3f254242e8da35ed8b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/index.html

--===============7845916431842149469==
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
<tr><td><b>Series:</b></td><td>series starting with [01/23] Revert &quot;drm/i915/gem: Async GPU relocations only&quot; (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79470/">https://patchwork.freedesktop.org/series/79470/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8748_full -&gt; Patchwork_18175_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18175_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18175_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18175_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> +9 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl3/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb4/igt@gem_exec_reloc@basic-wide-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> +5 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18175_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl6/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl1/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl3/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl8/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb7/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk7/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk5/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl3/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl7/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1318">i915#1318</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk9/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/70">i915#70</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl6/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl1/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/69">i915#69</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb5/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb2/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk1/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl2/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl3/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb1/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb3/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb5/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb2/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl2/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl1/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl3/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb8/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb7/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/58">i915#58</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=198133">k.org#198133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2036">i915#2036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb1/igt@gem_exec_reloc@basic-spin-others@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@gem_softpin@noreloc-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@gem_softpin@noreloc-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl5/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-tglb6/igt@kms_psr@psr2_dpms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-tglb6/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-iclb8/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-iclb7/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl4/igt@testdisplay.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1692">i915#1692</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl4/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl6/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl6/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2179">i915#2179</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-glk3/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/58">i915#58</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=198133">k.org#198133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-glk2/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2179">i915#2179</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/58">i915#58</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=198133">k.org#198133</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-kbl7/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-kbl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-128:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8748/shard-snb6/igt@kms_plane_cursor@pipe-d-overlay-size-128.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18175/shard-snb6/igt@kms_plane_cursor@pipe-d-overlay-size-128.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8748 -&gt; Patchwork_18175</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8748: 14b60366c7e4ab1c5f3f79673951a1eda4c403e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18175: 0bd31d2bfd05b0a9fe5c8e3f254242e8da35ed8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7845916431842149469==--

--===============1444072980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1444072980==--
