Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5E43F9ACC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 16:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E8A6E97A;
	Fri, 27 Aug 2021 14:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 359476E975;
 Fri, 27 Aug 2021 14:21:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DFBFA363C;
 Fri, 27 Aug 2021 14:21:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6074263645174491879=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 14:21:29 -0000
Message-ID: <163007408918.12587.2131706885093931214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210827133039.287075-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210827133039.287075-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Handle_Intel_igfx_+_Intel_dgfx_hybrid_graphics_setup?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6074263645174491879==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Handle Intel igfx + Intel dgfx hybrid graphics setup
URL   : https://patchwork.freedesktop.org/series/94105/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10530 -> Patchwork_20909
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/index.html

Known issues
------------

  Here are the changes found in Patchwork_20909 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][2] -> [DMESG-WARN][3] ([i915#3925])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-rkl-11600:       [PASS][4] -> [FAIL][5] ([i915#3983])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][6] ([i915#1602])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [DMESG-WARN][7] ([i915#2203] / [i915#2868]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
  [i915#3983]: https://gitlab.freedesktop.org/drm/intel/issues/3983


Participating hosts (38 -> 33)
------------------------------

  Missing    (5): fi-ilk-m540 bat-adls-5 fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10530 -> Patchwork_20909

  CI-20190529: 20190529
  CI_DRM_10530: 63bca765c920120bd9746d9093190d82c4ace341 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20909: 2758fcf46edb870b8a654d0a5de589b846b11861 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2758fcf46edb drm/i915: Handle Intel igfx + Intel dgfx hybrid graphics setup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/index.html

--===============6074263645174491879==
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
<tr><td><b>Series:</b></td><td>drm/i915: Handle Intel igfx + Intel dgfx hybrid graphics setup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94105/">https://patchwork.freedesktop.org/series/94105/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10530 -&gt; Patchwork_20909</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20909 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3983">i915#3983</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@hdmi-hpd-fast:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10530/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20909/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): fi-ilk-m540 bat-adls-5 fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10530 -&gt; Patchwork_20909</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10530: 63bca765c920120bd9746d9093190d82c4ace341 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20909: 2758fcf46edb870b8a654d0a5de589b846b11861 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2758fcf46edb drm/i915: Handle Intel igfx + Intel dgfx hybrid graphics setup</p>

</body>
</html>

--===============6074263645174491879==--
