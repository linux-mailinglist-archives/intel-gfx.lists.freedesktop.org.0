Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CC1173261
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EC36EE25;
	Fri, 28 Feb 2020 08:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 771596EE23;
 Fri, 28 Feb 2020 08:01:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73E24A0088;
 Fri, 28 Feb 2020 08:01:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 28 Feb 2020 08:01:19 -0000
Message-ID: <158287687947.7474.17683671380360942496@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227235005.18706-1-jose.souza@intel.com>
In-Reply-To: <20200227235005.18706-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Use_firmware_v2=2E06_for_TGL_=28rev2=29?=
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

Series: drm/i915/dmc: Use firmware v2.06 for TGL (rev2)
URL   : https://patchwork.freedesktop.org/series/74048/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8024 -> Patchwork_16757
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16757:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {fi-tgl-u}:         [PASS][1] -> [SKIP][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-tgl-u/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-tgl-u/igt@i915_pm_rpm@basic-rte.html
    - {fi-tgl-dsi}:       [PASS][3] -> [SKIP][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16757 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [PASS][6] -> [DMESG-FAIL][7] ([i915#541])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bsw-kefka:       [PASS][8] -> [INCOMPLETE][9] ([fdo#105876])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][10] ([i915#262]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][12] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][13] ([i915#1209])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-kbl-8809g/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#105876]: https://bugs.freedesktop.org/show_bug.cgi?id=105876
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (41 -> 42)
------------------------------

  Additional (6): fi-bsw-n3050 fi-hsw-peppy fi-glk-dsi fi-bwr-2160 fi-snb-2520m fi-gdg-551 
  Missing    (5): fi-ehl-1 fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8024 -> Patchwork_16757

  CI-20190529: 20190529
  CI_DRM_8024: 3290680f9735978238a1d3df1efa83326a843327 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16757: 799027936fd0de5ce21a678d6cc34a38961ae8d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

799027936fd0 drm/i915/dmc: Use firmware v2.06 for TGL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16757/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
