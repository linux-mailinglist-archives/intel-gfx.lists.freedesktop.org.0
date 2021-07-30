Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3033D3DBF26
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 21:46:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3ADE6F471;
	Fri, 30 Jul 2021 19:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7E5F6F46F;
 Fri, 30 Jul 2021 19:46:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0C56A8836;
 Fri, 30 Jul 2021 19:46:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7254463385538000687=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jul 2021 19:46:12 -0000
Message-ID: <162767437269.590.6846805149525130139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730191115.2514581-1-lucas.demarchi@intel.com>
In-Reply-To: <20210730191115.2514581-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/xehp=3A_Fix_missing_sentinel_on_mcr=5Franges=5Fxehp?=
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

--===============7254463385538000687==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xehp: Fix missing sentinel on mcr_ranges_xehp
URL   : https://patchwork.freedesktop.org/series/93244/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10427 -> Patchwork_20750
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html

Known issues
------------

  Here are the changes found in Patchwork_20750 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [DMESG-WARN][2] ([i915#2867]) -> [PASS][3] +16 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/fi-tgl-u2/igt@i915_selftest@live@workarounds.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10427 -> Patchwork_20750

  CI-20190529: 20190529
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20750: 3c3b9c011b808304dd929322e33c2fcf9e487884 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3c3b9c011b80 drm/i915/xehp: Fix missing sentinel on mcr_ranges_xehp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html

--===============7254463385538000687==
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
<tr><td><b>Series:</b></td><td>drm/i915/xehp: Fix missing sentinel on mcr_ranges_xehp</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93244/">https://patchwork.freedesktop.org/series/93244/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10427 -&gt; Patchwork_20750</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20750 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20750/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> +16 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10427 -&gt; Patchwork_20750</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20750: 3c3b9c011b808304dd929322e33c2fcf9e487884 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3c3b9c011b80 drm/i915/xehp: Fix missing sentinel on mcr_ranges_xehp</p>

</body>
</html>

--===============7254463385538000687==--
