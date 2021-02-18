Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B92B331E6A8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 08:09:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488F16E2DC;
	Thu, 18 Feb 2021 07:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC7976E25A;
 Thu, 18 Feb 2021 07:09:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8E08A8830;
 Thu, 18 Feb 2021 07:09:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Thu, 18 Feb 2021 07:09:32 -0000
Message-ID: <161363217268.23765.14470886066252566508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vbt=3A_update_DP_max_link_rate_table_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1364797993=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1364797993==
Content-Type: multipart/alternative;
 boundary="===============0883657296668431312=="

--===============0883657296668431312==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vbt: update DP max link rate table (rev4)
URL   : https://patchwork.freedesktop.org/series/86539/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9783 -> Patchwork_19699
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/index.html

Known issues
------------

  Here are the changes found in Patchwork_19699 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           NOTRUN -> [DMESG-WARN][1] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][2] -> [INCOMPLETE][3] ([i915#142] / [i915#2405])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][4] ([i915#2373])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][5] ([i915#1759])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           NOTRUN -> [SKIP][6] ([fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           NOTRUN -> [SKIP][7] ([fdo#109285])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][8] ([i915#1814] / [i915#2505])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2520m:       [DMESG-FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/fi-snb-2520m/igt@i915_selftest@live@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-snb-2520m/igt@i915_selftest@live@blt.html

  
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 38)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-hsw-4770 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9783 -> Patchwork_19699

  CI-20190529: 20190529
  CI_DRM_9783: 498a1b2bfd0ecf4401c2f653a82e9ae2c80c9145 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6005: b69a3c463f0aec46b19c14ac24351d292cb11c08 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19699: 3d1daa4bfb5d9854b96225de08a6ef5d6c74c921 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d1daa4bfb5d drm/i915/vbt: update DP max link rate table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/index.html

--===============0883657296668431312==
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
<tr><td><b>Series:</b></td><td>drm/i915/vbt: update DP max link rate table (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86539/">https://patchwork.freedesktop.org/series/86539/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9783 -&gt; Patchwork_19699</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19699 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@gem_sync@basic-each.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@blt:<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9783/fi-snb-2520m/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19699/fi-snb-2520m/igt@i915_selftest@live@blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-hsw-4770 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9783 -&gt; Patchwork_19699</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9783: 498a1b2bfd0ecf4401c2f653a82e9ae2c80c9145 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6005: b69a3c463f0aec46b19c14ac24351d292cb11c08 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19699: 3d1daa4bfb5d9854b96225de08a6ef5d6c74c921 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3d1daa4bfb5d drm/i915/vbt: update DP max link rate table</p>

</body>
</html>

--===============0883657296668431312==--

--===============1364797993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1364797993==--
