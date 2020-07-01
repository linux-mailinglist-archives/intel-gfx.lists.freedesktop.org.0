Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F342108BE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 11:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18086E437;
	Wed,  1 Jul 2020 09:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C6946E1D7;
 Wed,  1 Jul 2020 09:58:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 760E1A363D;
 Wed,  1 Jul 2020 09:58:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 09:58:14 -0000
Message-ID: <159359749447.16667.58726341795670305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/33=5D_drm/i915/gt=3A_Harden_the_heartbe?=
 =?utf-8?q?at_against_a_stuck_driver?=
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

Series: series starting with [01/33] drm/i915/gt: Harden the heartbeat against a stuck driver
URL   : https://patchwork.freedesktop.org/series/78987/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8683 -> Patchwork_18054
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/index.html

Known issues
------------

  Here are the changes found in Patchwork_18054 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][1] -> [DMESG-WARN][2] ([i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-icl-y/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] ([i915#62] / [i915#92] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][11] ([i915#1888]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][15] ([fdo#109271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [DMESG-WARN][21] ([i915#402]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#1982] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8683/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8683 -> Patchwork_18054

  CI-20190529: 20190529
  CI_DRM_8683: 55336f177ce2ab9832293770439aa138bc51af07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18054: 06d3b687d37cf1d86cd205ebe076c7cc670b301f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

06d3b687d37c drm/i915/gt: Enable ring scheduling for gen6/7
86f134b795e6 drm/i915/gt: Implement ring scheduler for gen6/7
8071d6c00487 drm/i915/gt: Infrastructure for ring scheduling
988103172126 drm/i915/gt: Use client timeline address for seqno writes
2dca796d3efe drm/i915/gt: Support creation of 'internal' rings
7bfc5312e63e drm/i915/gt: Couple tasklet scheduling for all CS interrupts
5021faa7f115 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
5af3de0375a1 drm/i915: Move saturated workload detection to the GT
cf6941683a97 drm/i915: Replace the priority boosting for the display with a deadline
675054b4e9d9 drm/i915/gt: Specify a deadline for the heartbeat
2569e0b593e7 drm/i915: Fair low-latency scheduling
d7403349647f drm/i915/gt: Remove timeslice suppression
a1a69cab81f5 drm/i915: Restructure priority inheritance
7d61bb0dd5d2 drm/i915: Teach the i915_dependency to use a double-lock
5f0a0dc1333b drm/i915/gt: Do not suspend bonded requests if one hangs
67f4f4fadb82 drm/i915: Replace engine->schedule() with a known request operation
284c4ee82fb5 drm/i915: Remove I915_USER_PRIORITY_SHIFT
796fb1aa036a drm/i915: Strip out internal priorities
ac29cc857205 drm/i915: Lift waiter/signaler iterators
851c723d19be drm/i915/gt: Convert stats.active to plain unsigned int
7d0425bc6864 drm/i915/gt: Extract busy-stats for ring-scheduler
9a511c705c10 drm/i915/gt: Drop atomic for engine->fw_active tracking
1d3df5a15c70 drm/i915/gt: ce->inflight updates are now serialised
c20604000873 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
77abad2cc860 drm/i915/gt: Resubmit the virtual engine on schedule-out
07c202c5b553 drm/i915/gt: Defer schedule_out until after the next dequeue
e0d8e53384b4 drm/i915/gt: Decouple inflight virtual engines
b807a1aa2cc6 drm/i915/gt: Use virtual_engine during execlists_dequeue
8a484e67419b drm/i915/gt: Replace direct submit with direct call to tasklet
6df6651ce794 drm/i915/gt: Check for a completed last request once
a88b1324c0e4 drm/i915/gt: Decouple completed requests on unwind
6005d22404ee drm/i915/gt: Move the heartbeat into the highprio system wq
d499941ea4dc drm/i915/gt: Harden the heartbeat against a stuck driver

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18054/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
