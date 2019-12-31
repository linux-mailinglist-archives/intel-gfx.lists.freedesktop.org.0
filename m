Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D2F12D5CF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 03:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2C689E69;
	Tue, 31 Dec 2019 02:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A48B89E43;
 Tue, 31 Dec 2019 02:35:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86536A0019;
 Tue, 31 Dec 2019 02:35:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 02:35:54 -0000
Message-ID: <157775975451.26888.809127986567610510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Include_a_bunch_more?=
 =?utf-8?q?_rcs_image_state?=
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

Series: series starting with [1/5] drm/i915/gt: Include a bunch more rcs image state
URL   : https://patchwork.freedesktop.org/series/71506/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657 -> Patchwork_15951
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/index.html

Known issues
------------

  Here are the changes found in Patchwork_15951 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic:
    - fi-icl-dsi:         [PASS][1] -> [DMESG-WARN][2] ([i915#109])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-dsi/igt@gem_exec_suspend@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-icl-dsi/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#111550])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_execlists:
    - fi-cfl-8700k:       [PASS][7] -> [DMESG-FAIL][8] ([i915#841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-cfl-8700k/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-cfl-8700k/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem:
    - fi-bwr-2160:        [PASS][9] -> [FAIL][10] ([i915#878])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-bwr-2160/igt@i915_selftest@live_gem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-bwr-2160/igt@i915_selftest@live_gem.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [INCOMPLETE][11] ([fdo#111736] / [i915#460]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#505] / [i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][15] ([i915#151]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#553] / [i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][19] ([i915#140]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92]) -> [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 41)
------------------------------

  Additional (3): fi-blb-e6850 fi-glk-dsi fi-snb-2520m 
  Missing    (8): fi-hsw-4770r fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-elk-e7500 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15951

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15951: 9cc55ba3c653f8b1d413668cedeb039ea1ed1a85 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9cc55ba3c653 drm/i915/gt: Always poison the kernel_context image before unparking
cc1692e8276b drm/i915/gt: Discard stale context state from across idling
2f669a71fc28 drm/i915/gt: Ignore stale context state upon resume
0e75786dcac1 drm/i915/gt: Clear LRC image inline
3900059d08ce drm/i915/gt: Include a bunch more rcs image state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
