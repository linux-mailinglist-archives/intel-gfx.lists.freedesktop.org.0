Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFB61783C1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3EA6E07D;
	Tue,  3 Mar 2020 20:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D485389C2C;
 Tue,  3 Mar 2020 20:14:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE61AA00FD;
 Tue,  3 Mar 2020 20:14:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 03 Mar 2020 20:14:01 -0000
Message-ID: <158326644181.15377.15736074204309643630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303182904.952445-1-matthew.d.roper@intel.com>
In-Reply-To: <20200303182904.952445-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Check_PHY_type_before_reading_DPLL_frequency?=
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

Series: drm/i915/ehl: Check PHY type before reading DPLL frequency
URL   : https://patchwork.freedesktop.org/series/74214/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8057 -> Patchwork_16802
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/index.html

Known issues
------------

  Here are the changes found in Patchwork_16802 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-wait-default:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@prime_vgem@basic-wait-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/fi-tgl-y/igt@prime_vgem@basic-wait-default.html

  
#### Possible fixes ####

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [DMESG-WARN][3] ([CI#94] / [i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@vgem_basic@mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/fi-tgl-y/igt@vgem_basic@mmap.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][5] ([fdo#109271]) -> [FAIL][6] ([i915#579])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][7] ([i915#1209]) -> [FAIL][8] ([i915#192] / [i915#193] / [i915#194])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 43)
------------------------------

  Additional (6): fi-bsw-n3050 fi-glk-dsi fi-bsw-kefka fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16802

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16802: 4e13422667e3c121335e6a403d53b14ec678707a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4e13422667e3 drm/i915/ehl: Check PHY type before reading DPLL frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16802/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
