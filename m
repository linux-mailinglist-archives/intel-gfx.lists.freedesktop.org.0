Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042C44F9F49
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 23:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07D710E270;
	Fri,  8 Apr 2022 21:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2395910E0A9;
 Fri,  8 Apr 2022 21:43:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11DB2A363D;
 Fri,  8 Apr 2022 21:43:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1798322174157636469=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 08 Apr 2022 21:43:10 -0000
Message-ID: <164945419003.22676.18230362520014784243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408172154.807900-1-imre.deak@intel.com>
In-Reply-To: <20220408172154.807900-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/dp=3A_Factor_out_a_functio?=
 =?utf-8?q?n_to_probe_a_DPCD_address?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1798322174157636469==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/dp: Factor out a function to probe a DPCD address
URL   : https://patchwork.freedesktop.org/series/102428/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11479 -> Patchwork_22831
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22831 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22831, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/index.html

Participating hosts (47 -> 48)
------------------------------

  Additional (3): bat-rpls-1 bat-adlm-1 fi-kbl-8809g 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22831:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] +75 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_addfb_basic@unused-offsets:
    - fi-skl-guc:         [PASS][4] -> [DMESG-WARN][5] +74 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-guc/igt@kms_addfb_basic@unused-offsets.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-guc/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - fi-kbl-x1275:       NOTRUN -> [DMESG-WARN][8] +9 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp2:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] +59 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-WARN][14] +69 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [PASS][15] -> [DMESG-WARN][16] +63 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@random-engines:
    - {bat-adlm-1}:       NOTRUN -> [INCOMPLETE][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/bat-adlm-1/igt@gem_lmem_swapping@random-engines.html

  * {igt@i915_suspend@system-suspend-without-i915}:
    - fi-ilk-650:         [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html
    - fi-kbl-x1275:       [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@i915_suspend@system-suspend-without-i915.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@i915_suspend@system-suspend-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_22831 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-kbl-7500u:       [PASS][22] -> [FAIL][23] ([i915#5328])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-7500u/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-7500u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][24] ([i915#5557])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][25] -> [INCOMPLETE][26] ([i915#5127])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-x1275:       [PASS][27] -> [DMESG-WARN][28] ([i915#1888])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][29] -> [DMESG-FAIL][30] ([i915#2927] / [i915#4528])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][31] -> [INCOMPLETE][32] ([i915#4785])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][33] -> [INCOMPLETE][34] ([i915#3921])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][35] -> [DMESG-WARN][36] ([i915#62]) +18 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-x1275:       [PASS][37] -> [DMESG-WARN][38] ([i915#5341])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-skl-guc:         [PASS][39] -> [DMESG-WARN][40] ([i915#5341])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-8109u:       [PASS][41] -> [DMESG-WARN][42] ([i915#5341] / [i915#62])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-skl-6700k2:      [PASS][43] -> [DMESG-WARN][44] ([i915#5341])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][45] ([fdo#109271] / [i915#2403] / [i915#4312])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][46] ([i915#2722])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-8809g/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][47] ([fdo#109271] / [i915#4312])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][48] ([i915#2867]) -> [PASS][49] +17 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@vma:
    - fi-bdw-5557u:       [INCOMPLETE][50] -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-bdw-5557u/igt@i915_selftest@live@vma.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bdw-5557u/igt@i915_selftest@live@vma.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][52] ([i915#5577]) -> [DMESG-WARN][53] ([i915#1982] / [i915#5577])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-kefka:       [DMESG-WARN][54] ([i915#5437]) -> [DMESG-WARN][55] ([i915#1982] / [i915#5437])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5328]: https://gitlab.freedesktop.org/drm/intel/issues/5328
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5437]: https://gitlab.freedesktop.org/drm/intel/issues/5437
  [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557
  [i915#5577]: https://gitlab.freedesktop.org/drm/intel/issues/5577
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_11479 -> Patchwork_22831

  CI-20190529: 20190529
  CI_DRM_11479: 4dcdb745569d8eef8db09e24e8ff2e5dffc0664c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22831: 60ffd11b25471747950f04215ab30a95b7009bb2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

60ffd11b2547 drm/i915/dp: Add workaround for spurious AUX timeouts/hotplugs on LTTPR links
d59d9f1dad56 drm/dp: Factor out a function to probe a DPCD address

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/index.html

--===============1798322174157636469==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/dp: Factor out a function to probe a DPCD address</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102428/">https://patchwork.freedesktop.org/series/102428/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11479 -&gt; Patchwork_22831</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22831 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22831, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/index.html</p>
<h2>Participating hosts (47 -&gt; 48)</h2>
<p>Additional (3): bat-rpls-1 bat-adlm-1 fi-kbl-8809g <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22831:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-guc/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-guc/igt@kms_addfb_basic@unused-offsets.html">DMESG-WARN</a> +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp2:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html">DMESG-WARN</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html">DMESG-WARN</a> +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/bat-adlm-1/igt@gem_lmem_swapping@random-engines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@i915_suspend@system-suspend-without-i915}:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22831 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-7500u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5328">i915#5328</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-bdw-5557u/igt@i915_selftest@live@vma.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bdw-5557u/igt@i915_selftest@live@vma.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5577">i915#5577</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5577">i915#5577</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22831/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11479 -&gt; Patchwork_22831</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11479: 4dcdb745569d8eef8db09e24e8ff2e5dffc0664c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22831: 60ffd11b25471747950f04215ab30a95b7009bb2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>60ffd11b2547 drm/i915/dp: Add workaround for spurious AUX timeouts/hotplugs on LTTPR links<br />
d59d9f1dad56 drm/dp: Factor out a function to probe a DPCD address</p>

</body>
</html>

--===============1798322174157636469==--
