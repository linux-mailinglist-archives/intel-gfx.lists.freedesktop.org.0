Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 059323F8B03
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 17:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C748B6E87D;
	Thu, 26 Aug 2021 15:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A27926E876;
 Thu, 26 Aug 2021 15:28:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 995D8A77A5;
 Thu, 26 Aug 2021 15:28:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0529020925542446737=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 15:28:00 -0000
Message-ID: <162999168060.15048.6331090951530191226@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826105214.152713-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210826105214.152713-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Be_more_gentle_when_exiting_non-persistent_contexts_?=
 =?utf-8?b?KHJldjIp?=
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

--===============0529020925542446737==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Be more gentle when exiting non-persistent contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/93420/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20903
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/index.html

Known issues
------------

  Here are the changes found in Patchwork_20903 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [PASS][2] -> [DMESG-WARN][3] ([i915#4002]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@kms_prop_blob@basic:
    - fi-tgl-1115g4:      [DMESG-WARN][4] ([i915#4002]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@kms_prop_blob@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@kms_prop_blob@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][6] ([i915#1888]) -> [DMESG-WARN][7] ([i915#4002])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      [SKIP][8] ([i915#1072] / [i915#1385]) -> [SKIP][9] ([i915#1072])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10525 -> Patchwork_20903

  CI-20190529: 20190529
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20903: 660ff9cdf6970f83c2b76f96b4daeaeebf1a7b98 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

660ff9cdf697 drm/i915: Be more gentle when exiting non-persistent contexts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/index.html

--===============0529020925542446737==
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
<tr><td><b>Series:</b></td><td>drm/i915: Be more gentle when exiting non-persistent contexts (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93420/">https://patchwork.freedesktop.org/series/93420/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10525 -&gt; Patchwork_20903</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20903 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_prop_blob@basic:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@kms_prop_blob@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@kms_prop_blob@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20903/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10525 -&gt; Patchwork_20903</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20903: 660ff9cdf6970f83c2b76f96b4daeaeebf1a7b98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>660ff9cdf697 drm/i915: Be more gentle when exiting non-persistent contexts</p>

</body>
</html>

--===============0529020925542446737==--
