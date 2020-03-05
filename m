Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD0B17AE91
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 19:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A3D6E398;
	Thu,  5 Mar 2020 18:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF2136E38A;
 Thu,  5 Mar 2020 18:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A83B8A00FD;
 Thu,  5 Mar 2020 18:57:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Thu, 05 Mar 2020 18:57:11 -0000
Message-ID: <158343463168.17237.1954825473364260460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305011943.214146-1-rajatja@google.com>
In-Reply-To: <20200305011943.214146-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/3=5D_intel=5Facpi=3A_Rename_drm=5Fd?=
 =?utf-8?q?ev_local_variable_to_dev?=
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

Series: series starting with [v6,1/3] intel_acpi: Rename drm_dev local variable to dev
URL   : https://patchwork.freedesktop.org/series/74298/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8070 -> Patchwork_16831
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16831:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_16831 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] ([CI#94])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][5] -> [DMESG-WARN][6] ([i915#92]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-skl-6770hq/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][7] -> [SKIP][8] ([fdo#109271]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10] ([i915#424])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] ([i915#217])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][13] -> [SKIP][14] ([fdo#109271]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][15] -> [DMESG-WARN][16] ([i915#106])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][17] -> [DMESG-WARN][18] ([CI#94] / [i915#402]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-y:           [DMESG-WARN][19] ([CI#94] / [i915#402]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][21] ([i915#1209]) -> [FAIL][22] ([i915#192] / [i915#193] / [i915#194])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-kbl-8809g/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (49 -> 41)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (9): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-elk-e7500 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8070 -> Patchwork_16831

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16831: f9f7e4554cff4100b4b20174a9d42c1f83042a10 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f9f7e4554cff drm/i915: Add support for integrated privacy screens
f4a4471b5c37 drm/i915: Lookup and attach ACPI device node for connectors
c20368a27477 intel_acpi: Rename drm_dev local variable to dev

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
