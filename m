Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB2754D906
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 05:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0CC10F3CE;
	Thu, 16 Jun 2022 03:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 126EF10EE76;
 Thu, 16 Jun 2022 03:55:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0660CAADD7;
 Thu, 16 Jun 2022 03:55:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0953797241236401392=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Thu, 16 Jun 2022 03:55:15 -0000
Message-ID: <165535171598.17457.17050081783275264409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220614082732.2228-1-william.tseng@intel.com>
In-Reply-To: <20220614082732.2228-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_add_payload_receiving_code_=28rev2=29?=
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

--===============0953797241236401392==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: add payload receiving code (rev2)
URL   : https://patchwork.freedesktop.org/series/105096/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11763 -> Patchwork_105096v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (3): fi-rkl-11600 bat-dg2-9 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105096v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - {bat-adlm-1}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlm-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  
Known issues
------------

  Here are the changes found in Patchwork_105096v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][2] -> [INCOMPLETE][3] ([i915#4418])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][4] -> [DMESG-FAIL][5] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - bat-adlp-4:         [PASS][9] -> [DMESG-WARN][10] ([i915#3576]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-kbl-soraka:      [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-kbl-soraka/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-kbl-soraka/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][13] ([i915#62]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-cfl-8109u:       [DMESG-WARN][15] ([i915#62]) -> [PASS][16] +78 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-4:         [DMESG-WARN][17] ([i915#3576]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlp-4/igt@kms_busy@basic@flip.html
    - fi-tgl-u2:          [DMESG-WARN][19] ([i915#402]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-tgl-u2/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227


Build changes
-------------

  * Linux: CI_DRM_11763 -> Patchwork_105096v2

  CI-20190529: 20190529
  CI_DRM_11763: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6530: d2df7e4ee648822ac0750aeb09f815ef449f4860 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105096v2: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e1bd82f96446 drm/i915/dsi: add payload receiving code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/index.html

--===============0953797241236401392==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: add payload receiving code (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105096/">https://patchwork.freedesktop.org/series/105096/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11763 -&gt; Patchwork_105096v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (3): fi-rkl-11600 bat-dg2-9 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105096v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_addfb_basic@framebuffer-vs-set-tiling:<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlm-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105096v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-kbl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-kbl-soraka/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-kbl-soraka/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/bat-adlp-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/bat-adlp-4/igt@kms_busy@basic@flip.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11763/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105096v2/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11763 -&gt; Patchwork_105096v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11763: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6530: d2df7e4ee648822ac0750aeb09f815ef449f4860 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105096v2: 28dae5c6593607d377d2a2b1473b041a300e7e78 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e1bd82f96446 drm/i915/dsi: add payload receiving code</p>

</body>
</html>

--===============0953797241236401392==--
