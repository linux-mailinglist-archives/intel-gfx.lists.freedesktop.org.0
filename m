Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CCD529C51
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 10:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0EB10EA7F;
	Tue, 17 May 2022 08:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBA5E10EA7F;
 Tue, 17 May 2022 08:25:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1E81AA0ED;
 Tue, 17 May 2022 08:25:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7778830577936939878=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Tue, 17 May 2022 08:25:58 -0000
Message-ID: <165277595878.31031.18316335418066313077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXR0?=
 =?utf-8?q?ach_and_Set_vrr=5Fenabled_property_=28rev3=29?=
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

--===============7778830577936939878==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Attach and Set vrr_enabled property (rev3)
URL   : https://patchwork.freedesktop.org/series/102978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11662 -> Patchwork_102978v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102978v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102978v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/index.html

Participating hosts (43 -> 10)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_102978v3 prevented too many machines from booting.

  Additional (1): bat-dg2-8 
  Missing    (34): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-adl-ddr5 fi-bwr-2160 fi-hsw-g3258 fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-bsw-kefka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102978v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-dg1-5:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - {bat-rpls-2}:       [FAIL][4] ([i915#4312]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-rpls-2/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-rpls-2/igt@runner@aborted.html
    - {bat-adln-1}:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adln-1/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adlp-6/igt@runner@aborted.html
    - {bat-jsl-2}:        NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-jsl-2/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-jsl-1/igt@runner@aborted.html
    - {bat-dg2-9}:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg2-9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_102978v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][11] ([fdo#111827])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][12] ([i915#5457])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adlp-4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - bat-dg1-6:          [FAIL][13] ([i915#4312] / [i915#5257]) -> [FAIL][14] ([i915#5257])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-dg1-6/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763


Build changes
-------------

  * IGT: IGT_6474 -> IGTPW_6978
  * Linux: CI_DRM_11662 -> Patchwork_102978v3

  CI-20190529: 20190529
  CI_DRM_11662: 38bc558d7aba4f111c5cf767bfdd89c722ba0415 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html
  IGT_6474: f4731438344390afe165ac41ee9e2a2e77e3d932 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102978v3: 38bc558d7aba4f111c5cf767bfdd89c722ba0415 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d701843b91cc drm/i915/vrr: Set drm crtc vrr_enabled property
15bab6a8a298 drm/vrr: Attach vrr_enabled property to the drm crtc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/index.html

--===============7778830577936939878==
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
<tr><td><b>Series:</b></td><td>Attach and Set vrr_enabled property (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102978/">https://patchwork.freedesktop.org/series/102978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11662 -&gt; Patchwork_102978v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102978v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102978v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/index.html</p>
<h2>Participating hosts (43 -&gt; 10)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_102978v3 prevented too many machines from booting.</p>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (34): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-adl-ddr5 fi-bwr-2160 fi-hsw-g3258 fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-bsw-kefka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102978v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_force_connector_basic@force-connector-state:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-5/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-rpls-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-rpls-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adln-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg2-9/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102978v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11662/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v3/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6474 -&gt; IGTPW_6978</li>
<li>Linux: CI_DRM_11662 -&gt; Patchwork_102978v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11662: 38bc558d7aba4f111c5cf767bfdd89c722ba0415 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html<br />
  IGT_6474: f4731438344390afe165ac41ee9e2a2e77e3d932 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102978v3: 38bc558d7aba4f111c5cf767bfdd89c722ba0415 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d701843b91cc drm/i915/vrr: Set drm crtc vrr_enabled property<br />
15bab6a8a298 drm/vrr: Attach vrr_enabled property to the drm crtc</p>

</body>
</html>

--===============7778830577936939878==--
