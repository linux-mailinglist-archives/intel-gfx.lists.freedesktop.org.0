Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65F579000
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 03:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF3110F18E;
	Tue, 19 Jul 2022 01:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E1DE1120A4;
 Tue, 19 Jul 2022 01:48:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 867C1A66C8;
 Tue, 19 Jul 2022 01:48:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5658595256979493507=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Tue, 19 Jul 2022 01:48:58 -0000
Message-ID: <165819533851.16365.17643785685019769692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1658192398.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1658192398.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Expose_per_gt_defaults_in_sysfs?=
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

--===============5658595256979493507==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Expose per gt defaults in sysfs
URL   : https://patchwork.freedesktop.org/series/106460/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11915 -> Patchwork_106460v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/index.html

Participating hosts (31 -> 28)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (4): fi-kbl-soraka fi-rkl-11600 fi-icl-u2 bat-jsl-3 

Known issues
------------

  Here are the changes found in Patchwork_106460v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#3012])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][2] ([i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-blb-e6850/igt@i915_selftest@live@gem.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6] ([i915#146])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1072]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#2403] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][11] ([i915#4528]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528


Build changes
-------------

  * Linux: CI_DRM_11915 -> Patchwork_106460v1

  CI-20190529: 20190529
  CI_DRM_11915: 59ad60b8e2d9defbdf03fc9c2f38b573fa053b2d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6589: f1fcde9103383c59d91881d1390a8859be395ce0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106460v1: 59ad60b8e2d9defbdf03fc9c2f38b573fa053b2d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c3f45e10c921 drm/i915/gt: Expose per-gt RPS defaults in sysfs
84d7a641d9b6 drm/i915/gt: Create gt/gtN/.defaults/ for per gt sysfs defaults

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/index.html

--===============5658595256979493507==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Expose per gt defaults in sysfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106460/">https://patchwork.freedesktop.org/series/106460/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11915 -&gt; Patchwork_106460v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/index.html</p>
<h2>Participating hosts (31 -&gt; 28)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (4): fi-kbl-soraka fi-rkl-11600 fi-icl-u2 bat-jsl-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106460v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11915/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106460v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11915 -&gt; Patchwork_106460v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11915: 59ad60b8e2d9defbdf03fc9c2f38b573fa053b2d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6589: f1fcde9103383c59d91881d1390a8859be395ce0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106460v1: 59ad60b8e2d9defbdf03fc9c2f38b573fa053b2d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c3f45e10c921 drm/i915/gt: Expose per-gt RPS defaults in sysfs<br />
84d7a641d9b6 drm/i915/gt: Create gt/gtN/.defaults/ for per gt sysfs defaults</p>

</body>
</html>

--===============5658595256979493507==--
