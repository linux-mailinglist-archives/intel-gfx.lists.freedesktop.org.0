Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B926AAEA2
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Mar 2023 09:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B5A10E00C;
	Sun,  5 Mar 2023 08:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D378610E002;
 Sun,  5 Mar 2023 08:52:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C734A47EB;
 Sun,  5 Mar 2023 08:52:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8476844848911410740=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Date: Sun, 05 Mar 2023 08:52:06 -0000
Message-ID: <167800632660.20598.15463386877461294763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTWlz?=
 =?utf-8?q?c_Meteorlake_patches_=28rev3=29?=
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

--===============8476844848911410740==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Misc Meteorlake patches (rev3)
URL   : https://patchwork.freedesktop.org/series/112700/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12799_full -> Patchwork_112700v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (19 -> 19)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112700v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs (NEW):
    - {shard-dg2-11}:     NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_barrier_race@remote-request@rcs0}:
    - {shard-dg2-7}:      NOTRUN -> [ABORT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-7/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - {shard-dg2-5}:      NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - {shard-rkl}:        [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - {shard-dg2-11}:     NOTRUN -> [TIMEOUT][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@uevent@pipe-a-dp-2:
    - {shard-dg2-12}:     NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-12/igt@kms_content_protection@uevent@pipe-a-dp-2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - {shard-dg2-8}:      NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - {shard-dg2-5}:      NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * {igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-dp-4}:
    - {shard-dg2-11}:     NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-dp-4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12799_full and Patchwork_112700v3_full:

### New IGT tests (39) ###

  * igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-a-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-d-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ab-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ab-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ab-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ac-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ac-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ac-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ad-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ad-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@ad-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bc-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bc-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bc-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bd-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bd-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@bd-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@cd-dp2-dp3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@cd-dp2-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@2x-flip-vs-modeset@cd-dp3-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@nonexisting-fb-interruptible@d-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@plain-flip-ts-check@d-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-a-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-c-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-d-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-a-dp-1-pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-a-dp-2-pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-a-dp-2-pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-a-dp-3-pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-b-dp-1-pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-b-dp-2-pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-b-dp-2-pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_setmode@basic@pipe-b-dp-3-pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_112700v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-9:       NOTRUN -> [SKIP][11] ([i915#7701])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-10:      NOTRUN -> [SKIP][12] ([i915#3555] / [i915#5325])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-10:      NOTRUN -> [SKIP][13] ([i915#5325])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-10:      NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][19] ([i915#4613]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu-9:       NOTRUN -> [SKIP][20] ([i915#4613]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_media_vme:
    - shard-tglu-10:      NOTRUN -> [SKIP][21] ([i915#284])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_media_vme.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-10:      NOTRUN -> [WARN][22] ([i915#2658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglu-9:       NOTRUN -> [SKIP][23] ([i915#4270])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu-10:      NOTRUN -> [SKIP][24] ([i915#4270]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-10:      NOTRUN -> [SKIP][25] ([fdo#110542])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][26] -> [ABORT][27] ([i915#5566])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu-9:       NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu-10:      NOTRUN -> [SKIP][29] ([i915#2527] / [i915#2856]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-tglu-10:      NOTRUN -> [SKIP][30] ([i915#7561]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglu-9:       NOTRUN -> [FAIL][31] ([i915#3989] / [i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu-10:      NOTRUN -> [WARN][32] ([i915#2681]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-9:       NOTRUN -> [SKIP][33] ([fdo#111644] / [i915#1397])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-tglu-10:      NOTRUN -> [SKIP][34] ([fdo#111644] / [i915#1397])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglu-10:      NOTRUN -> [SKIP][35] ([fdo#109506])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu-10:      NOTRUN -> [SKIP][36] ([i915#5286]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglu-10:      NOTRUN -> [SKIP][37] ([fdo#111614]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-tglu-9:       NOTRUN -> [SKIP][38] ([fdo#111615] / [i915#1845] / [i915#7651]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglu-10:      NOTRUN -> [SKIP][39] ([fdo#111615]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglu-9:       NOTRUN -> [SKIP][40] ([i915#2705])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglu-10:      NOTRUN -> [SKIP][41] ([i915#2705])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][42] ([i915#6095]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][43] ([fdo#111615] / [i915#3689]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][44] ([i915#3689] / [i915#3886]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglu-9:       NOTRUN -> [SKIP][45] ([i915#1845] / [i915#7651]) +50 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][46] ([i915#3689] / [i915#6095]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][47] ([i915#3689]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu-9:       NOTRUN -> [SKIP][48] ([i915#3742])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu-10:      NOTRUN -> [SKIP][49] ([i915#7828]) +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-tglu-9:       NOTRUN -> [SKIP][50] ([i915#7828]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [FAIL][51] ([i915#315] / [i915#6946]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_content_protection@content_type_change:
    - shard-tglu-10:      NOTRUN -> [SKIP][52] ([i915#6944] / [i915#7116] / [i915#7118])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-10:      NOTRUN -> [SKIP][53] ([i915#3359])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-tglu-9:       NOTRUN -> [SKIP][54] ([i915#1845]) +10 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-tglu-10:      NOTRUN -> [SKIP][55] ([i915#3555]) +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-tglu-10:      NOTRUN -> [SKIP][56] ([fdo#109274])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#72])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-10:      NOTRUN -> [SKIP][59] ([i915#4103])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#2346])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2346])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu-10:      NOTRUN -> [FAIL][64] ([i915#4767])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu-10:      NOTRUN -> [SKIP][65] ([fdo#109274] / [i915#3637] / [i915#3966])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-tglu-10:      NOTRUN -> [SKIP][66] ([fdo#109274] / [i915#3637]) +6 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][67] ([fdo#109274] / [i915#3637]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][68] ([i915#3637]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu-9:       NOTRUN -> [SKIP][69] ([i915#3555]) +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-10:      NOTRUN -> [SKIP][70] ([i915#2587] / [i915#2672]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglu-10:      NOTRUN -> [SKIP][71] ([fdo#109285])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglu-9:       NOTRUN -> [SKIP][72] ([i915#1849]) +34 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu-10:      NOTRUN -> [SKIP][73] ([fdo#109280]) +18 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglu-10:      NOTRUN -> [SKIP][74] ([fdo#110189]) +24 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-9:       NOTRUN -> [SKIP][75] ([i915#1839])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-tglu-10:      NOTRUN -> [SKIP][76] ([fdo#109289]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane@plane-position-covered@pipe-a-planes:
    - shard-tglu-9:       NOTRUN -> [SKIP][77] ([i915#1849] / [i915#3558]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271]) +12 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-snb4/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][79] ([i915#5176]) +7 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu-9:       NOTRUN -> [SKIP][80] ([i915#6953] / [i915#8152])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][81] ([i915#5235]) +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-10:      NOTRUN -> [SKIP][82] ([i915#6524])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu-9:       NOTRUN -> [SKIP][83] ([i915#6524])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-tglu-10:      NOTRUN -> [SKIP][84] ([i915#658])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu-10:      NOTRUN -> [SKIP][85] ([fdo#111068] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-tglu-9:       NOTRUN -> [SKIP][86] ([fdo#111068] / [i915#658])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu-9:       NOTRUN -> [SKIP][87] ([fdo#109642] / [fdo#111068] / [i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@sprite_mmap_cpu:
    - shard-tglu-9:       NOTRUN -> [SKIP][88] ([fdo#110189]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr@sprite_mmap_cpu.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu-10:      NOTRUN -> [SKIP][89] ([i915#5289])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-9:       NOTRUN -> [SKIP][90] ([fdo#111615] / [i915#1845])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-tglu-9:       NOTRUN -> [SKIP][91] ([fdo#109274])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglu-9:       NOTRUN -> [SKIP][92] ([fdo#109289])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-small-buf:
    - shard-tglu-9:       NOTRUN -> [FAIL][93] ([i915#1722])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@perf@polling-small-buf.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-tglu-10:      NOTRUN -> [SKIP][94] ([fdo#112283])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@perf_pmu@event-wait@rcs0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-tglu-9:       NOTRUN -> [SKIP][95] ([fdo#109295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@prime_vgem@basic-fence-flip.html

  * igt@v3d/v3d_get_param@get-bad-param:
    - shard-tglu-10:      NOTRUN -> [SKIP][96] ([fdo#109315] / [i915#2575]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@v3d/v3d_get_param@get-bad-param.html

  * igt@v3d/v3d_mmap@mmap-bad-flags:
    - shard-tglu-9:       NOTRUN -> [SKIP][97] ([fdo#109315] / [i915#2575]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@v3d/v3d_mmap@mmap-bad-flags.html

  * igt@vc4/vc4_create_bo@create-bo-4096:
    - shard-tglu-10:      NOTRUN -> [SKIP][98] ([i915#2575]) +6 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@vc4/vc4_create_bo@create-bo-4096.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-tglu-9:       NOTRUN -> [SKIP][99] ([i915#2575]) +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][100] ([i915#2582]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@fbdev@read.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][102] ([fdo#103375]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - {shard-rkl}:        [SKIP][104] ([i915#3281]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gem_exec_reloc@basic-write-gtt-active.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_madvise@dontneed-before-exec:
    - {shard-rkl}:        [SKIP][106] ([i915#3282]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gem_madvise@dontneed-before-exec.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gem_madvise@dontneed-before-exec.html

  * igt@gen9_exec_parse@allowed-all:
    - {shard-rkl}:        [SKIP][108] ([i915#2527]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][110] ([i915#6258]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        [SKIP][112] ([i915#658]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][114] ([fdo#109308]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@i915_pm_rpm@pm-tiling.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_pm_rps@basic-api:
    - {shard-dg2-10}:     [SKIP][116] ([i915#6621]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-dg2-10/igt@i915_pm_rps@basic-api.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-10/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][118] ([i915#2346]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][120] ([i915#79]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - {shard-rkl}:        [SKIP][122] ([i915#1849] / [i915#4098]) -> [PASS][123] +16 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_psr@primary_mmap_gtt:
    - {shard-rkl}:        [SKIP][124] ([i915#1072]) -> [PASS][125] +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@kms_psr@primary_mmap_gtt.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_rotation_crc@exhaust-fences:
    - {shard-rkl}:        [SKIP][126] ([i915#1845] / [i915#4098]) -> [PASS][127] +21 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@kms_rotation_crc@exhaust-fences.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - {shard-rkl}:        [SKIP][128] ([fdo#109289]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@perf@gen12-oa-tlb-invalidate.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
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
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
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
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5410]: https://gitlab.freedesktop.org/drm/intel/issues/5410
  [i915#5431]: https://gitlab.freedesktop.org/drm/intel/issues/5431
  [i915#5433]: https://gitlab.freedesktop.org/drm/intel/issues/5433
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5445]: https://gitlab.freedesktop.org/drm/intel/issues/5445
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5464]: https://gitlab.freedesktop.org/drm/intel/issues/5464
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
  [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6530]: https://gitlab.freedesktop.org/drm/intel/issues/6530
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7507]: https://gitlab.freedesktop.org/drm/intel/issues/7507
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7997]: https://gitlab.freedesktop.org/drm/intel/issues/7997
  [i915#8077]: https://gitlab.freedesktop.org/drm/intel/issues/8077
  [i915#8150]: https://gitlab.freedesktop.org/drm/intel/issues/8150
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
  [i915#8155]: https://gitlab.freedesktop.org/drm/intel/issues/8155
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8231]: https://gitlab.freedesktop.org/drm/intel/issues/8231


Build changes
-------------

  * Linux: CI_DRM_12799 -> Patchwork_112700v3

  CI-20190529: 20190529
  CI_DRM_12799: 5f6631c00a7f226c990aecc643bc9fa70da1599a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112700v3: 5f6631c00a7f226c990aecc643bc9fa70da1599a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/index.html

--===============8476844848911410740==
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
<tr><td><b>Series:</b></td><td>Misc Meteorlake patches (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112700/">https://patchwork.freedesktop.org/series/112700/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12799_full -&gt; Patchwork_112700v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (19 -&gt; 19)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112700v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs (NEW):<ul>
<li>{shard-dg2-11}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_barrier_race@remote-request@rcs0}:</p>
<ul>
<li>{shard-dg2-7}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-7/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>{shard-dg2-5}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>{shard-dg2-11}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-2:</p>
<ul>
<li>{shard-dg2-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-12/igt@kms_content_protection@uevent@pipe-a-dp-2.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-dg2-8}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>{shard-dg2-5}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-dp-4}:</p>
<ul>
<li>{shard-dg2-11}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-dp-4.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12799_full and Patchwork_112700v3_full:</p>
<h3>New IGT tests (39)</h3>
<ul>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@3x-outputs:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x64@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-d-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ab-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ab-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ab-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ac-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ac-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ac-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ad-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ad-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@ad-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bc-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bc-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bc-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bd-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bd-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@bd-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@cd-dp2-dp3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@cd-dp2-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset@cd-dp3-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@d-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-c-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-0-25@pipe-d-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-dp-1-pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-dp-2-pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-dp-2-pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-dp-3-pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-dp-1-pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-dp-2-pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-dp-2-pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-dp-3-pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112700v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111644">fdo#111644</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111644">fdo#111644</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/315">i915#315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6946">i915#6946</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_content_protection@content_type_change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-a-planes:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_plane@plane-position-covered@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-snb4/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_cpu:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_psr@sprite_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-param:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@v3d/v3d_get_param@get-bad-param.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-flags:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@v3d/v3d_mmap@mmap-bad-flags.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-4096:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-10/igt@vc4/vc4_create_bo@create-bo-4096.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-tglu-9/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-2/igt@gem_eio@in-flight-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt-active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gem_madvise@dontneed-before-exec.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{shard-dg2-10}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-dg2-10/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-dg2-10/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12799/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112700v3/shard-rkl-6/igt@perf@gen12-oa-tlb-invalidate.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12799 -&gt; Patchwork_112700v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12799: 5f6631c00a7f226c990aecc643bc9fa70da1599a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112700v3: 5f6631c00a7f226c990aecc643bc9fa70da1599a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8476844848911410740==--
