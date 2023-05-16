Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2068F70499C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 11:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79ABD10E33B;
	Tue, 16 May 2023 09:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 293AD10E332;
 Tue, 16 May 2023 09:44:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1CCAAADE4;
 Tue, 16 May 2023 09:44:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2123105684013273398=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 16 May 2023 09:44:51 -0000
Message-ID: <168423029185.14225.692975493202110893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
In-Reply-To: <20230515103225.688830-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_modeset_locking_issue_in_HDCP_MST_=28rev5=29?=
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

--===============2123105684013273398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix modeset locking issue in HDCP MST (rev5)
URL   : https://patchwork.freedesktop.org/series/117615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13148_full -> Patchwork_117615v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 9)
------------------------------

  Additional (2): shard-rkl0 shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117615v5_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-dg1}:        [PASS][1] -> ([DMESG-WARN][2], [PASS][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-dg1-18/igt@i915_pm_dc@dc9-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-17/igt@i915_pm_dc@dc9-dpms.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-13/igt@i915_pm_dc@dc9-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_117615v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_nop@basic-sequential:
    - shard-glk:          [PASS][4] -> ([PASS][5], [DMESG-WARN][6]) ([i915#118])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk7/igt@gem_exec_nop@basic-sequential.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@gem_exec_nop@basic-sequential.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk7/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> ([SKIP][7], [SKIP][8]) ([fdo#109271] / [i915#4613]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> ([WARN][9], [WARN][10]) ([i915#2658])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@gem_pwrite@basic-exhaustion.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][11] -> ([ABORT][12], [PASS][13]) ([i915#5566])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [PASS][14] -> ([ABORT][15], [PASS][16]) ([i915#4528] / [i915#8393])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-snb6/igt@i915_module_load@reload-no-display.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb7/igt@i915_module_load@reload-no-display.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb6/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [PASS][17] -> ([PASS][18], [DMESG-FAIL][19]) ([i915#5334])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-glk:          NOTRUN -> ([SKIP][20], [SKIP][21]) ([fdo#109271]) +42 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> ([SKIP][22], [SKIP][23]) ([fdo#109271] / [i915#3886]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][25] -> ([PASS][26], [FAIL][27]) ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2122])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-glk:          NOTRUN -> ([SKIP][30], [SKIP][31]) ([fdo#109271] / [i915#4579]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> ([SKIP][32], [SKIP][33]) ([fdo#109271] / [i915#658])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_psr2_su@page_flip-nv12.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_psr2_su@page_flip-nv12.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][34] ([i915#6268]) -> ([PASS][35], [PASS][36])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@unwedge-stress:
    - {shard-dg1}:        [FAIL][37] ([i915#5784]) -> ([PASS][38], [PASS][39])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-dg1-17/igt@gem_eio@unwedge-stress.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-17/igt@gem_eio@unwedge-stress.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-14/igt@gem_eio@unwedge-stress.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - {shard-rkl}:        [SKIP][40] ([i915#1397]) -> ([PASS][41], [PASS][42]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][43] ([i915#2346]) -> ([PASS][44], [PASS][45])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][46] ([i915#4767]) -> ([PASS][47], [PASS][48])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [FAIL][49] ([i915#79]) -> ([PASS][50], [PASS][51])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          [ABORT][52] ([i915#5213] / [i915#7941]) -> ([PASS][53], [PASS][54])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk8/igt@perf@stress-open-close@0-rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk4/igt@perf@stress-open-close@0-rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@perf@stress-open-close@0-rcs0.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-snb:          [ABORT][55] ([i915#4528] / [i915#8213]) -> ([ABORT][56], [ABORT][57]) ([i915#4528] / [i915#8189] / [i915#8213])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-snb5/igt@i915_suspend@basic-s2idle-without-i915.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb6/igt@i915_suspend@basic-s2idle-without-i915.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb5/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][58] ([i915#2346]) -> ([FAIL][59], [PASS][60]) ([i915#2346]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8393]: https://gitlab.freedesktop.org/drm/intel/issues/8393
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414


Build changes
-------------

  * Linux: CI_DRM_13148 -> Patchwork_117615v5

  CI-20190529: 20190529
  CI_DRM_13148: 57a535e042517014a85f33be6fa5ed22145c56e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7290: 0261157319fe993ccefaf270b2fc7a8ebef418ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117615v5: 57a535e042517014a85f33be6fa5ed22145c56e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/index.html

--===============2123105684013273398==
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
<tr><td><b>Series:</b></td><td>Fix modeset locking issue in HDCP MST (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117615/">https://patchwork.freedesktop.org/series/117615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13148_full -&gt; Patchwork_117615v5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 9)</h2>
<p>Additional (2): shard-rkl0 shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117615v5_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_dc@dc9-dpms:<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-dg1-18/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-17/igt@i915_pm_dc@dc9-dpms.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-13/igt@i915_pm_dc@dc9-dpms.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117615v5_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk7/igt@gem_exec_nop@basic-sequential.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@gem_exec_nop@basic-sequential.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk7/igt@gem_exec_nop@basic-sequential.html">DMESG-WARN</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@gem_pwrite@basic-exhaustion.html">WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@gem_pwrite@basic-exhaustion.html">WARN</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl2/igt@gen9_exec_parse@allowed-all.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl4/igt@gen9_exec_parse@allowed-all.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-snb6/igt@i915_module_load@reload-no-display.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb7/igt@i915_module_load@reload-no-display.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb6/igt@i915_module_load@reload-no-display.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8393">i915#8393</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk2/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-17/igt@gem_eio@unwedge-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-dg1-14/igt@gem_eio@unwedge-stress.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-rkl-1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk8/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk4/igt@perf@stress-open-close@0-rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk8/igt@perf@stress-open-close@0-rcs0.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-snb5/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb6/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-snb5/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13148/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117615v5/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13148 -&gt; Patchwork_117615v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13148: 57a535e042517014a85f33be6fa5ed22145c56e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7290: 0261157319fe993ccefaf270b2fc7a8ebef418ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117615v5: 57a535e042517014a85f33be6fa5ed22145c56e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2123105684013273398==--
