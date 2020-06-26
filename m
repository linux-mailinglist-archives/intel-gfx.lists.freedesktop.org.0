Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DF620B16D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 14:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1575A6E051;
	Fri, 26 Jun 2020 12:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2411A6E051;
 Fri, 26 Jun 2020 12:36:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D8B4A0BD0;
 Fri, 26 Jun 2020 12:36:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 26 Jun 2020 12:36:13 -0000
Message-ID: <159317497309.22985.3321956882063259720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625002906.116594-1-jose.souza@intel.com>
In-Reply-To: <20200625002906.116594-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/bios=3A_Parse_HOBL_pa?=
 =?utf-8?q?rameter?=
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

Series: series starting with [v3,1/3] drm/i915/bios: Parse HOBL parameter
URL   : https://patchwork.freedesktop.org/series/78807/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8665 -> Patchwork_18024
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18024 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18024, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18024:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-cml-s:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-cml-s/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18024 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#1982]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [INCOMPLETE][6] ([i915#1242]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-byt-j1900/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][15] ([i915#62] / [i915#92]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92]) -> [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8665/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8665 -> Patchwork_18024

  CI-20190529: 20190529
  CI_DRM_8665: 2cb786fa6506e20b5cb2a10decda11454111e026 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18024: 64f114f63b3ea34d46cd6580f0526b2b6448a319 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

64f114f63b3e drm/i915/display: Enable HOBL regardless the VBT value
438abf3e5bc5 drm/i915/display: Implement HOBL
425c3b58202a drm/i915/bios: Parse HOBL parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18024/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
