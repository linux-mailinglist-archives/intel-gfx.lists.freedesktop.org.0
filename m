Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680B2DA0B8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 20:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BE66E0F7;
	Mon, 14 Dec 2020 19:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADBF86E0F7;
 Mon, 14 Dec 2020 19:42:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8B3AA0019;
 Mon, 14 Dec 2020 19:42:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 14 Dec 2020 19:42:32 -0000
Message-ID: <160797495266.28165.10552443651735645451@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214185440.243537-1-jose.souza@intel.com>
In-Reply-To: <20201214185440.243537-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG9j?=
 =?utf-8?q?=3A_Fix_build_of_documentation_after_i915_file_rename?=
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
Content-Type: multipart/mixed; boundary="===============1942446777=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1942446777==
Content-Type: multipart/alternative;
 boundary="===============1515150644789101332=="

--===============1515150644789101332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: doc: Fix build of documentation after i915 file rename
URL   : https://patchwork.freedesktop.org/series/84914/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9481 -> Patchwork_19140
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19140 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19140, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19140:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@memory_region:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html

  
Known issues
------------

  Here are the changes found in Patchwork_19140 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-WARN][4] ([i915#2605])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][5] -> [DMESG-FAIL][6] ([i915#1748])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#1037])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9481 -> Patchwork_19140

  CI-20190529: 20190529
  CI_DRM_9481: 968d6b8835487575d68732a7c0a1588795900de4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5893: ec4073d30b428aaf199c0f4de6c0a5ebdc1c1c65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19140: 5d11f6b95eb18bc1c213b4b6e675aad0e08327a6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5d11f6b95eb1 doc: Fix build of documentation after i915 file rename

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/index.html

--===============1515150644789101332==
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
<tr><td><b>Series:</b></td><td>doc: Fix build of documentation after i915 file rename</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84914/">https://patchwork.freedesktop.org/series/84914/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9481 -&gt; Patchwork_19140</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19140 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19140, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19140:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@memory_region:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">DMESG-WARN</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19140 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9481/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19140/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9481 -&gt; Patchwork_19140</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9481: 968d6b8835487575d68732a7c0a1588795900de4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5893: ec4073d30b428aaf199c0f4de6c0a5ebdc1c1c65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19140: 5d11f6b95eb18bc1c213b4b6e675aad0e08327a6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5d11f6b95eb1 doc: Fix build of documentation after i915 file rename</p>

</body>
</html>

--===============1515150644789101332==--

--===============1942446777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1942446777==--
