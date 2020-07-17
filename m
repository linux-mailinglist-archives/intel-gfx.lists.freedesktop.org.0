Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39C9224016
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 18:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD736EDEE;
	Fri, 17 Jul 2020 16:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0D596EDED;
 Fri, 17 Jul 2020 16:01:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0EDCA66C7;
 Fri, 17 Jul 2020 16:01:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jul 2020 16:01:22 -0000
Message-ID: <159500168262.14918.6940168128405614943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200717140605.24328-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200717140605.24328-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Remove_disordered_per-file_request_list_for_thrott?=
 =?utf-8?q?ling_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1350623155=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1350623155==
Content-Type: multipart/alternative;
 boundary="===============4182819360508140849=="

--===============4182819360508140849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Remove disordered per-file request list for throttling (rev2)
URL   : https://patchwork.freedesktop.org/series/79600/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8760_full -> Patchwork_18204_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18204_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18204_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18204_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@context-create:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-hsw7/igt@gem_eio@context-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-hsw1/igt@gem_eio@context-create.html

  * igt@gem_eio@in-flight-external:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk3/igt@gem_eio@in-flight-external.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk5/igt@gem_eio@in-flight-external.html

  * igt@gem_eio@in-flight-internal-1us:
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6] +11 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@gem_eio@in-flight-internal-1us.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@gem_eio@in-flight-internal-1us.html

  * igt@gem_eio@in-flight-internal-immediate:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] +11 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb3/igt@gem_eio@in-flight-internal-immediate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb1/igt@gem_eio@in-flight-internal-immediate.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk2/igt@gem_eio@in-flight-internal-immediate.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][10] -> [INCOMPLETE][11] +12 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl2/igt@gem_eio@in-flight-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl9/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@wait-1us:
    - shard-kbl:          [PASS][12] -> [INCOMPLETE][13] +11 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl2/igt@gem_eio@wait-1us.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl7/igt@gem_eio@wait-1us.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.0@gl-1.0-polygon-line-aa (NEW):
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][14] +4 similar issues
   [14]: None
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][15] +4 similar issues
   [15]: None

  * spec@!opengl 2.0@incomplete-cubemap-size (NEW):
    - pig-snb-2600:       NOTRUN -> [INCOMPLETE][16] +8 similar issues
   [16]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8760_full and Patchwork_18204_full:

### New Piglit tests (11) ###

  * spec@!opengl 1.0@gl-1.0-edgeflag-const:
    - Statuses : 3 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.0@gl-1.0-polygon-line-aa:
    - Statuses : 2 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.1@gl-1.1-read-pixels-after-display-list:
    - Statuses : 3 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.1@gl-1.1-set-vertex-color-after-draw:
    - Statuses : 2 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.2@draw-elements-vs-inputs:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 2.0@gl-2.0-active-sampler-conflict:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 2.0@incomplete-cubemap-format:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 2.0@incomplete-cubemap-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 2.0@incomplete-texture-glsl:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 3.0@clearbuffer-depth:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@ext_texture_array@array-texture:
    - Statuses : 3 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18204_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1528])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb2/igt@gem_eio@in-flight-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb7/igt@gem_eio@in-flight-suspend.html
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([i915#155]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl1/igt@gem_eio@in-flight-suspend.html
    - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#1185]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb1/igt@gem_eio@in-flight-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@reset-stress:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([CI#80])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-hsw2/igt@gem_eio@reset-stress.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-hsw1/igt@gem_eio@reset-stress.html

  * igt@gem_eio@suspend:
    - shard-glk:          [PASS][27] -> [INCOMPLETE][28] ([i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk4/igt@gem_eio@suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk7/igt@gem_eio@suspend.html

  * igt@gem_eio@wait-immediate:
    - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#82]) +13 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb4/igt@gem_eio@wait-immediate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb1/igt@gem_eio@wait-immediate.html

  * igt@gem_eio@wait-wedge-10ms:
    - shard-apl:          [PASS][31] -> [INCOMPLETE][32] ([i915#1635]) +12 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl2/igt@gem_eio@wait-wedge-10ms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl1/igt@gem_eio@wait-wedge-10ms.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#2079])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl1/igt@gem_exec_balancer@bonded-early.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180] / [i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-iclb:         [PASS][41] -> [DMESG-WARN][42] ([i915#1982])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][43] -> [DMESG-WARN][44] ([i915#1982]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1188])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_hdr@bpc-switch.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@crtc-id:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1982]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_vblank@crtc-id.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl10/igt@kms_vblank@crtc-id.html

  * igt@kms_vblank@pipe-b-query-busy-hang:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#1982])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_vblank@pipe-b-query-busy-hang.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl6/igt@kms_vblank@pipe-b-query-busy-hang.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-iclb:         [FAIL][55] ([i915#926]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@gem_exec_balancer@bonded-early.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][57] ([i915#118] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb5/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb7/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-snb:          [TIMEOUT][61] ([i915#1958] / [i915#2119]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [FAIL][67] ([i915#1635] / [i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb8/igt@kms_psr@psr2_basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
    - shard-tglb:         [INCOMPLETE][75] -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-idle@rcs0:
    - shard-snb:          [FAIL][79] ([i915#1958]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@perf_pmu@busy-idle@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@perf_pmu@busy-idle@rcs0.html

  * igt@perf_pmu@busy-idle@vcs0:
    - shard-snb:          [INCOMPLETE][81] ([i915#2119] / [i915#82]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@perf_pmu@busy-idle@vcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@perf_pmu@busy-idle@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][83] ([i915#1958] / [i915#2119]) -> [FAIL][84] ([i915#1930])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-snb:          [TIMEOUT][85] ([i915#1958] / [i915#2119]) -> [SKIP][86] ([fdo#109271]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][87], [FAIL][88]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][89] ([i915#1635] / [i915#2110])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl4/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl3/igt@runner@aborted.html
    - shard-glk:          [FAIL][90] ([i915#2110] / [k.org#202321]) -> [FAIL][91] ([k.org#202321])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk3/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk6/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8760 -> Patchwork_18204

  CI-20190529: 20190529
  CI_DRM_8760: 6cd3f0d5b81362d933c87318fa0bc3badd9ab92d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18204: 63cb29a1fde1938b379ca87cc77674b5dbaa3d44 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/index.html

--===============4182819360508140849==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Remove disordered per-file request list for throttling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79600/">https://patchwork.freedesktop.org/series/79600/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8760_full -&gt; Patchwork_18204_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18204_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18204_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18204_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@context-create:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-hsw7/igt@gem_eio@context-create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-hsw1/igt@gem_eio@context-create.html">INCOMPLETE</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk3/igt@gem_eio@in-flight-external.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk5/igt@gem_eio@in-flight-external.html">INCOMPLETE</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-1us:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@gem_eio@in-flight-internal-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@gem_eio@in-flight-internal-1us.html">INCOMPLETE</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb3/igt@gem_eio@in-flight-internal-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb1/igt@gem_eio@in-flight-internal-immediate.html">INCOMPLETE</a> +11 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk2/igt@gem_eio@in-flight-internal-immediate.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl2/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl9/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl2/igt@gem_eio@wait-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl7/igt@gem_eio@wait-1us.html">INCOMPLETE</a> +11 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@!opengl 1.0@gl-1.0-polygon-line-aa (NEW):</p>
<ul>
<li>
<p>pig-skl-6260u:      NOTRUN -&gt; <a href="None">INCOMPLETE</a> +4 similar issues</p>
</li>
<li>
<p>pig-glk-j5005:      NOTRUN -&gt; <a href="None">INCOMPLETE</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>spec@!opengl 2.0@incomplete-cubemap-size (NEW):</p>
<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="None">INCOMPLETE</a> +8 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8760_full and Patchwork_18204_full:</p>
<h3>New Piglit tests (11)</h3>
<ul>
<li>
<p>spec@!opengl 1.0@gl-1.0-edgeflag-const:</p>
<ul>
<li>Statuses : 3 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.0@gl-1.0-polygon-line-aa:</p>
<ul>
<li>Statuses : 2 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.1@gl-1.1-read-pixels-after-display-list:</p>
<ul>
<li>Statuses : 3 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.1@gl-1.1-set-vertex-color-after-draw:</p>
<ul>
<li>Statuses : 2 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.2@draw-elements-vs-inputs:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 2.0@gl-2.0-active-sampler-conflict:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 2.0@incomplete-cubemap-format:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 2.0@incomplete-cubemap-size:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 2.0@incomplete-texture-glsl:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 3.0@clearbuffer-depth:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@ext_texture_array@array-texture:</p>
<ul>
<li>Statuses : 3 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18204_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb2/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb7/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl4/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl1/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb1/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb5/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-hsw2/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-hsw1/igt@gem_eio@reset-stress.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk4/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk7/igt@gem_eio@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-immediate:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb4/igt@gem_eio@wait-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb1/igt@gem_eio@wait-immediate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl2/igt@gem_eio@wait-wedge-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl1/igt@gem_eio@wait-wedge-10ms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl4/igt@gem_exec_balancer@bonded-early.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl1/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl9/igt@kms_vblank@crtc-id.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl10/igt@kms_vblank@crtc-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-busy-hang:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_vblank@pipe-b-query-busy-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl6/igt@kms_vblank@pipe-b-query-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb2/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb6/igt@gem_exec_balancer@bonded-early.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk9/igt@gem_exec_whisper@basic-queues-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-skl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-iclb8/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@rcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@perf_pmu@busy-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@perf_pmu@busy-idle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@perf_pmu@busy-idle@vcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@perf_pmu@busy-idle@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-snb1/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-snb6/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-apl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8760/shard-glk3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18204/shard-glk6/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8760 -&gt; Patchwork_18204</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8760: 6cd3f0d5b81362d933c87318fa0bc3badd9ab92d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5738: bc8b56fe177af34fbde7b96f1f66614a0014c6ef @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18204: 63cb29a1fde1938b379ca87cc77674b5dbaa3d44 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4182819360508140849==--

--===============1350623155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1350623155==--
