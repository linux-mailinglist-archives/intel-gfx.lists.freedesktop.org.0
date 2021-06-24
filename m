Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7863B399F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 01:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EBC6E9B6;
	Thu, 24 Jun 2021 23:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E47496E9B6;
 Thu, 24 Jun 2021 23:05:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D39A1A47E1;
 Thu, 24 Jun 2021 23:05:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 24 Jun 2021 23:05:13 -0000
Message-ID: <162457591383.1851.7578573729652989379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=2C_drm/ttm=3A_Update_the_ttm=5Fmove=5Fmemcpy=28=29_interf?=
 =?utf-8?q?ace?=
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
Content-Type: multipart/mixed; boundary="===============1139364941=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1139364941==
Content-Type: multipart/alternative;
 boundary="===============8099869282394785993=="

--===============8099869282394785993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915, drm/ttm: Update the ttm_move_memcpy() interface
URL   : https://patchwork.freedesktop.org/series/91893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10278 -> Patchwork_20463
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/index.html

Known issues
------------

  Here are the changes found in Patchwork_20463 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#2782])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-kbl-soraka/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#1436] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#1982] / [k.org#205379]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10278 -> Patchwork_20463

  CI-20190529: 20190529
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20463: 85a97e35327d5c07f52418186979b31c81f13eee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

85a97e35327d drm/ttm, drm/i915: Update ttm_move_memcpy for async use
a621c25bc265 drm/i915/ttm: Reorganize the ttm move code somewhat

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/index.html

--===============8099869282394785993==
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
<tr><td><b>Series:</b></td><td>drm/i915, drm/ttm: Update the ttm_move_memcpy() interface</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91893/">https://patchwork.freedesktop.org/series/91893/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10278 -&gt; Patchwork_20463</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20463 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-kbl-soraka/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10278/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20463/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10278 -&gt; Patchwork_20463</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10278: 33497e95c159f1fe3393f1016b1ec1187eab1589 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20463: 85a97e35327d5c07f52418186979b31c81f13eee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>85a97e35327d drm/ttm, drm/i915: Update ttm_move_memcpy for async use<br />
a621c25bc265 drm/i915/ttm: Reorganize the ttm move code somewhat</p>

</body>
</html>

--===============8099869282394785993==--

--===============1139364941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1139364941==--
