Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77016A0263
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 06:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2621710E4C6;
	Thu, 23 Feb 2023 05:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C402210E49D;
 Thu, 23 Feb 2023 05:34:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB815AADE6;
 Thu, 23 Feb 2023 05:34:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0875825587225779931=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 23 Feb 2023 05:34:24 -0000
Message-ID: <167713046473.15874.8569085436481001006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_HDMI_pixel_clock_frequencies_267=2E30_and_319?=
 =?utf-8?q?=2E89_MHz?=
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

--===============0875825587225779931==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 and 319.89 MHz
URL   : https://patchwork.freedesktop.org/series/114278/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12770 -> Patchwork_114278v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (3): fi-bsw-n3050 bat-dg1-6 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114278v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-adlp-6:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-rplp-1:         [PASS][4] -> [INCOMPLETE][5] ([i915#4983] / [i915#7609] / [i915#7913])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][7] ([i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][8] -> [ABORT][9] ([i915#4983])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-rpls-1/igt@i915_selftest@live@reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271]) +15 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adlp-6:         NOTRUN -> [SKIP][11] ([i915#7828])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [ABORT][12] ([i915#8220]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-adlp-6/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@i915_module_load@reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8220]: https://gitlab.freedesktop.org/drm/intel/issues/8220


Build changes
-------------

  * Linux: CI_DRM_12770 -> Patchwork_114278v1

  CI-20190529: 20190529
  CI_DRM_12770: 734cd918122f6ec06e4c9366fb3283b29b1c7ea5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7168: 165df656261863684067cd53f95c3a301e67fa24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114278v1: 734cd918122f6ec06e4c9366fb3283b29b1c7ea5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b9966a3a53a9 drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 and 319.89 MHz

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/index.html

--===============0875825587225779931==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 and 319.89 MHz</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114278/">https://patchwork.freedesktop.org/series/114278/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12770 -&gt; Patchwork_114278v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (3): fi-bsw-n3050 bat-dg1-6 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114278v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12770/bat-adlp-6/igt@i915_module_load@reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8220">i915#8220</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114278v1/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12770 -&gt; Patchwork_114278v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12770: 734cd918122f6ec06e4c9366fb3283b29b1c7ea5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7168: 165df656261863684067cd53f95c3a301e67fa24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114278v1: 734cd918122f6ec06e4c9366fb3283b29b1c7ea5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b9966a3a53a9 drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 and 319.89 MHz</p>

</body>
</html>

--===============0875825587225779931==--
