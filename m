Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F95397BBD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 23:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2D66E210;
	Tue,  1 Jun 2021 21:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44E306E0DD;
 Tue,  1 Jun 2021 21:29:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CBEDA363D;
 Tue,  1 Jun 2021 21:29:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Tue, 01 Jun 2021 21:29:47 -0000
Message-ID: <162258298721.19249.5466940444909310594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms_=28r?=
 =?utf-8?q?ev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0813031468=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0813031468==
Content-Type: multipart/alternative;
 boundary="===============7492723186110122142=="

--===============7492723186110122142==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add relocation exceptions for two other platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/89594/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10156 -> Patchwork_20258
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html

Known issues
------------

  Here are the changes found in Patchwork_20258 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][1] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][2] ([i915#1436] / [i915#3363])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10156/fi-kbl-r/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/fi-kbl-r/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][3] ([i915#1436] / [i915#3363]) -> [FAIL][4] ([i915#1436] / [i915#2426] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10156/fi-skl-6700k2/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10156 -> Patchwork_20258

  CI-20190529: 20190529
  CI_DRM_10156: 551125c07e42a44a1b4bf8ad735619f2e315a0e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20258: 41a20f6df2f115353360377f97f73b6c291313d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

41a20f6df2f1 drm/i915: Add relocation exceptions for two other platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html

--===============7492723186110122142==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add relocation exceptions for two other platforms (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89594/">https://patchwork.freedesktop.org/series/89594/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10156 -&gt; Patchwork_20258</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20258 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10156/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10156/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10156 -&gt; Patchwork_20258</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10156: 551125c07e42a44a1b4bf8ad735619f2e315a0e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20258: 41a20f6df2f115353360377f97f73b6c291313d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>41a20f6df2f1 drm/i915: Add relocation exceptions for two other platforms</p>

</body>
</html>

--===============7492723186110122142==--

--===============0813031468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0813031468==--
