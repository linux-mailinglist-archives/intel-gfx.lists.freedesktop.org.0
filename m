Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3503C1CEE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 03:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B502A6E528;
	Fri,  9 Jul 2021 01:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5600E6E528;
 Fri,  9 Jul 2021 01:03:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F071A47E9;
 Fri,  9 Jul 2021 01:03:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 09 Jul 2021 01:03:17 -0000
Message-ID: <162579259729.9810.12831144327437386840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR2V0?=
 =?utf-8?q?_stepping_info_from_RUNTIME=5FINFO-=3Estep?=
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
Content-Type: multipart/mixed; boundary="===============1653351397=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1653351397==
Content-Type: multipart/alternative;
 boundary="===============5700053469764597447=="

--===============5700053469764597447==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Get stepping info from RUNTIME_INFO->step
URL   : https://patchwork.freedesktop.org/series/92346/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10320 -> Patchwork_20560
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20560 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20560, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20560:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_20560 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4] ([i915#2944])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bdw-5557u/igt@gem_sync@basic-each.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bdw-5557u/igt@gem_sync@basic-each.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][5] ([i915#2722] / [i915#3744]) -> [FAIL][6] ([i915#2722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bdw-5557u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bdw-5557u/igt@runner@aborted.html

  
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2944]: https://gitlab.freedesktop.org/drm/intel/issues/2944
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744


Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10320 -> Patchwork_20560

  CI-20190529: 20190529
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20560: 2ecb4107afb2f9dfa4c87599cdb00c099b3de1e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2ecb4107afb2 drm/i915/dmc: Modify intel_get_stepping_info()
de45975f5a75 drm/i915/step: Add intel_step_name() helper
5b936277263e drm/i915/bxt: Use revid->stepping tables
2bc809b73f67 drm/i915/cnl: Drop all workarounds
da4af914b48b drm/i915/dg1: Use revid->stepping tables
95363c8b9dc9 drm/i915/rkl: Use revid->stepping tables
2f61797e047b drm/i915/jsl_ehl: Use revid->stepping tables
daee55a59631 drm/i915/icl: Use revid->stepping tables
8ad43b5ade6f drm/i915/skl: Use revid->stepping tables
c109c3b789aa drm/i915: Make pre-production detection use direct revid comparison

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/index.html

--===============5700053469764597447==
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
<tr><td><b>Series:</b></td><td>Get stepping info from RUNTIME_INFO-&gt;step</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92346/">https://patchwork.freedesktop.org/series/92346/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10320 -&gt; Patchwork_20560</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20560 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20560, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20560:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20560 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_sync@basic-each:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bdw-5557u/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bdw-5557u/igt@gem_sync@basic-each.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2944">i915#2944</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10320/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20560/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10320 -&gt; Patchwork_20560</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10320: 7d61ab4a59bcbb206324b6a430748b4c15dd8adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6132: 61fb9cdf2a9132e3618c8b08b9d20fec0c347831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20560: 2ecb4107afb2f9dfa4c87599cdb00c099b3de1e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2ecb4107afb2 drm/i915/dmc: Modify intel_get_stepping_info()<br />
de45975f5a75 drm/i915/step: Add intel_step_name() helper<br />
5b936277263e drm/i915/bxt: Use revid-&gt;stepping tables<br />
2bc809b73f67 drm/i915/cnl: Drop all workarounds<br />
da4af914b48b drm/i915/dg1: Use revid-&gt;stepping tables<br />
95363c8b9dc9 drm/i915/rkl: Use revid-&gt;stepping tables<br />
2f61797e047b drm/i915/jsl_ehl: Use revid-&gt;stepping tables<br />
daee55a59631 drm/i915/icl: Use revid-&gt;stepping tables<br />
8ad43b5ade6f drm/i915/skl: Use revid-&gt;stepping tables<br />
c109c3b789aa drm/i915: Make pre-production detection use direct revid comparison</p>

</body>
</html>

--===============5700053469764597447==--

--===============1653351397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1653351397==--
