Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA2A718FE8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 03:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F41310E1F8;
	Thu,  1 Jun 2023 01:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6F8110E1F8;
 Thu,  1 Jun 2023 01:15:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE22CAADE0;
 Thu,  1 Jun 2023 01:15:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8535968502522317367=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Thu, 01 Jun 2023 01:15:54 -0000
Message-ID: <168558215467.16230.4107191802573859458@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230531171008.1738759-1-fei.yang@intel.com>
In-Reply-To: <20230531171008.1738759-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Allow_user_to_set_cache_at_BO_creation?=
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

--===============8535968502522317367==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow user to set cache at BO creation
URL   : https://patchwork.freedesktop.org/series/118660/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13210 -> Patchwork_118660v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_118660v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_118660v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_118660v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-x1275:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_118660v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-kbl-8809g:       [FAIL][3] ([i915#8293] / [i915#8298]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-kbl-8809g/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       NOTRUN -> [ABORT][5] ([i915#8298] / [i915#8299] / [i915#8397])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-hsw-4770:        [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][11] -> [FAIL][12] ([i915#7364])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][13] ([i915#1886] / [i915#7913])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-1:         [PASS][14] -> [DMESG-WARN][15] ([i915#7852])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-1/igt@i915_selftest@live@guc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-1/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][16] -> [DMESG-WARN][17] ([i915#8073])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][18] ([i915#8296]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][19] ([fdo#109271]) +14 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][20] ([i915#8299])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       NOTRUN -> [CRASH][21] ([i915#8299])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][22] ([fdo#109271]) +59 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4579])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4579])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - {bat-adlp-11}:      [ABORT][25] ([i915#4423] / [i915#8189]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-adlp-11/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][27] ([i915#6367]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][29] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#7981] / [i915#8347]) -> [ABORT][30] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-2/igt@i915_selftest@live@reset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [SKIP][31] ([i915#3555] / [i915#4579]) -> [ABORT][32] ([i915#4579] / [i915#8260])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7364]: https://gitlab.freedesktop.org/drm/intel/issues/7364
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8296]: https://gitlab.freedesktop.org/drm/intel/issues/8296
  [i915#8298]: https://gitlab.freedesktop.org/drm/intel/issues/8298
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8397]: https://gitlab.freedesktop.org/drm/intel/issues/8397
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497


Build changes
-------------

  * Linux: CI_DRM_13210 -> Patchwork_118660v1

  CI-20190529: 20190529
  CI_DRM_13210: a66da4c33d8ede541aea9ba6d0d73b556a072d54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7314: ab70dfcdecf93a17fcaddb774855f726325fa0dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118660v1: a66da4c33d8ede541aea9ba6d0d73b556a072d54 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eb294127af63 drm/i915: Allow user to set cache at BO creation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/index.html

--===============8535968502522317367==
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
<tr><td><b>Series:</b></td><td>drm/i915: Allow user to set cache at BO creation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118660/">https://patchwork.freedesktop.org/series/118660/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13210 -&gt; Patchwork_118660v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_118660v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_118660v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_118660v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118660v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8397">i915#8397</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7364">i915#7364</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-1/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-1/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8296">i915#8296</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-adlp-11/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13210/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118660v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13210 -&gt; Patchwork_118660v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13210: a66da4c33d8ede541aea9ba6d0d73b556a072d54 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7314: ab70dfcdecf93a17fcaddb774855f726325fa0dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118660v1: a66da4c33d8ede541aea9ba6d0d73b556a072d54 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eb294127af63 drm/i915: Allow user to set cache at BO creation</p>

</body>
</html>

--===============8535968502522317367==--
