Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CBE21AB3D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 01:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0FE46EB4D;
	Thu,  9 Jul 2020 23:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 031C86EB4C;
 Thu,  9 Jul 2020 23:08:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0B77A0099;
 Thu,  9 Jul 2020 23:08:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jul 2020 23:08:36 -0000
Message-ID: <159433611695.31094.8119710962243293052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709215331.19994-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200709215331.19994-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Check_that_GPR_are_restored_across_noa=5Fwait?=
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

Series: drm/i915/selftest: Check that GPR are restored across noa_wait
URL   : https://patchwork.freedesktop.org/series/79317/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8724 -> Patchwork_18129
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18129 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18129, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18129:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-8809g/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-8809g/igt@i915_selftest@live@perf.html
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-soraka/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-soraka/igt@i915_selftest@live@perf.html
    - fi-kbl-guc:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-guc/igt@i915_selftest@live@perf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-guc/igt@i915_selftest@live@perf.html
    - fi-cml-u2:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-cml-u2/igt@i915_selftest@live@perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-cml-u2/igt@i915_selftest@live@perf.html
    - fi-whl-u:           [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-whl-u/igt@i915_selftest@live@perf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-whl-u/igt@i915_selftest@live@perf.html
    - fi-icl-y:           [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-icl-y/igt@i915_selftest@live@perf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-icl-y/igt@i915_selftest@live@perf.html
    - fi-bxt-dsi:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-bxt-dsi/igt@i915_selftest@live@perf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-bxt-dsi/igt@i915_selftest@live@perf.html
    - fi-cfl-guc:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-cfl-guc/igt@i915_selftest@live@perf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-cfl-guc/igt@i915_selftest@live@perf.html
    - fi-cml-s:           [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-cml-s/igt@i915_selftest@live@perf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-cml-s/igt@i915_selftest@live@perf.html
    - fi-skl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-skl-guc/igt@i915_selftest@live@perf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-skl-guc/igt@i915_selftest@live@perf.html
    - fi-tgl-u2:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-u2/igt@i915_selftest@live@perf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-u2/igt@i915_selftest@live@perf.html
    - fi-bsw-n3050:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-bsw-n3050/igt@i915_selftest@live@perf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-bsw-n3050/igt@i915_selftest@live@perf.html
    - fi-bsw-kefka:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-bsw-kefka/igt@i915_selftest@live@perf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-bsw-kefka/igt@i915_selftest@live@perf.html
    - fi-tgl-y:           [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-y/igt@i915_selftest@live@perf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-y/igt@i915_selftest@live@perf.html
    - fi-cfl-8700k:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-cfl-8700k/igt@i915_selftest@live@perf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-cfl-8700k/igt@i915_selftest@live@perf.html
    - fi-icl-u2:          [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-icl-u2/igt@i915_selftest@live@perf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-icl-u2/igt@i915_selftest@live@perf.html
    - fi-skl-6600u:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-skl-6600u/igt@i915_selftest@live@perf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-skl-6600u/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-x1275/igt@i915_selftest@live@perf.html
    - fi-bsw-nick:        [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-bsw-nick/igt@i915_selftest@live@perf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-bsw-nick/igt@i915_selftest@live@perf.html
    - fi-glk-dsi:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-glk-dsi/igt@i915_selftest@live@perf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-glk-dsi/igt@i915_selftest@live@perf.html
    - fi-apl-guc:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-apl-guc/igt@i915_selftest@live@perf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-apl-guc/igt@i915_selftest@live@perf.html
    - fi-cfl-8109u:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-cfl-8109u/igt@i915_selftest@live@perf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-cfl-8109u/igt@i915_selftest@live@perf.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-dsi/igt@i915_selftest@live@perf.html
    - {fi-ehl-1}:         [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-ehl-1/igt@i915_selftest@live@perf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-ehl-1/igt@i915_selftest@live@perf.html
    - {fi-kbl-7560u}:     [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-7560u/igt@i915_selftest@live@perf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-7560u/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_18129 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][51] -> [FAIL][52] ([i915#1888])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][53] -> [DMESG-WARN][54] ([i915#402]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-y/igt@gem_flink_basic@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][55] -> [DMESG-WARN][56] ([i915#1982])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][61] ([i915#402]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][63] ([i915#62]) -> [SKIP][64] ([fdo#109271])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][65] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][66] ([i915#62] / [i915#92]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][67] ([i915#62] / [i915#92]) -> [DMESG-WARN][68] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8724/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8724 -> Patchwork_18129

  CI-20190529: 20190529
  CI_DRM_8724: 0165f1cb39da5c3253af7f640a886484f7846089 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18129: b2d172d04f7c61536e6b87a0f3f4a8f76fff6ee9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b2d172d04f7c drm/i915/selftest: Check that GPR are restored across noa_wait

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18129/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
