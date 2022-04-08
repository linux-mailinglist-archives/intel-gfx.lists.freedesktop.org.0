Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2864F9EE9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 23:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C5610E783;
	Fri,  8 Apr 2022 21:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A81B10E6ED;
 Fri,  8 Apr 2022 21:11:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29925AA914;
 Fri,  8 Apr 2022 21:11:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5672395494430766364=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 08 Apr 2022 21:11:47 -0000
Message-ID: <164945230713.22680.4009714945231996803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408164837.3845786-1-lucas.demarchi@intel.com>
In-Reply-To: <20220408164837.3845786-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uncore=3A_Warn_only_if_unclaimed_access_remains_flagged?=
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

--===============5672395494430766364==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uncore: Warn only if unclaimed access remains flagged
URL   : https://patchwork.freedesktop.org/series/102424/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11479 -> Patchwork_22830
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/index.html

Participating hosts (47 -> 44)
------------------------------

  Additional (2): bat-rpls-1 fi-kbl-8809g 
  Missing    (5): fi-skl-guc fi-bsw-cyan fi-icl-u2 fi-pnv-d510 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22830:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - {bat-adlp-6}:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_22830 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][2] ([i915#5557])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][3] -> [INCOMPLETE][4] ([i915#5127])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][5] ([i915#2722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][7] ([i915#2867]) -> [PASS][8] +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][11] ([i915#4269]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557


Build changes
-------------

  * Linux: CI_DRM_11479 -> Patchwork_22830

  CI-20190529: 20190529
  CI_DRM_11479: 4dcdb745569d8eef8db09e24e8ff2e5dffc0664c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22830: 8f5512756b31dd254cd49c3dcd54f3f4e25afe34 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f5512756b31 drm/i915/uncore: Warn only if unclaimed access remains flagged

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/index.html

--===============5672395494430766364==
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
<tr><td><b>Series:</b></td><td>drm/i915/uncore: Warn only if unclaimed access remains flagged</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102424/">https://patchwork.freedesktop.org/series/102424/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11479 -&gt; Patchwork_22830</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/index.html</p>
<h2>Participating hosts (47 -&gt; 44)</h2>
<p>Additional (2): bat-rpls-1 fi-kbl-8809g <br />
  Missing    (5): fi-skl-guc fi-bsw-cyan fi-icl-u2 fi-pnv-d510 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22830:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:<ul>
<li>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22830 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11479/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22830/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11479 -&gt; Patchwork_22830</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11479: 4dcdb745569d8eef8db09e24e8ff2e5dffc0664c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22830: 8f5512756b31dd254cd49c3dcd54f3f4e25afe34 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8f5512756b31 drm/i915/uncore: Warn only if unclaimed access remains flagged</p>

</body>
</html>

--===============5672395494430766364==--
