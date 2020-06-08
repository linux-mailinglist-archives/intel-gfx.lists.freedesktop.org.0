Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA2A1F10D4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 02:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1456E226;
	Mon,  8 Jun 2020 00:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5F596E225;
 Mon,  8 Jun 2020 00:58:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DECE9A0019;
 Mon,  8 Jun 2020 00:58:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 08 Jun 2020 00:58:26 -0000
Message-ID: <159157790688.14461.346273860418862137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915=3A_Adjust_the_sentinel_a?=
 =?utf-8?q?ssert_to_match_implementation?=
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

Series: series starting with [01/28] drm/i915: Adjust the sentinel assert to match implementation
URL   : https://patchwork.freedesktop.org/series/78103/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8597_full -> Patchwork_17902_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17902_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17902_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17902_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk1/igt@gem_ctx_exec@basic-nohangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk2/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb5/igt@gem_ctx_exec@basic-nohangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb8/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl7/igt@gem_ctx_exec@basic-nohangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl9/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_params@invalid-batch-start-offset}:
    - shard-iclb:         [PASS][13] -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb6/igt@gem_exec_params@invalid-batch-start-offset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb2/igt@gem_exec_params@invalid-batch-start-offset.html

  * {igt@gem_exec_schedule@preempt-engines@bcs0}:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl7/igt@gem_exec_schedule@preempt-engines@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl2/igt@gem_exec_schedule@preempt-engines@bcs0.html

  * {igt@gem_exec_schedule@preempt-engines@rcs0}:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl7/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl9/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * {igt@gem_exec_schedule@reorder-wide@bcs0}:
    - shard-skl:          [PASS][19] -> [FAIL][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl3/igt@gem_exec_schedule@reorder-wide@bcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl5/igt@gem_exec_schedule@reorder-wide@bcs0.html

  * {igt@gem_exec_schedule@reorder-wide@rcs0}:
    - shard-apl:          [PASS][21] -> [FAIL][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl2/igt@gem_exec_schedule@reorder-wide@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl1/igt@gem_exec_schedule@reorder-wide@rcs0.html
    - shard-glk:          [PASS][23] -> [FAIL][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk5/igt@gem_exec_schedule@reorder-wide@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk5/igt@gem_exec_schedule@reorder-wide@rcs0.html

  * {igt@gem_exec_schedule@reorder-wide@vcs0}:
    - shard-iclb:         [PASS][25] -> [FAIL][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb1/igt@gem_exec_schedule@reorder-wide@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb1/igt@gem_exec_schedule@reorder-wide@vcs0.html

  * {igt@gem_exec_schedule@reorder-wide@vcs1}:
    - shard-kbl:          [PASS][27] -> [FAIL][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl6/igt@gem_exec_schedule@reorder-wide@vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl1/igt@gem_exec_schedule@reorder-wide@vcs1.html
    - shard-tglb:         [PASS][29] -> [FAIL][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb5/igt@gem_exec_schedule@reorder-wide@vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb6/igt@gem_exec_schedule@reorder-wide@vcs1.html

  * {igt@gem_userptr_blits@invalid-mmap-offset-unsync}:
    - shard-iclb:         NOTRUN -> [TIMEOUT][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8597_full and Patchwork_17902_full:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.10] s

  * igt@i915_selftest@mock@scheduler:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 1.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_17902_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-apl:          [PASS][32] -> [FAIL][33] ([i915#1528])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_create@basic:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#93] / [i915#95])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@gem_exec_create@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl7/igt@gem_exec_create@basic.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#118] / [i915#95]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#69])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl4/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rps@waitboost:
    - shard-hsw:          [PASS][40] -> [FAIL][41] ([i915#39]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw1/igt@i915_pm_rps@waitboost.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw8/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl8/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl4/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#95]) +20 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-iclb:         [PASS][48] -> [DMESG-WARN][49] ([i915#1982])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
    - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982]) +9 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html

  * igt@kms_vblank@pipe-b-wait-forked:
    - shard-hsw:          [PASS][58] -> [INCOMPLETE][59] ([i915#61])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw6/igt@kms_vblank@pipe-b-wait-forked.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw7/igt@kms_vblank@pipe-b-wait-forked.html

  * igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled:
    - shard-tglb:         [PASS][60] -> [DMESG-WARN][61] ([i915#402])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb6/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb7/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-tglb:         [FAIL][62] ([i915#1930]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb8/igt@gem_exec_reloc@basic-concurrent0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb8/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-glk:          [FAIL][64] ([i915#1930]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][66] ([i915#1930]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl1/igt@gem_exec_reloc@basic-concurrent0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][68] ([i915#1930]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl3/igt@gem_exec_reloc@basic-concurrent0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl6/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-hsw:          [FAIL][70] ([i915#1930]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw2/igt@gem_exec_reloc@basic-concurrent0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw4/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-iclb:         [FAIL][72] ([i915#1930]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb3/igt@gem_exec_reloc@basic-concurrent0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-snb:          [FAIL][74] ([i915#1930]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-snb5/igt@gem_exec_reloc@basic-concurrent0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-snb2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-skl:          [FAIL][76] ([i915#1930]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl6/igt@gem_exec_reloc@basic-concurrent0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl10/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [TIMEOUT][78] ([i915#1958]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][80] ([i915#1958]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb7/igt@gem_exec_reloc@basic-concurrent16.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-hsw:          [TIMEOUT][82] ([i915#1958]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw8/igt@gem_exec_reloc@basic-concurrent16.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][84] ([i915#1958]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl2/igt@gem_exec_reloc@basic-concurrent16.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][86] ([i915#1958]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@gem_exec_reloc@basic-concurrent16.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][88] ([i915#1635] / [i915#1958]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl8/igt@gem_exec_reloc@basic-concurrent16.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl7/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][90] ([i915#1958]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb3/igt@gem_exec_reloc@basic-concurrent16.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][92] ([i915#1958] / [i915#58] / [k.org#198133]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk2/igt@gem_exec_reloc@basic-concurrent16.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][94] ([i915#118] / [i915#95]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][98] ([i915#118] / [i915#95]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][100] ([i915#72]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-WARN][102] ([i915#1982]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-apl:          [DMESG-WARN][104] ([i915#95]) -> [PASS][105] +22 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1}:
    - shard-glk:          [FAIL][106] ([i915#79]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
    - shard-skl:          [FAIL][108] ([i915#1928]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][110] ([i915#699]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][112] ([i915#1982]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117] +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][118] ([i915#1542]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw6/igt@perf@blocking-parameterized.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-kbl:          [DMESG-WARN][120] ([i915#93] / [i915#95]) -> [DMESG-FAIL][121] ([i915#95])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-apl:          [DMESG-WARN][122] ([i915#95]) -> [DMESG-FAIL][123] ([i915#95])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl1/igt@gem_ctx_exec@basic-nohangcheck.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][124] ([fdo#110321] / [i915#95]) -> [TIMEOUT][125] ([i915#1319])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl2/igt@kms_content_protection@atomic.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][126] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][127] ([i915#1319] / [i915#1635]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl3/igt@kms_content_protection@atomic-dpms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][128] ([i915#1319]) -> [TIMEOUT][129] ([i915#1319] / [i915#1958])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_content_protection@legacy.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][130] ([i915#1319] / [i915#1635]) -> [FAIL][131] ([fdo#110321]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-apl6/igt@kms_content_protection@lic.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-apl2/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][132] ([i915#1319] / [i915#1958]) -> [TIMEOUT][133] ([i915#1319])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl4/igt@kms_content_protection@lic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][134] ([i915#93] / [i915#95]) -> [DMESG-WARN][135] ([i915#180] / [i915#93] / [i915#95])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][136] ([IGT#5]) -> [DMESG-WARN][137] ([i915#1982])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [TIMEOUT][138] ([i915#1958]) -> [SKIP][139] ([fdo#109271]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
    - shard-hsw:          [TIMEOUT][140] ([i915#1958]) -> [SKIP][141] ([fdo#109271])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/shard-hsw8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/shard-hsw8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8597 -> Patchwork_17902

  CI-20190529: 20190529
  CI_DRM_8597: aadd3cf12a7c515bca8752da797ded56a003617b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5696: 8d1744239f4300eb12d5bab14a30b79d9c8dd364 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17902: 1dad2fcca4f707aa870be1a45bb28bfb4c2b0f73 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
