Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FA517838C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F6089CC1;
	Tue,  3 Mar 2020 20:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DA47888AE;
 Tue,  3 Mar 2020 20:00:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 681CCA00E7;
 Tue,  3 Mar 2020 20:00:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 20:00:57 -0000
Message-ID: <158326565739.15378.1303358710366379927@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Gamma_cleanups_=28rev3=29?=
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

Series: drm/i915: Gamma cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/69136/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8057 -> Patchwork_16801
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16801 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16801:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-kbl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/fi-kbl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16801 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-guc:         [PASS][2] -> [INCOMPLETE][3] ([fdo#112175] / [fdo#112259])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@addfb25-x-tiled:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html

  
#### Possible fixes ####

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [DMESG-WARN][6] ([CI#94] / [i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@vgem_basic@mmap.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/fi-tgl-y/igt@vgem_basic@mmap.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 37)
------------------------------

  Additional (3): fi-bsw-kefka fi-kbl-7500u fi-snb-2600 
  Missing    (9): fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16801

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16801: 1be5c304ba4b3c4fca354a0a55acfe648bd25a6c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1be5c304ba4b drm/i915: Pass the crtc to the low level read_lut() funcs
4dbbf6bed479 drm/i915: Fix readout of PIPEGCMAX
32017c748224 drm/i915: Refactor LUT read functions
0608422e4221 drm/i915: Clean up integer types in color code
5d0116537847 drm/i915: s/chv_read_cgm_lut/chv_read_cgm_gamma/
2bd70fc18de0 drm/i915: s/blob_data/lut/
11ff682dafcd drm/i915: Split i9xx_read_lut_8() to gmch vs. ilk variants
68f1bc86f1b8 drm/i915: Clean up i9xx_load_luts_internal()
a80ba6cf6eef drm/i915: Polish CHV CGM CSC loading

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16801/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
