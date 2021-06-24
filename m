Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1D73B393C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 00:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D16B6E07F;
	Thu, 24 Jun 2021 22:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B91056E07F;
 Thu, 24 Jun 2021 22:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1C55AA0EB;
 Thu, 24 Jun 2021 22:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 24 Jun 2021 22:33:20 -0000
Message-ID: <162457400069.1853.2690966367368995182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Introduce_a_migrate_interface?=
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
Content-Type: multipart/mixed; boundary="===============0512843786=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0512843786==
Content-Type: multipart/alternative;
 boundary="===============3959297747154654734=="

--===============3959297747154654734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Introduce a migrate interface
URL   : https://patchwork.freedesktop.org/series/91890/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10278 -> Patchwork_20462
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10278 and Patchwork_20462:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gem_migrate:
    - Statuses : 34 pass(s)
    - Exec time: [0.43, 5.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_20462 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([i915#151] / [i915#2405])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#1814] / [i915#2722] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-kbl-7500u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#1982] / [k.org#205379]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10278 -> Patchwork_20462

  CI-20190529: 20190529
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20462: de1e6e1fa3f7380663488844a29ddb461157ef3c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

de1e6e1fa3f7 drm/i915/gem: Migrate to system at dma-buf map time
974c401400ff drm/i915/display: Migrate objects to LMEM if possible for display
c7fc34104143 drm/i915/gem: Introduce a selftest for the gem object migrate functionality
ee56ef21edf6 drm/i915/gem: Implement object migration

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html

--===============3959297747154654734==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Introduce a migrate interface</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91890/">https://patchwork.freedesktop.org/series/91890/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10278 -&gt; Patchwork_20462</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10278 and Patchwork_20462:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>Statuses : 34 pass(s)</li>
<li>Exec time: [0.43, 5.13] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20462 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20462/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10278 -&gt; Patchwork_20462</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20462: de1e6e1fa3f7380663488844a29ddb461157ef3c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>de1e6e1fa3f7 drm/i915/gem: Migrate to system at dma-buf map time<br />
974c401400ff drm/i915/display: Migrate objects to LMEM if possible for display<br />
c7fc34104143 drm/i915/gem: Introduce a selftest for the gem object migrate functionality<br />
ee56ef21edf6 drm/i915/gem: Implement object migration</p>

</body>
</html>

--===============3959297747154654734==--

--===============0512843786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0512843786==--
