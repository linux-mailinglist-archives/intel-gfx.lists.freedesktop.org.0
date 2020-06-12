Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F91F7274
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 05:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858236E10B;
	Fri, 12 Jun 2020 03:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6EEE6E10B;
 Fri, 12 Jun 2020 03:28:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1073A00CC;
 Fri, 12 Jun 2020 03:28:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 12 Jun 2020 03:28:14 -0000
Message-ID: <159193249476.21335.13842925859605965500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612023533.3611774-1-matthew.d.roper@intel.com>
In-Reply-To: <20200612023533.3611774-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?aining_RKL_patches_=28rev3=29?=
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

Series: Remaining RKL patches (rev3)
URL   : https://patchwork.freedesktop.org/series/77971/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8618 -> Patchwork_17932
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17932 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17932, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17932:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-bdw-5557u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17932 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cml-s:           [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-cml-s/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-cml-s/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][14] ([i915#1982]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [DMESG-WARN][16] ([i915#402]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8618 -> Patchwork_17932

  CI-20190529: 20190529
  CI_DRM_8618: 88841e30e7f8c60ff464be277e5b8fef49ebaea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5703: c33471b4aa0a0ae9dd42202048e7037a661e0574 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17932: c11ae2b393e91e288d680cd44983df3781b5143f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c11ae2b393e9 drm/i915/rkl: Add initial workarounds
e01790748ff7 drm/i915/rkl: Handle HTI
92a6f4838ed8 drm/i915/rkl: Add DPLL4 support
51b7d4fad873 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17932/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
