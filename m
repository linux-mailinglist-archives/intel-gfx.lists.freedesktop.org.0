Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F6C7BCDFA
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Oct 2023 13:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1085A10E095;
	Sun,  8 Oct 2023 11:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12CC910E095;
 Sun,  8 Oct 2023 11:09:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2A77A7DFB;
 Sun,  8 Oct 2023 11:09:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6633383272653289390=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Sun, 08 Oct 2023 11:09:52 -0000
Message-ID: <169676339295.31952.11386440436376308297@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231008101206.1665236-1-animesh.manna@intel.com>
In-Reply-To: <20231008101206.1665236-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_DSB_code_refactoring_=28rev3=29?=
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

--===============6633383272653289390==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: DSB code refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/124141/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13725 -> Patchwork_124141v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (2): fi-kbl-soraka fi-hsw-4770 
  Missing    (2): bat-dg2-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_124141v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        NOTRUN -> [FAIL][1] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][4] ([i915#5334] / [i915#7872])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#1886])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][8] ([i915#6645])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +9 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-rpls-1:         [PASS][10] -> [ABORT][11] ([i915#9315])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [DMESG-WARN][12] ([i915#1982] / [i915#8449]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-adlp-6/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][14] ([i915#9414]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8449]: https://gitlab.freedesktop.org/drm/intel/issues/8449
  [i915#9315]: https://gitlab.freedesktop.org/drm/intel/issues/9315
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13725 -> Patchwork_124141v3

  CI-20190529: 20190529
  CI_DRM_13725: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124141v3: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

672e706a73be drm/i915/dsb: DSB code refactoring

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/index.html

--===============6633383272653289390==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsb: DSB code refactoring (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124141/">https://patchwork.freedesktop.org/series/124141/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13725 -&gt; Patchwork_124141v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (2): fi-kbl-soraka fi-hsw-4770 <br />
  Missing    (2): bat-dg2-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124141v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9315">i915#9315</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8449">i915#8449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-adlp-6/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124141v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13725 -&gt; Patchwork_124141v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13725: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124141v3: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>672e706a73be drm/i915/dsb: DSB code refactoring</p>

</body>
</html>

--===============6633383272653289390==--
