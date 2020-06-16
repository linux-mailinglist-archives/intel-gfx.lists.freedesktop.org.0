Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3555B1FBE40
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 20:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101406E33D;
	Tue, 16 Jun 2020 18:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DF606E186;
 Tue, 16 Jun 2020 18:37:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0675BA0BA8;
 Tue, 16 Jun 2020 18:37:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 18:37:54 -0000
Message-ID: <159233267499.4596.1199876364095873767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200616084141.3722-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/selftests=3A_Exercise_far_?=
 =?utf-8?q?preemption_rollbacks?=
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

Series: series starting with [1/9] drm/i915/selftests: Exercise far preemption rollbacks
URL   : https://patchwork.freedesktop.org/series/78410/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8635 -> Patchwork_17960
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17960 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17960, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17960:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-kbl-soraka:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-soraka/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-kbl-soraka/igt@i915_selftest@live@gt_engines.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-icl-y/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-icl-y/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-n3050:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html
    - fi-cml-s:           [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-cml-s/igt@i915_selftest@live@gt_engines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-cml-s/igt@i915_selftest@live@gt_engines.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-skl-6600u/igt@i915_selftest@live@gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-skl-6600u/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-kefka:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-bsw-kefka/igt@i915_selftest@live@gt_engines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-bsw-kefka/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-tgl-u2:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_engines:
    - {fi-tgl-dsi}:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_17960 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
    - fi-apl-guc:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-glk-dsi:         [PASS][21] -> [INCOMPLETE][22] ([i915#58] / [k.org#198133])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-guc:         [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][30] ([i915#62] / [i915#92]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92]) -> [DMESG-WARN][32] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17960

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17960: 480f3ff83a825775e754a364ae7096a67807ee2d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

480f3ff83a82 drm/i915/gt: Convert stats.active to plain unsigned int
ef92526598ab drm/i915/gt: Extract busy-stats for ring-scheduler
2f30d63c06b7 drm/i915/gt: Drop atomic for engine->fw_active tracking
499dd7003551 drm/i915/gt: ce->inflight updates are now serialised
81ca04a94781 drm/i915/execlists: Defer schedule_out until after the next dequeue
16284702446a drm/i915/execlists: Replace direct submit with direct call to tasklet
110ee4d71849 drm/i915/selftests: Enable selftesting of busy-stats
c6088929414a drm/i915/selftests: Use friendly request names for live_timeslice_rewind
49d66c60e62f drm/i915/selftests: Exercise far preemption rollbacks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17960/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
