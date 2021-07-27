Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 637443D789B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 16:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0416E18E;
	Tue, 27 Jul 2021 14:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8503F6E18E;
 Tue, 27 Jul 2021 14:37:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EA4AA7DFB;
 Tue, 27 Jul 2021 14:37:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jul 2021 14:37:59 -0000
Message-ID: <162739667951.18664.15915195684470446901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C01/11=5D_drm/i915=3A_Check_for_nomode?=
 =?utf-8?q?set_in_i915=5Finit=28=29_first?=
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
Content-Type: multipart/mixed; boundary="===============1590914864=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1590914864==
Content-Type: multipart/alternative;
 boundary="===============6044032252865319314=="

--===============6044032252865319314==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,01/11] drm/i915: Check for nomodeset in i915_init() first
URL   : https://patchwork.freedesktop.org/series/93066/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10404 -> Patchwork_20715
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/index.html

Known issues
------------

  Here are the changes found in Patchwork_20715 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +29 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#1372])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10404 -> Patchwork_20715

  CI-20190529: 20190529
  CI_DRM_10404: 371bd54db63fdd99356a1a3d0fdc9b76616eddcb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20715: e3aa4c53ca1e1c5676978e68a9f6d0125eec7ae9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3aa4c53ca1e drm/i915: Extract i915_module.c
0d4a676a47a4 drm/i915: Remove i915_globals
2567a687274b drm/i915: move vma slab to direct module init/exit
1eefc0331fde drm/i915: move scheduler slabs to direct module init/exit
9547d213ca53 drm/i915: move request slabs to direct module init/exit
d8736bba255c drm/i915: move gem_objects slab to direct module init/exit
591b60d8aad3 drm/i915: move gem_context slab to direct module init/exit
68a6ff81e0d6 drm/i915: move intel_context slab to direct module init/exit
d56d75be6b62 drm/i915: move i915_buddy slab to direct module init/exit
2f47345a0149 drm/i915: move i915_active slab to direct module init/exit
526b1246de6a drm/i915: Check for nomodeset in i915_init() first

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/index.html

--===============6044032252865319314==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,01/11] drm/i915: Check for nomodeset in i915_init() first</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93066/">https://patchwork.freedesktop.org/series/93066/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10404 -&gt; Patchwork_20715</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20715 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10404/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20715/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10404 -&gt; Patchwork_20715</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10404: 371bd54db63fdd99356a1a3d0fdc9b76616eddcb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20715: e3aa4c53ca1e1c5676978e68a9f6d0125eec7ae9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e3aa4c53ca1e drm/i915: Extract i915_module.c<br />
0d4a676a47a4 drm/i915: Remove i915_globals<br />
2567a687274b drm/i915: move vma slab to direct module init/exit<br />
1eefc0331fde drm/i915: move scheduler slabs to direct module init/exit<br />
9547d213ca53 drm/i915: move request slabs to direct module init/exit<br />
d8736bba255c drm/i915: move gem_objects slab to direct module init/exit<br />
591b60d8aad3 drm/i915: move gem_context slab to direct module init/exit<br />
68a6ff81e0d6 drm/i915: move intel_context slab to direct module init/exit<br />
d56d75be6b62 drm/i915: move i915_buddy slab to direct module init/exit<br />
2f47345a0149 drm/i915: move i915_active slab to direct module init/exit<br />
526b1246de6a drm/i915: Check for nomodeset in i915_init() first</p>

</body>
</html>

--===============6044032252865319314==--

--===============1590914864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1590914864==--
