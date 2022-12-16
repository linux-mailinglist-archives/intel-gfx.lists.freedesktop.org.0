Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AFF64E935
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 11:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8945710E12D;
	Fri, 16 Dec 2022 10:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AA1910E12D;
 Fri, 16 Dec 2022 10:11:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24F8DA7E03;
 Fri, 16 Dec 2022 10:11:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4021931180471285250=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 16 Dec 2022 10:11:18 -0000
Message-ID: <167118547811.5854.14786412613972470903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216092356.3336893-1-andrzej.hajda@intel.com>
In-Reply-To: <20221216092356.3336893-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vlv=3A_use_intel=5Fde=5Frmw_if_possible?=
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

--===============4021931180471285250==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/vlv: use intel_de_rmw if possible
URL   : https://patchwork.freedesktop.org/series/112001/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12511 -> Patchwork_112001v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (2): fi-bwr-2160 fi-snb-2520m 
  Missing    (2): bat-rpls-2 bat-atsm-1 

Known issues
------------

  Here are the changes found in Patchwork_112001v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-FAIL][3] ([i915#5334])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-soraka:      [PASS][4] -> [INCOMPLETE][5] ([i915#7640])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-11600:       NOTRUN -> [SKIP][6] ([fdo#111827])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-bwr-2160:        NOTRUN -> [SKIP][9] ([fdo#109271]) +54 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-bwr-2160/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-snb-2520m:       NOTRUN -> [SKIP][10] ([fdo#109271]) +23 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-adln-1}:       [INCOMPLETE][11] ([i915#4983] / [i915#7609]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][13] ([i915#4817]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640


Build changes
-------------

  * Linux: CI_DRM_12511 -> Patchwork_112001v1

  CI-20190529: 20190529
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112001v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cfc1ad5f3a14 drm/i915/display/vlv: use intel_de_rmw if possible

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html

--===============4021931180471285250==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/vlv: use intel_de_rmw if possible</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112001/">https://patchwork.freedesktop.org/series/112001/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12511 -&gt; Patchwork_112001v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (2): fi-bwr-2160 fi-snb-2520m <br />
  Missing    (2): bat-rpls-2 bat-atsm-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112001v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7640">i915#7640</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-bwr-2160/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112001v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12511 -&gt; Patchwork_112001v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112001v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cfc1ad5f3a14 drm/i915/display/vlv: use intel_de_rmw if possible</p>

</body>
</html>

--===============4021931180471285250==--
