Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D019DE02
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 20:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B796EC6C;
	Fri,  3 Apr 2020 18:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD3546EC69;
 Fri,  3 Apr 2020 18:35:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABD62A47DA;
 Fri,  3 Apr 2020 18:35:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 18:35:25 -0000
Message-ID: <158593892567.13350.6873025900412826706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403120150.17091-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403120150.17091-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_current_i915=5Fvma=2Epin=5Fcount_status_first_on?=
 =?utf-8?q?_unbind_=28rev6=29?=
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

Series: drm/i915: Check current i915_vma.pin_count status first on unbind (rev6)
URL   : https://patchwork.freedesktop.org/series/72529/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8244_full -> Patchwork_17199_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17199_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17199_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17199_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-glk3/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-glk1/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-tglb3/igt@gem_tiled_swapping@non-threaded.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-tglb7/igt@gem_tiled_swapping@non-threaded.html
    - shard-snb:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-snb6/igt@gem_tiled_swapping@non-threaded.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-snb5/igt@gem_tiled_swapping@non-threaded.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_timeslice_duration@timeout@rcs0}:
    - shard-skl:          [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17199_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-kbl2/igt@gem_tiled_swapping@non-threaded.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-kbl6/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([i915#656])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl3/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl8/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1185])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb8/igt@i915_suspend@debugfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb3/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl10/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-hsw4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-hsw2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#177] / [i915#52] / [i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180] / [i915#93] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#46])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#221])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#1188])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl4/igt@kms_hdr@bpc-switch.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl3/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl3/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [FAIL][47] ([i915#1528]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][49] ([fdo#110854]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          [FAIL][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-snb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-apl:          [FAIL][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [FAIL][55] ([i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl7/igt@gem_tiled_swapping@non-threaded.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl2/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][57] ([i915#1531]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-tglb2/igt@i915_selftest@live@requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-tglb8/igt@i915_selftest@live@requests.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-glk:          [FAIL][59] ([i915#52] / [i915#54]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [INCOMPLETE][61] ([i915#61]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-hsw1/igt@kms_flip@flip-vs-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-hsw2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-tglb3/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb3/igt@kms_psr2_su@frontbuffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb7/igt@kms_psr@psr2_primary_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-kbl2/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-kbl7/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-apl:          [FAIL][79] ([i915#1423]) -> ([FAIL][80], [FAIL][81]) ([i915#1423] / [i915#529])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/shard-apl8/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8244 -> Patchwork_17199

  CI-20190529: 20190529
  CI_DRM_8244: 55348aac86bd6f0c4ce4d3d8a0e227f6a20a72f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17199: 959059739471c0b4afb54f2bc9ddba88a9d7da12 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
