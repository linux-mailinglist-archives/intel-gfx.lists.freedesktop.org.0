Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC75178453
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5666E0C9;
	Tue,  3 Mar 2020 20:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 661836E0C9;
 Tue,  3 Mar 2020 20:52:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FA0EA363D;
 Tue,  3 Mar 2020 20:52:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 03 Mar 2020 20:52:22 -0000
Message-ID: <158326874236.15380.12875466078783145609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303182904.952445-1-matthew.d.roper@intel.com>
In-Reply-To: <20200303182904.952445-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Check_PHY_type_before_reading_DPLL_frequency_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915/ehl: Check PHY type before reading DPLL frequency (rev2)
URL   : https://patchwork.freedesktop.org/series/74214/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8057 -> Patchwork_16803
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/index.html

Known issues
------------

  Here are the changes found in Patchwork_16803 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-x-tiled:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-WARN][4] ([i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     [FAIL][5] ([i915#998]) -> [PASS][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@vgem_basic@mmap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/fi-tgl-y/igt@vgem_basic@mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (43 -> 43)
------------------------------

  Additional (5): fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-skl-6600u fi-snb-2600 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16803

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16803: dbc12455194ce386ea9b31544ed305500d4e094d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dbc12455194c drm/i915/ehl: Check PHY type before reading DPLL frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16803/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
