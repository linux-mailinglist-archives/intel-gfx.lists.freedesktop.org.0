Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0069375A05
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78536E169;
	Thu,  6 May 2021 18:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 580626E0BA;
 Thu,  6 May 2021 18:14:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FA58A66C9;
 Thu,  6 May 2021 18:14:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 06 May 2021 18:14:20 -0000
Message-ID: <162032486029.15691.1972196286511627311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210506161930.309688-1-imre.deak@intel.com>
In-Reply-To: <20210506161930.309688-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0221801096=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0221801096==
Content-Type: multipart/alternative;
 boundary="===============7005335763794730370=="

--===============7005335763794730370==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_p: Add support for Display Page Tables (rev2)
URL   : https://patchwork.freedesktop.org/series/89078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10053 -> Patchwork_20077
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html

Known issues
------------

  Here are the changes found in Patchwork_20077 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][2] -> [INCOMPLETE][3] ([i915#2782])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#3449])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10053 -> Patchwork_20077

  CI-20190529: 20190529
  CI_DRM_10053: 3e000bbf311ad04f734843e1ba6396b28ba44399 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6080: 1c450c3d4df19cf1087b8ccff3b62cb51addacae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20077: e83dba92cd47bd2b5841fc8e7f66bbd7d376e7bd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e83dba92cd47 drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT
6cc7df9cf93e drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs
f86259ff5f81 drm/i915/adl_p: Disable support for 90/270 FB rotation
c55b96cff231 drm/i915/adl_p: Add stride restriction when using DPT
c14a9051e424 drm/i915/xelpd: Support 128k plane stride
c248682ab7f3 drm/i915/xelpd: Fallback to plane stride limitations when using DPT
9c9b86ac6d1f drm/i915/xelpd: First stab at DPT support
a35b4326f650 drm/i915/adl_p: ADL_P device info enabling
a319d966c549 drm/i915/adl_p: Add PCI Devices IDs
ff3b7dc8f685 drm/i915/xelpd: add XE_LPD display characteristics

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html

--===============7005335763794730370==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_p: Add support for Display Page Tables (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89078/">https://patchwork.freedesktop.org/series/89078/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10053 -&gt; Patchwork_20077</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20077 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10053 -&gt; Patchwork_20077</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10053: 3e000bbf311ad04f734843e1ba6396b28ba44399 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6080: 1c450c3d4df19cf1087b8ccff3b62cb51addacae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20077: e83dba92cd47bd2b5841fc8e7f66bbd7d376e7bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e83dba92cd47 drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT<br />
6cc7df9cf93e drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs<br />
f86259ff5f81 drm/i915/adl_p: Disable support for 90/270 FB rotation<br />
c55b96cff231 drm/i915/adl_p: Add stride restriction when using DPT<br />
c14a9051e424 drm/i915/xelpd: Support 128k plane stride<br />
c248682ab7f3 drm/i915/xelpd: Fallback to plane stride limitations when using DPT<br />
9c9b86ac6d1f drm/i915/xelpd: First stab at DPT support<br />
a35b4326f650 drm/i915/adl_p: ADL_P device info enabling<br />
a319d966c549 drm/i915/adl_p: Add PCI Devices IDs<br />
ff3b7dc8f685 drm/i915/xelpd: add XE_LPD display characteristics</p>

</body>
</html>

--===============7005335763794730370==--

--===============0221801096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0221801096==--
