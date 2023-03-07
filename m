Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF2B6AD9CA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 10:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22C910E387;
	Tue,  7 Mar 2023 09:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B9DC10E387;
 Tue,  7 Mar 2023 09:02:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2497CA47EB;
 Tue,  7 Mar 2023 09:02:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9194483995147760371=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Tue, 07 Mar 2023 09:02:01 -0000
Message-ID: <167817972112.31453.1383795230869456728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230307080310.2739486-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230307080310.2739486-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Set_correct_voltage_level_for_480MHz_CDCLK?=
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

--===============9194483995147760371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Set correct voltage level for 480MHz CDCLK
URL   : https://patchwork.freedesktop.org/series/114752/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12820 -> Patchwork_114752v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/index.html

Participating hosts (36 -> 29)
------------------------------

  Missing    (7): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-snb-2520m bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_114752v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2] ([i915#7694] / [i915#7911] / [i915#7981])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-1/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][3] -> [ABORT][4] ([i915#4983] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-2/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([fdo#109271]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][6] ([i915#7911] / [i915#7913]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][8] ([i915#4258]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:
    - fi-rkl-11600:       [FAIL][10] ([fdo#103375]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7694]: https://gitlab.freedesktop.org/drm/intel/issues/7694
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12820 -> Patchwork_114752v1

  CI-20190529: 20190529
  CI_DRM_12820: 92ffdc75c9bc4983024875753cf70fe5259f72ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7181: f44a24fe9f1948a117daf3162db53df7820f9923 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114752v1: 92ffdc75c9bc4983024875753cf70fe5259f72ba @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4791f59a89da drm/i915/display: Set correct voltage level for 480MHz CDCLK

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/index.html

--===============9194483995147760371==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Set correct voltage level for 480MHz CDCLK</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114752/">https://patchwork.freedesktop.org/series/114752/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12820 -&gt; Patchwork_114752v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/index.html</p>
<h2>Participating hosts (36 -&gt; 29)</h2>
<p>Missing    (7): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-snb-2520m bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114752v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7694">i915#7694</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12820/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114752v1/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12820 -&gt; Patchwork_114752v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12820: 92ffdc75c9bc4983024875753cf70fe5259f72ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7181: f44a24fe9f1948a117daf3162db53df7820f9923 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114752v1: 92ffdc75c9bc4983024875753cf70fe5259f72ba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4791f59a89da drm/i915/display: Set correct voltage level for 480MHz CDCLK</p>

</body>
</html>

--===============9194483995147760371==--
