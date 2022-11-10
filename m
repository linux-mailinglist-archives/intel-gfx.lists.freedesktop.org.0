Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E077A624D91
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 23:18:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117FF10E043;
	Thu, 10 Nov 2022 22:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2844610E043;
 Thu, 10 Nov 2022 22:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F436A73C9;
 Thu, 10 Nov 2022 22:17:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8784337123413445540=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 10 Nov 2022 22:17:57 -0000
Message-ID: <166811867712.16952.17876242485522222420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev2=29?=
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

--===============8784337123413445540==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev2)
URL   : https://patchwork.freedesktop.org/series/79614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12365 -> Patchwork_79614v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_79614v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_79614v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-ilk-650/igt@i915_module_load@load.html
    - fi-bxt-dsi:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bxt-dsi/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-bxt-dsi/igt@i915_module_load@load.html
    - fi-snb-2520m:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-snb-2520m/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-snb-2520m/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-hsw-4770/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-hsw-4770/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-11}:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-dg2-11/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-dg2-9/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-dg2-9/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-4:         [PASS][14] -> [DMESG-WARN][15] ([i915#7077])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-apl-guc:         NOTRUN -> [SKIP][17] ([fdo#109271]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][18] ([i915#4312] / [i915#5594])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-hsw-4770/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][19] ([i915#4312])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-adlp-4/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][20] ([i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-ilk-650/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][21] ([i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-bxt-dsi/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][22] ([i915#4312])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-snb-2520m/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [INCOMPLETE][23] ([i915#7056]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][25] ([fdo#109271]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-guc:         [DMESG-FAIL][27] ([i915#5334]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-rpls-2}:       [FAIL][29] ([i915#6559]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077


Build changes
-------------

  * Linux: CI_DRM_12365 -> Patchwork_79614v2

  CI-20190529: 20190529
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v2: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c6d1923c1c79 drm/i915: Do state check for color management changes
b575d310e8e4 drm/i915: Add 10bit gamma mode for gen2/3
4b9930a3675e drm/i915: Use gamma LUT for RGB limited range compression
cba2fed9dff8 drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
72deb9bf0a2b drm/i915: Rework legacy LUT handling
daebffc4baa6 drm/i915: Finish the LUT state checker
a9b52a9ff382 drm/i915: Make .read_luts() mandatory
b0b4f59d174e drm/i915: Make ilk_read_luts() capable of degamma readout
3116f5e3866d drm/i915: Add gamma/degamma readout for ivb/hsw
053225cddc94 drm/i915: Add gamma/degamma readout for bdw+
eeff49d62127 drm/i915: Read out CHV CGM degamma
b843bdbde489 drm/i915: Add glk+ degamma readout
a2201c2ce482 drm/i915: Fix adl+ degamma LUT size
1aa267a992b4 drm/i915: Reorder 12.4 lut udw vs. ldw functions
b9607d4035a4 drm/i915: Clean up chv CGM (de)gamma defines
9d7206e6998e drm/i915: Clean up 12.4bit precision palette defines
af883483d0a0 drm/i915: Clean up 10bit precision palette defines
aa1272afe4ba drm/i915: Clean up legacy palette defines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/index.html

--===============8784337123413445540==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12365 -&gt; Patchwork_79614v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_79614v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_79614v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_79614v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-ilk-650/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bxt-dsi/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-bxt-dsi/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-snb-2520m/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-snb-2520m/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-hsw-4770/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v2/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12365 -&gt; Patchwork_79614v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v2: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c6d1923c1c79 drm/i915: Do state check for color management changes<br />
b575d310e8e4 drm/i915: Add 10bit gamma mode for gen2/3<br />
4b9930a3675e drm/i915: Use gamma LUT for RGB limited range compression<br />
cba2fed9dff8 drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output<br />
72deb9bf0a2b drm/i915: Rework legacy LUT handling<br />
daebffc4baa6 drm/i915: Finish the LUT state checker<br />
a9b52a9ff382 drm/i915: Make .read_luts() mandatory<br />
b0b4f59d174e drm/i915: Make ilk_read_luts() capable of degamma readout<br />
3116f5e3866d drm/i915: Add gamma/degamma readout for ivb/hsw<br />
053225cddc94 drm/i915: Add gamma/degamma readout for bdw+<br />
eeff49d62127 drm/i915: Read out CHV CGM degamma<br />
b843bdbde489 drm/i915: Add glk+ degamma readout<br />
a2201c2ce482 drm/i915: Fix adl+ degamma LUT size<br />
1aa267a992b4 drm/i915: Reorder 12.4 lut udw vs. ldw functions<br />
b9607d4035a4 drm/i915: Clean up chv CGM (de)gamma defines<br />
9d7206e6998e drm/i915: Clean up 12.4bit precision palette defines<br />
af883483d0a0 drm/i915: Clean up 10bit precision palette defines<br />
aa1272afe4ba drm/i915: Clean up legacy palette defines</p>

</body>
</html>

--===============8784337123413445540==--
