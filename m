Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E435912D08C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 15:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566B2892A6;
	Mon, 30 Dec 2019 14:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E02F892A6;
 Mon, 30 Dec 2019 14:15:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04011A432F;
 Mon, 30 Dec 2019 14:15:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Mon, 30 Dec 2019 14:15:05 -0000
Message-ID: <157771530599.15516.15227980600702126480@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191230132351.17487-1-ramalingam.c@intel.com>
In-Reply-To: <20191230132351.17487-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHVt?=
 =?utf-8?q?b_buffer_patches?=
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

Series: dumb buffer patches
URL   : https://patchwork.freedesktop.org/series/71493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7654 -> Patchwork_15945
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/index.html

Known issues
------------

  Here are the changes found in Patchwork_15945 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#470] / [i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-tgl-y/igt@gem_sync@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_reset:
    - fi-cfl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#889]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-cfl-guc/igt@i915_selftest@live_reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-cfl-guc/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_workarounds:
    - fi-cfl-guc:         [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-cfl-guc/igt@i915_selftest@live_workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-cfl-guc/igt@i915_selftest@live_workarounds.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - fi-byt-n2820:       [FAIL][9] ([i915#774]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-byt-n2820/igt@gem_exec_parallel@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-byt-n2820/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-byt-n2820/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_requests:
    - fi-bwr-2160:        [FAIL][13] ([i915#878]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-bwr-2160/igt@i915_selftest@live_requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-bwr-2160/igt@i915_selftest@live_requests.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][16] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][17] ([fdo#109271]) -> [FAIL][18] ([i915#704])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#774]: https://gitlab.freedesktop.org/drm/intel/issues/774
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7654 -> Patchwork_15945

  CI-20190529: 20190529
  CI_DRM_7654: 210953b34f70efe0aadec97353d15cb63ee2fb4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5354: f4e9a41fd8a13a43fd3042dcf09f40af84e7b138 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15945: 7f43eb50508ed4835580173806bcdc519f08c637 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7f43eb50508e drm/i915/dumb: return the allocated memory size
0f70698242c1 drm/i915: Create dumb buffer from LMEM
03fb4942f61b drm/i915: lookup for mem_region of a mem_type

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
