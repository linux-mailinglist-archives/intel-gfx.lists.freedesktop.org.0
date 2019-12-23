Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40D11290F2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 03:41:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA12E89FA0;
	Mon, 23 Dec 2019 02:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E44B989FA0;
 Mon, 23 Dec 2019 02:41:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC00AA0073;
 Mon, 23 Dec 2019 02:41:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 23 Dec 2019 02:41:46 -0000
Message-ID: <157706890687.16935.187608950893622683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223010654.67037-1-jose.souza@intel.com>
In-Reply-To: <20191223010654.67037-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2Crebased=2C1/7=5D_drm/i915/display=3A_?=
 =?utf-8?q?Share_intel=5Fconnector=5Fneeds=5Fmodeset=28=29?=
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

Series: series starting with [v6,rebased,1/7] drm/i915/display: Share intel_connector_needs_modeset()
URL   : https://patchwork.freedesktop.org/series/71280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15891
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/index.html

Known issues
------------

  Here are the changes found in Patchwork_15891 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#111550])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][9] ([fdo#111736]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-u/igt@gem_exec_create@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][11] ([i915#505]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][13] ([fdo#112175] / [i915#140]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][17] ([fdo#112175] / [fdo#112259]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-kbl-r/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][19] -> [DMESG-WARN][20] ([i915#62] / [i915#92])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][21] ([IGT#4] / [i915#263]) -> [FAIL][22] ([fdo#103375])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 36)
------------------------------

  Additional (5): fi-skl-guc fi-bwr-2160 fi-skl-lmem fi-byt-n2820 fi-skl-6600u 
  Missing    (9): fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15891

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15891: cbdcc93ef09aa010a92dc3ea3a0d667040cce506 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cbdcc93ef09a drm/i915/display: Add comment to a function that probably can be removed
90e8df8b3531 drm/i915/mst: Force modeset on MST slaves when master needs a modeset
8c4de563350e drm/i915/display: Prepare for fastset external dependencies check
6c23dffe3e98 drm/i915/dp: Fix MST disable sequence
5bdb4215b8f6 drm/i915/display: Always enables MST master pipe first
46173c2d80a9 drm/i915/tgl: Select master transcoder for MST stream
bf1f2f563768 drm/i915/display: Share intel_connector_needs_modeset()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15891/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
