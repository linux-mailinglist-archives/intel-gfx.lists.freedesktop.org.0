Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87815372148
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 22:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82EF6E17F;
	Mon,  3 May 2021 20:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0D346E16F;
 Mon,  3 May 2021 20:27:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8AD1A0169;
 Mon,  3 May 2021 20:27:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe Leroy" <christophe.leroy@csgroup.eu>
Date: Mon, 03 May 2021 20:27:12 -0000
Message-ID: <162007363281.13686.15263420138859534821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f148cffa418ca0e6e4d79657fc8a9108917291ce.1619856556.git.christophe.leroy@csgroup.eu>
In-Reply-To: <f148cffa418ca0e6e4d79657fc8a9108917291ce.1619856556.git.christophe.leroy@csgroup.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Use_user=5Fwrite=5Faccess=5Fbegin=28=29_instead_of?=
 =?utf-8?b?IHVzZXJfYWNjZXNzX2JlZ2luKCkgKHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0012716696=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0012716696==
Content-Type: multipart/alternative;
 boundary="===============4193708940473934233=="

--===============4193708940473934233==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Use user_write_access_begin() instead of user_access_begin() (rev2)
URL   : https://patchwork.freedesktop.org/series/87834/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10039 -> Patchwork_20054
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/index.html

Known issues
------------

  Here are the changes found in Patchwork_20054 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][3] ([i915#1886] / [i915#2291])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#533])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - {fi-tgl-1115g4}:    [FAIL][6] ([i915#1888]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10039/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@basic-rte:
    - {fi-tgl-1115g4}:    [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10039/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10039 -> Patchwork_20054

  CI-20190529: 20190529
  CI_DRM_10039: a707d569366fe3e474683e56e8acf0f6d5cb2cab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20054: 3b5e939c06cb93588fb0550e0e4c6245916bf5de @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3b5e939c06cb drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/index.html

--===============4193708940473934233==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Use user_write_access_begin() instead of user_access_begin() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87834/">https://patchwork.freedesktop.org/series/87834/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10039 -&gt; Patchwork_20054</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20054 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10039/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10039/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20054/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10039 -&gt; Patchwork_20054</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10039: a707d569366fe3e474683e56e8acf0f6d5cb2cab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20054: 3b5e939c06cb93588fb0550e0e4c6245916bf5de @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3b5e939c06cb drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()</p>

</body>
</html>

--===============4193708940473934233==--

--===============0012716696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0012716696==--
