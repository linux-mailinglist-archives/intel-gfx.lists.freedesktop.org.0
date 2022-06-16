Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B69A54D9AE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 07:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B15B113F30;
	Thu, 16 Jun 2022 05:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60D7C113F2D;
 Thu, 16 Jun 2022 05:32:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 580C6AA01E;
 Thu, 16 Jun 2022 05:32:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0695299408180400129=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 16 Jun 2022 05:32:16 -0000
Message-ID: <165535753632.17459.9589693864567391277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR2V0?=
 =?utf-8?q?_dsc_optimal_output_bpp?=
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

--===============0695299408180400129==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Get dsc optimal output bpp
URL   : https://patchwork.freedesktop.org/series/105200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11763 -> Patchwork_105200v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (2): bat-dg2-9 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_105200v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][1] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][2] -> [DMESG-FAIL][3] ([i915#4494] / [i915#4957])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-tgl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-guc:         NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - bat-adlp-4:         [PASS][7] -> [DMESG-WARN][8] ([i915#3576])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-kbl-soraka:      [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-kbl-soraka/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-kbl-soraka/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][11] ([i915#62]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][13] ([i915#4528]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [DMESG-WARN][15] ([i915#62]) -> [PASS][16] +78 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][17] ([i915#402]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-tgl-u2/igt@kms_busy@basic@flip.html
    - {bat-adlp-6}:       [DMESG-WARN][19] ([i915#3576]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-6/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - bat-adlp-4:         [DMESG-WARN][21] ([i915#3576]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6244]: https://gitlab.freedesktop.org/drm/intel/issues/6244


Build changes
-------------

  * Linux: CI_DRM_11763 -> Patchwork_105200v1

  CI-20190529: 20190529
  CI_DRM_11763: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6530: d2df7e4ee648822ac0750aeb09f815ef449f4860 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105200v1: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

63e88ba59c9c drm/i915/dp: Get optimal link config to have best compressed bpp
69d81d3ee610 drm/i915/dp: Rename helper to get max pipe bpp with DSC
e48ae65766db drm/i915/dp: Rename helper to calculate dsc output bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/index.html

--===============0695299408180400129==
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
<tr><td><b>Series:</b></td><td>Get dsc optimal output bpp</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105200/">https://patchwork.freedesktop.org/series/105200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11763 -&gt; Patchwork_105200v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (2): bat-dg2-9 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105200v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-kbl-soraka/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-kbl-soraka/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105200v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11763 -&gt; Patchwork_105200v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11763: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6530: d2df7e4ee648822ac0750aeb09f815ef449f4860 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105200v1: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>63e88ba59c9c drm/i915/dp: Get optimal link config to have best compressed bpp<br />
69d81d3ee610 drm/i915/dp: Rename helper to get max pipe bpp with DSC<br />
e48ae65766db drm/i915/dp: Rename helper to calculate dsc output bpp</p>

</body>
</html>

--===============0695299408180400129==--
