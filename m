Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7755811EDFD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 23:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ADD26EDFD;
	Fri, 13 Dec 2019 22:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DF6D6EDFD;
 Fri, 13 Dec 2019 22:49:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2546BA01BB;
 Fri, 13 Dec 2019 22:49:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Fri, 13 Dec 2019 22:49:22 -0000
Message-ID: <157627736212.23800.11708431155257714059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213154515.12121-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191213154515.12121-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_WARN=5FON_condition_for_cursor_plane_ddb_allocatio?=
 =?utf-8?q?n?=
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

Series: drm/i915: Fix WARN_ON condition for cursor plane ddb allocation
URL   : https://patchwork.freedesktop.org/series/70893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7563 -> Patchwork_15753
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/index.html

Known issues
------------

  Here are the changes found in Patchwork_15753 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#707])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-tgl-y/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#592])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8] ([i915#424])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-ivb-3770:        [PASS][9] -> [INCOMPLETE][10] ([i915#773])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-ivb-3770/igt@i915_selftest@live_requests.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#109635] / [i915#217])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][13] ([fdo#111593]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
    - {fi-tgl-u}:         [INCOMPLETE][15] ([fdo#111593]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#553] / [i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111096] / [i915#323]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([fdo#107139] / [i915#62] / [i915#92])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (55 -> 47)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7563 -> Patchwork_15753

  CI-20190529: 20190529
  CI_DRM_7563: aa81d2aa468b726e50faba4a455efae4c4be2a67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15753: b4f53bbbdfeb2d86f32d686d38f7ddf4dde4319c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b4f53bbbdfeb drm/i915: Fix WARN_ON condition for cursor plane ddb allocation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
