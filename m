Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BCF654986
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7390010E5EC;
	Fri, 23 Dec 2022 00:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA44E10E5EA;
 Fri, 23 Dec 2022 00:01:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0878AADD7;
 Fri, 23 Dec 2022 00:01:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2877822289082416916=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 23 Dec 2022 00:01:55 -0000
Message-ID: <167175371587.30341.2629750452905186529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221222110620.276311-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_same_object_multiple_mmap_memory_leak?=
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

--===============2877822289082416916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix same object multiple mmap memory leak
URL   : https://patchwork.freedesktop.org/series/112166/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12522_full -> Patchwork_112166v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112166v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112166v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html

Participating hosts (13 -> 11)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112166v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-glk:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][3] ([i915#1849] / [i915#4098]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
    - {shard-tglu}:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - {shard-rkl}:        NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12522_full and Patchwork_112166v1_full:

### New IGT tests (1) ###

  * igt@gem_mmap_gtt@mmap-closed-bo:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_112166v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk9/igt@gem_lmem_swapping@parallel-random-engines.html

  * {igt@gem_mmap_gtt@mmap-closed-bo} (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][12] ([i915#4077])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-dg1-17/igt@gem_mmap_gtt@mmap-closed-bo.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#3886]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-glk:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2122])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271]) +67 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][20] ([i915#4573]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#658]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#533])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@sema-10:
    - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2994]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk1/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][24] ([i915#2582]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@fbdev@eof.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@fbdev@eof.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][26] ([i915#6252]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][28] ([i915#7052]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@gem_eio@suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_eio@suspend.html

  * igt@gem_eio@unwedge-stress:
    - {shard-dg1}:        [FAIL][30] ([i915#5784]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-dg1-15/igt@gem_eio@unwedge-stress.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][32] ([i915#2842]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][34] ([i915#3281]) -> [PASS][35] +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][36] ([i915#7276]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_userptr_blits@forbidden-operations:
    - {shard-rkl}:        [SKIP][38] ([i915#3282]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gen9_exec_parse@unaligned-jump:
    - {shard-rkl}:        [SKIP][40] ([i915#2527]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@gen9_exec_parse@unaligned-jump.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][42] ([i915#6258]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        [SKIP][44] ([i915#1397]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_atomic@plane-overlay-legacy:
    - {shard-rkl}:        [SKIP][46] ([i915#1845] / [i915#4098]) -> [PASS][47] +20 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@kms_atomic@plane-overlay-legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][48] ([i915#2346]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][50] ([fdo#110189] / [i915#3955]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][52] ([i915#2122]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - {shard-rkl}:        [SKIP][54] ([i915#1849] / [i915#4098]) -> [PASS][55] +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@primary_mmap_gtt:
    - {shard-rkl}:        [SKIP][56] ([i915#1072]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@kms_psr@primary_mmap_gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [FAIL][58] ([i915#43]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk8/igt@kms_vblank@pipe-c-accuracy-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][60] ([i915#1722]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@perf@polling-small-buf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@perf@polling-small-buf.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][62] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
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
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
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
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7681]: https://gitlab.freedesktop.org/drm/intel/issues/7681
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * IGT: IGT_7102 -> IGTPW_8263
  * Linux: CI_DRM_12522 -> Patchwork_112166v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8263: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8263/index.html
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112166v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html

--===============2877822289082416916==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix same object multiple mmap memory leak</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112166/">https://patchwork.freedesktop.org/series/112166/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12522_full -&gt; Patchwork_112166v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112166v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112166v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/index.html</p>
<h2>Participating hosts (13 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112166v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">FAIL</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12522_full and Patchwork_112166v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@gem_mmap_gtt@mmap-closed-bo:<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112166v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk9/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>{igt@gem_mmap_gtt@mmap-closed-bo} (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-dg1-17/igt@gem_mmap_gtt@mmap-closed-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk7/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk1/igt@sysfs_clients@sema-10.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@fbdev@eof.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-dg1-15/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#7276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-1/igt@kms_atomic@plane-overlay-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-glk8/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-glk8/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-4/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112166v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7102 -&gt; IGTPW_8263</li>
<li>Linux: CI_DRM_12522 -&gt; Patchwork_112166v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8263: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8263/index.html<br />
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112166v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2877822289082416916==--
