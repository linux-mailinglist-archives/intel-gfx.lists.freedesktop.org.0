Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679361270A2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 23:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B926E3F3;
	Thu, 19 Dec 2019 22:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 521106E3F3;
 Thu, 19 Dec 2019 22:26:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48C4DA0118;
 Thu, 19 Dec 2019 22:26:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 19 Dec 2019 22:26:31 -0000
Message-ID: <157679439126.26202.8584480642626425819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219215117.929-1-manasi.d.navare@intel.com>
In-Reply-To: <20191219215117.929-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915/dp=3A_Make_sure_all_t?=
 =?utf-8?q?iled_connectors_get_added_to_the_state_with_full_modeset?=
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

Series: series starting with [v2,1/3] drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
URL   : https://patchwork.freedesktop.org/series/71190/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7610 -> Patchwork_15849
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15849 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15849, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15849:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-hsw-peppy:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bdw-5557u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-n2820:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-byt-n2820/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-snb-2600/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15849 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-u2:          [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-r:           [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-soraka:      [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6600u:       [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-y:           [PASS][29] -> [INCOMPLETE][30] ([i915#140])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-s:           [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-guc:         [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-byt-n2820:       [FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-byt-n2820/igt@gem_exec_create@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-byt-n2820/igt@gem_exec_create@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][37] ([fdo#111764] / [i915#577]) -> [FAIL][38] ([i915#577])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-cml-s/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577


Participating hosts (46 -> 36)
------------------------------

  Additional (4): fi-ilk-650 fi-tgl-y fi-gdg-551 fi-snb-2520m 
  Missing    (14): fi-hsw-4770r fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-skl-guc fi-glk-dsi fi-byt-squawks fi-cfl-guc fi-ctg-p8600 fi-byt-clapper fi-ivb-3770 fi-blb-e6850 fi-icl-dsi fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7610 -> Patchwork_15849

  CI-20190529: 20190529
  CI_DRM_7610: 26117c3187bfcdee1f9501ff304f62252681d279 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15849: 331d1b560479c79015f34db9d91492b1bcc7e6f2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

331d1b560479 drm/i915/dp: Disable Port sync mode correctly on teardown
28ec6e3386c0 drm/i915/dp: Make port sync mode assignments only if all tiles present
ccfce3fe03d1 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15849/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
