Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A27E371F63
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 20:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5166E8FF;
	Mon,  3 May 2021 18:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B10B46E8F0;
 Mon,  3 May 2021 18:15:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9A72A47DF;
 Mon,  3 May 2021 18:15:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 03 May 2021 18:15:43 -0000
Message-ID: <162006574366.13679.6773847833876513620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210501002853.4132009-1-imre.deak@intel.com>
In-Reply-To: <20210501002853.4132009-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Add_the_missing_MC_CCS/XYUV8888_format_support?=
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
Content-Type: multipart/mixed; boundary="===============1020429133=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1020429133==
Content-Type: multipart/alternative;
 boundary="===============1496755208650315550=="

--===============1496755208650315550==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl+: Add the missing MC CCS/XYUV8888 format support
URL   : https://patchwork.freedesktop.org/series/89721/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10038 -> Patchwork_20052
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/index.html

Known issues
------------

  Here are the changes found in Patchwork_20052 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][2] -> [FAIL][3] ([i915#1372])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - {fi-tgl-1115g4}:    [DMESG-WARN][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][6] ([i915#1849] / [i915#3180]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3436]: https://gitlab.freedesktop.org/drm/intel/issues/3436


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10038 -> Patchwork_20052

  CI-20190529: 20190529
  CI_DRM_10038: 11b6e4accaaf1d9d04921f278c6724ee7e4d8e43 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20052: 03ef48e01809dcf34cc3c40b265a02a3dbc6c93f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03ef48e01809 drm/i915/tgl+: Add the missing MC CCS/XYUV8888 format support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/index.html

--===============1496755208650315550==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl+: Add the missing MC CCS/XYUV8888 format support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89721/">https://patchwork.freedesktop.org/series/89721/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10038 -&gt; Patchwork_20052</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20052 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10038/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20052/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10038 -&gt; Patchwork_20052</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10038: 11b6e4accaaf1d9d04921f278c6724ee7e4d8e43 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20052: 03ef48e01809dcf34cc3c40b265a02a3dbc6c93f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>03ef48e01809 drm/i915/tgl+: Add the missing MC CCS/XYUV8888 format support</p>

</body>
</html>

--===============1496755208650315550==--

--===============1020429133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1020429133==--
