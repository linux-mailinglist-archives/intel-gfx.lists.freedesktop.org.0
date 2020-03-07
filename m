Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A7717C9DB
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 01:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4426EDC8;
	Sat,  7 Mar 2020 00:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C92946EDC8;
 Sat,  7 Mar 2020 00:45:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C16E3A0019;
 Sat,  7 Mar 2020 00:45:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 07 Mar 2020 00:45:34 -0000
Message-ID: <158354193476.20975.4672917890848376746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Gamma_cleanups_=28rev4=29?=
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

Series: drm/i915: Gamma cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/69136/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8087 -> Patchwork_16866
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16866 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16866, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16866:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-cfl-8700k/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-cfl-8700k/igt@gem_exec_parallel@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16866 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#109635] / [i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-sync-default:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-tgl-y/igt@prime_vgem@basic-sync-default.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-tgl-y/igt@prime_vgem@basic-sync-default.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [TIMEOUT][11] -> [DMESG-WARN][12] ([i915#289])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 40)
------------------------------

  Additional (1): fi-icl-y 
  Missing    (10): fi-hsw-4200u fi-byt-j1900 fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ivb-3770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8087 -> Patchwork_16866

  CI-20190529: 20190529
  CI_DRM_8087: 2eecd3619f1f227c890414a0730a723f1c5a3a60 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16866: 3da0fd12387c4ea1e49870f9119bd70c9e1fceb2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3da0fd12387c drm/i915: Pass the crtc to the low level read_lut() funcs
406986ee9efc drm/i915: Fix readout of PIPEGCMAX
8973bf85659e drm/i915: Refactor LUT read functions
ef770588c959 drm/i915: Clean up integer types in color code
d4f1fa52704c drm/i915: s/chv_read_cgm_lut/chv_read_cgm_gamma/
319ef1a13f77 drm/i915: s/blob_data/lut/
cce1fed1d2dd drm/i915: Split i9xx_read_lut_8() to gmch vs. ilk variants
97e95a526dd1 drm/i915: Clean up i9xx_load_luts_internal()
ca6d5d42a01b drm/i915: Polish CHV CGM CSC loading

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16866/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
