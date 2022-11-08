Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 710CA62109F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 13:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A615E10E41A;
	Tue,  8 Nov 2022 12:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBBBE10E41A;
 Tue,  8 Nov 2022 12:29:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5DECAADD2;
 Tue,  8 Nov 2022 12:29:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8484127738460828272=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 08 Nov 2022 12:29:28 -0000
Message-ID: <166791056873.2238.3334278533617607535@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221108103238.165447-1-matthew.auld@intel.com>
In-Reply-To: <20221108103238.165447-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_use_i915=5Fsg=5Fdma=5Fsizes=28=29_for_all_backends_=28?=
 =?utf-8?q?rev2=29?=
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

--===============8484127738460828272==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: use i915_sg_dma_sizes() for all backends (rev2)
URL   : https://patchwork.freedesktop.org/series/110620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12354 -> Patchwork_110620v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-hsw-4770 fi-ilk-m540 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_110620v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][1] ([i915#146])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-11600:       NOTRUN -> [SKIP][2] ([fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-plain-flip:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][4] ([fdo#109271]) +31 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@kms_flip@basic-plain-flip.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][5] ([i915#7229]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bdw-gvtdvm:      [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_linear_blits@basic:
    - fi-pnv-d510:        [SKIP][9] ([fdo#109271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-pnv-d510/igt@gem_linear_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-pnv-d510/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][11] ([i915#5334]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - {bat-adlp-6}:       [INCOMPLETE][13] ([i915#7348]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/bat-adlp-6/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][15] ([i915#4817]) -> [FAIL][16] ([fdo#103375])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7355]: https://gitlab.freedesktop.org/drm/intel/issues/7355


Build changes
-------------

  * Linux: CI_DRM_12354 -> Patchwork_110620v2

  CI-20190529: 20190529
  CI_DRM_12354: ee91a500e2dc4a8b28c9e90a81e70767e6630301 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7047: 9cea1d05f492429a6d793995b87081e87a94b492 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110620v2: ee91a500e2dc4a8b28c9e90a81e70767e6630301 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cdd71ad6cc45 drm/i915: use i915_sg_dma_sizes() for all backends

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/index.html

--===============8484127738460828272==
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
<tr><td><b>Series:</b></td><td>drm/i915: use i915_sg_dma_sizes() for all backends (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110620/">https://patchwork.freedesktop.org/series/110620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12354 -&gt; Patchwork_110620v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-hsw-4770 fi-ilk-m540 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110620v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-pnv-d510/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-pnv-d510/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/bat-adlp-6/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12354/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110620v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12354 -&gt; Patchwork_110620v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12354: ee91a500e2dc4a8b28c9e90a81e70767e6630301 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7047: 9cea1d05f492429a6d793995b87081e87a94b492 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110620v2: ee91a500e2dc4a8b28c9e90a81e70767e6630301 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cdd71ad6cc45 drm/i915: use i915_sg_dma_sizes() for all backends</p>

</body>
</html>

--===============8484127738460828272==--
