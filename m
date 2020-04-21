Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25161B3051
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 21:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3F96E32A;
	Tue, 21 Apr 2020 19:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25A396E329;
 Tue, 21 Apr 2020 19:27:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22CF4A47EA;
 Tue, 21 Apr 2020 19:27:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 19:27:47 -0000
Message-ID: <158749726713.17663.6420856071227674800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421171351.19575-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421171351.19575-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Unroll_the_CS_frequency_loop?=
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

Series: drm/i915/selftests: Unroll the CS frequency loop
URL   : https://patchwork.freedesktop.org/series/76277/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8345 -> Patchwork_17410
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/index.html

Known issues
------------

  Here are the changes found in Patchwork_17410 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [PASS][1] -> [FAIL][2] ([i915#1763])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][3] ([i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#1751]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-icl-y:           [DMESG-FAIL][7] ([i915#1754]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [DMESG-FAIL][9] ([i915#1751]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [DMESG-FAIL][11] ([i915#1754]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [DMESG-FAIL][13] ([i915#1751]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [DMESG-FAIL][15] ([i915#1751]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [DMESG-FAIL][17] ([i915#1751]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][19] ([i915#579]) -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][21] ([i915#62]) -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8345 -> Patchwork_17410

  CI-20190529: 20190529
  CI_DRM_8345: e1fa8774e58e663bec8257f678c2f8fd17088292 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17410: af32ad6faab4c6f97462063bafa87e3daa4026e7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af32ad6faab4 drm/i915/selftests: Unroll the CS frequency loop

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
