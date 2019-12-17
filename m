Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DDC1224BC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 07:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6934E6E944;
	Tue, 17 Dec 2019 06:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B280E6E944;
 Tue, 17 Dec 2019 06:36:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A21B8A363B;
 Tue, 17 Dec 2019 06:36:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 17 Dec 2019 06:36:24 -0000
Message-ID: <157656458463.21846.991430376247702863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/7=5D_drm/i915/guc=3A_Merge_communic?=
 =?utf-8?q?ation=5Fstop_and_communication=5Fdisable?=
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

Series: series starting with [v2,1/7] drm/i915/guc: Merge communication_stop and communication_disable
URL   : https://patchwork.freedesktop.org/series/71020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578 -> Patchwork_15805
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/index.html

Known issues
------------

  Here are the changes found in Patchwork_15805 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-icl-u3:          [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#563])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-FAIL][8] ([i915#553] / [i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#623])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][11] ([i915#476]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-tgl-u/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [FAIL][13] ([fdo#103375]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [FAIL][15] ([fdo#111550]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][17] ([i915#730]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_pm:
    - fi-icl-guc:         [DMESG-FAIL][19] ([i915#571]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-icl-guc/igt@i915_selftest@live_gt_pm.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][21] ([i915#140]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#109635] / [i915#217]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][25] ([fdo#111096] / [i915#323]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][29] ([i915#725]) -> [DMESG-FAIL][30] ([i915#770])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][31] ([i915#553] / [i915#725]) -> [DMESG-FAIL][32] ([i915#563])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][33] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][34] ([i915#62] / [i915#92]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#571]: https://gitlab.freedesktop.org/drm/intel/issues/571
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 42)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15805

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15805: ea5f8a3163af3b8faacefeaca30363aeebd40ef7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ea5f8a3163af HAX: force enable_guc=2 and WA i915#571
bd8a56cf311b drm/i915/guc: Unify notify() functions
fb103861ef07 drm/i915/guc: Remove function pointers for send/receive calls
fc2ab66c04c1 drm/i915/guc/ct: Group request-related variables in a sub-structure
0f240dde5bd9 drm/i915/guc/ct: Stop expecting multiple CT channels
d8b5ef3911bc drm/i915/guc/ct: Drop guards in enable/disable calls
b1167fe23f5a drm/i915/guc: Merge communication_stop and communication_disable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
