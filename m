Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA472E6FA7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 11:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C045892B1;
	Tue, 29 Dec 2020 10:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3202892A8;
 Tue, 29 Dec 2020 10:27:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AFFAA73C9;
 Tue, 29 Dec 2020 10:27:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 29 Dec 2020 10:27:56 -0000
Message-ID: <160923767659.17553.8326489276316652891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/54=5D_drm/i915/gt=3A_Cancel_submitted_r?=
 =?utf-8?q?equests_upon_context_reset?=
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
Content-Type: multipart/mixed; boundary="===============0466119909=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0466119909==
Content-Type: multipart/alternative;
 boundary="===============5397263697145197185=="

--===============5397263697145197185==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/54] drm/i915/gt: Cancel submitted requests upon context reset
URL   : https://patchwork.freedesktop.org/series/85275/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9530 -> Patchwork_19219
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19219 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19219, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19219:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-soraka:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-soraka/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-soraka/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-bsw-n3050:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cml-s/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-glk-dsi:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-glk-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-glk-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-tgl-dsi}:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9530 and Patchwork_19219:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 31 pass(s)
    - Exec time: [0.64, 7.52] s

  

Known issues
------------

  Here are the changes found in Patchwork_19219 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][35] ([fdo#109271]) +27 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][36] -> [INCOMPLETE][37] ([i915#794])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][38] -> [INCOMPLETE][39] ([i915#794])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][40] -> [INCOMPLETE][41] ([i915#2276])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][42] -> [INCOMPLETE][43] ([CI#80])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][44] -> [INCOMPLETE][45] ([i915#2268])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][46] -> [INCOMPLETE][47] ([CI#80])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][48] -> [INCOMPLETE][49] ([i915#2276])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-icl-y/igt@i915_selftest@live@execlists.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][50] -> [INCOMPLETE][51] ([i915#794])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][52] -> [INCOMPLETE][53] ([i915#794])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][55] ([i915#1436] / [i915#2109])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][56] ([i915#2426])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8109u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][57] ([i915#1436] / [i915#2109])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][58] ([i915#2426])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][59] ([i915#1436] / [i915#2426])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][60] ([i915#1436] / [i915#2426])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][61] ([i915#2082] / [i915#2426])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-s/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][62] ([i915#1436] / [i915#2426])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-guc/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][63] ([i915#1436] / [i915#2109])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-nick:        [DMESG-FAIL][64] ([i915#2675] / [i915#541]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2109]: https://gitlab.freedesktop.org/drm/intel/issues/2109
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (39 -> 37)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (3): fi-tgl-y fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9530 -> Patchwork_19219

  CI-20190529: 20190529
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19219: 85f98ac537c4cee76a85bf160b6823ee851e1f19 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

85f98ac537c4 drm/i915/gt: Limit C-states while waiting for requests
b1e8c9683e18 drm/i915/gt: Enable ring scheduling for gen6/7
68a57f8992ac drm/i915/gt: Implement ring scheduler for gen6/7
dd507815ad29 drm/i915/gt: Enable busy-stats for ring-scheduler
6f6f3304e33a drm/i915/gt: Infrastructure for ring scheduling
7c96efa12d48 drm/i915/gt: Use client timeline address for seqno writes
c9361a735109 drm/i915/gt: Support creation of 'internal' rings
cf7d73fc42f7 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
d7f96649f044 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
e6b3a4e89fdb drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
3aab63db2a5a drm/i915/selftests: Exercise relative timeline modes
052ed5effc8f drm/i915/gt: Use indices for writing into relative timelines
a7e054e1d51f drm/i915/gt: Add timeline "mode"
6c93d6121ff6 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
16a564083b55 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
01a354fdc655 drm/i915: Bump default timeslicing quantum to 5ms
ccb84bd14161 drm/i915: Move saturated workload detection back to the context
6098f9f08113 drm/i915/gt: Support virtual engine queues
94a385b757e2 drm/i915: Extend the priority boosting for the display with a deadline
11ed8ad94eeb drm/i915/gt: Specify a deadline for the heartbeat
3e371540df63 drm/i915: Fair low-latency scheduling
91c1ecade9a3 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
082e8ae14675 drm/i915: Replace priolist rbtree with a skiplist
152ed7b45e2e drm/i915: Move tasklet from execlists to sched
718db6262de1 drm/i915: Move scheduler queue
4f299a9c3688 drm/i915: Move common active lists from engine to i915_scheduler
ad32d79a370d drm/i915: Fix the iterative dfs for defering requests
6aca7a704425 drm/i915: Extract the ability to defer and rerun a request later
1c3bd294373d drm/i915: Extract request suspension from the execlists backend
325e252e7bac drm/i915: Extract request rewinding from execlists
edaf360fa696 drm/i915: Extract request submission from execlists
4bea1b5f3437 drm/i915: Improve DFS for priority inheritance
fb9f48e3fe22 drm/i915/selftests: Exercise priority inheritance around an engine loop
a3467b661390 drm/i915/selftests: Measure set-priority duration
3d95d5214a1d drm/i915: Restructure priority inheritance
478814419b5e drm/i915: Teach the i915_dependency to use a double-lock
08990ad0d442 drm/i915: Replace engine->schedule() with a known request operation
ee184d638694 drm/i915: Remove I915_USER_PRIORITY_SHIFT
34ee71c219d7 drm/i915: Strip out internal priorities
157c2def0cb3 drm/i915/gt: Skip over completed active execlists, again
d654d951ab15 drm/i915/gt: Remove timeslice suppression
d5cc1786e885 drm/i915/gt: Do not suspend bonded requests if one hangs
ee4ba8911307 drm/i915/gt: Convert stats.active to plain unsigned int
cb7601bcf0b2 drm/i915/gt: Extract busy-stats for ring-scheduler
54b08969c728 drm/i915/gt: Drop atomic for engine->fw_active tracking
ce5d84639d7c drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
84fade942b88 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
279d9aafdb7b drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
d1078b6751d7 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
34004d143982 drm/i915: Drop i915_request.lock serialisation around await_start
5eb79ce389c1 drm/i915: Mark up protected uses of 'i915_request_completed'
9f63c2557add drm/i915/gem: Peek at the inflight context
69e67c0b5c51 drm/i915/gt: Pull context closure check from request submit to schedule-in
0b9748fc4fd3 drm/i915/gt: Cancel submitted requests upon context reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/index.html

--===============5397263697145197185==
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
<tr><td><b>Series:</b></td><td>series starting with [01/54] drm/i915/gt: Cancel submitted requests upon context reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85275/">https://patchwork.freedesktop.org/series/85275/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9530 -&gt; Patchwork_19219</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19219 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19219, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19219:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-soraka/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-apl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-glk-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-glk-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9530 and Patchwork_19219:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 31 pass(s)</li>
<li>Exec time: [0.64, 7.52] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19219 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-r/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2109">i915#2109</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2109">i915#2109</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2109">i915#2109</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19219/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (3): fi-tgl-y fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9530 -&gt; Patchwork_19219</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19219: 85f98ac537c4cee76a85bf160b6823ee851e1f19 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>85f98ac537c4 drm/i915/gt: Limit C-states while waiting for requests<br />
b1e8c9683e18 drm/i915/gt: Enable ring scheduling for gen6/7<br />
68a57f8992ac drm/i915/gt: Implement ring scheduler for gen6/7<br />
dd507815ad29 drm/i915/gt: Enable busy-stats for ring-scheduler<br />
6f6f3304e33a drm/i915/gt: Infrastructure for ring scheduling<br />
7c96efa12d48 drm/i915/gt: Use client timeline address for seqno writes<br />
c9361a735109 drm/i915/gt: Support creation of 'internal' rings<br />
cf7d73fc42f7 drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
d7f96649f044 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
e6b3a4e89fdb drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
3aab63db2a5a drm/i915/selftests: Exercise relative timeline modes<br />
052ed5effc8f drm/i915/gt: Use indices for writing into relative timelines<br />
a7e054e1d51f drm/i915/gt: Add timeline "mode"<br />
6c93d6121ff6 drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
16a564083b55 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
01a354fdc655 drm/i915: Bump default timeslicing quantum to 5ms<br />
ccb84bd14161 drm/i915: Move saturated workload detection back to the context<br />
6098f9f08113 drm/i915/gt: Support virtual engine queues<br />
94a385b757e2 drm/i915: Extend the priority boosting for the display with a deadline<br />
11ed8ad94eeb drm/i915/gt: Specify a deadline for the heartbeat<br />
3e371540df63 drm/i915: Fair low-latency scheduling<br />
91c1ecade9a3 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
082e8ae14675 drm/i915: Replace priolist rbtree with a skiplist<br />
152ed7b45e2e drm/i915: Move tasklet from execlists to sched<br />
718db6262de1 drm/i915: Move scheduler queue<br />
4f299a9c3688 drm/i915: Move common active lists from engine to i915_scheduler<br />
ad32d79a370d drm/i915: Fix the iterative dfs for defering requests<br />
6aca7a704425 drm/i915: Extract the ability to defer and rerun a request later<br />
1c3bd294373d drm/i915: Extract request suspension from the execlists backend<br />
325e252e7bac drm/i915: Extract request rewinding from execlists<br />
edaf360fa696 drm/i915: Extract request submission from execlists<br />
4bea1b5f3437 drm/i915: Improve DFS for priority inheritance<br />
fb9f48e3fe22 drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
a3467b661390 drm/i915/selftests: Measure set-priority duration<br />
3d95d5214a1d drm/i915: Restructure priority inheritance<br />
478814419b5e drm/i915: Teach the i915_dependency to use a double-lock<br />
08990ad0d442 drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
ee184d638694 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
34ee71c219d7 drm/i915: Strip out internal priorities<br />
157c2def0cb3 drm/i915/gt: Skip over completed active execlists, again<br />
d654d951ab15 drm/i915/gt: Remove timeslice suppression<br />
d5cc1786e885 drm/i915/gt: Do not suspend bonded requests if one hangs<br />
ee4ba8911307 drm/i915/gt: Convert stats.active to plain unsigned int<br />
cb7601bcf0b2 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
54b08969c728 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
ce5d84639d7c drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
84fade942b88 drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
279d9aafdb7b drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
d1078b6751d7 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()<br />
34004d143982 drm/i915: Drop i915_request.lock serialisation around await_start<br />
5eb79ce389c1 drm/i915: Mark up protected uses of 'i915_request_completed'<br />
9f63c2557add drm/i915/gem: Peek at the inflight context<br />
69e67c0b5c51 drm/i915/gt: Pull context closure check from request submit to schedule-in<br />
0b9748fc4fd3 drm/i915/gt: Cancel submitted requests upon context reset</p>

</body>
</html>

--===============5397263697145197185==--

--===============0466119909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0466119909==--
