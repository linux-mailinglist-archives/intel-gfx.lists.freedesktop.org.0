Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC5817314E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 07:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB68B6EDF7;
	Fri, 28 Feb 2020 06:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DAD656EDF7;
 Fri, 28 Feb 2020 06:47:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2ACBA47E9;
 Fri, 28 Feb 2020 06:47:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 28 Feb 2020 06:47:34 -0000
Message-ID: <158287245483.7475.5122076504563725464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227231458.76159-1-matthew.d.roper@intel.com>
In-Reply-To: <20200227231458.76159-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Handle_all_MCR_ranges_?=
 =?utf-8?b?KHJldjIp?=
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

Series: series starting with [1/2] drm/i915: Handle all MCR ranges (rev2)
URL   : https://patchwork.freedesktop.org/series/74047/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8024 -> Patchwork_16756
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16756:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@blt:
    - {fi-tgl-dsi}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-tgl-dsi/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/fi-tgl-dsi/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       [DMESG-FAIL][3] ([i915#1233]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16756 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111407])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][7] ([i915#262]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][10] ([i915#1209])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8024/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262


Participating hosts (41 -> 44)
------------------------------

  Additional (6): fi-bsw-n3050 fi-hsw-peppy fi-glk-dsi fi-bwr-2160 fi-snb-2520m fi-gdg-551 
  Missing    (3): fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8024 -> Patchwork_16756

  CI-20190529: 20190529
  CI_DRM_8024: 3290680f9735978238a1d3df1efa83326a843327 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16756: 2a124f921909115338555bcb8b8d234207164cc8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2a124f921909 drm/i915: Apply Wa_1406680159:icl, ehl as an engine workaround
b4e4b4085623 drm/i915: Handle all MCR ranges

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16756/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
