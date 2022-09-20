Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D025BDE0E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8736810E322;
	Tue, 20 Sep 2022 07:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A67B10E320;
 Tue, 20 Sep 2022 07:24:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12ACAAAA91;
 Tue, 20 Sep 2022 07:24:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7062618327119484917=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Tue, 20 Sep 2022 07:24:06 -0000
Message-ID: <166365864604.1410.17788030520245155783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220531103421.11363-1-william.tseng@intel.com>
In-Reply-To: <20220531103421.11363-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_ignore_the_CEA_modes_not_defined_in_CEA-861-D_=28rev3?=
 =?utf-8?q?=29?=
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

--===============7062618327119484917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: ignore the CEA modes not defined in CEA-861-D (rev3)
URL   : https://patchwork.freedesktop.org/series/104539/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12158 -> Patchwork_104539v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104539v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104539v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-ctg-p8600 bat-jsl-3 bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104539v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor@toggle:
    - fi-bsw-kefka:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bsw-kefka/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][3] ([i915#6599]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-apl-guc/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-apl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][5] ([i915#6599]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-skl-guc/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-skl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_104539v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-bdw-gvtdvm:      [PASS][7] -> [DMESG-WARN][8] ([i915#6540])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bdw-gvtdvm/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@i915_module_load@load.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bdw-gvtdvm:      [PASS][10] -> [DMESG-WARN][11] ([i915#5922])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][12] ([i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {fi-tgl-mst}:       [SKIP][13] ([i915#2582]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-tgl-mst/igt@fbdev@write.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-tgl-mst/igt@fbdev@write.html

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-mst}:       [DMESG-WARN][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-tgl-mst/igt@gem_ctx_create@basic-files.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-tgl-mst/igt@gem_ctx_create@basic-files.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][17] ([i915#4785]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][19] ([i915#6367]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][21] ([i915#6298]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#5922]: https://gitlab.freedesktop.org/drm/intel/issues/5922
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6540]: https://gitlab.freedesktop.org/drm/intel/issues/6540
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6724]: https://gitlab.freedesktop.org/drm/intel/issues/6724


Build changes
-------------

  * Linux: CI_DRM_12158 -> Patchwork_104539v3

  CI-20190529: 20190529
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104539v3: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f9a9a3147076 drm/edid: ignore the CEA modes not defined in CEA-861-D

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/index.html

--===============7062618327119484917==
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
<tr><td><b>Series:</b></td><td>drm/edid: ignore the CEA modes not defined in CEA-861-D (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104539/">https://patchwork.freedesktop.org/series/104539/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12158 -&gt; Patchwork_104539v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104539v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104539v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-ctg-p8600 bat-jsl-3 bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104539v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-flip-before-cursor@toggle:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bsw-kefka/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-apl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104539v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bdw-gvtdvm/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6540">i915#6540</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5922">i915#5922</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-tgl-mst/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-tgl-mst/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104539v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12158 -&gt; Patchwork_104539v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104539v3: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f9a9a3147076 drm/edid: ignore the CEA modes not defined in CEA-861-D</p>

</body>
</html>

--===============7062618327119484917==--
