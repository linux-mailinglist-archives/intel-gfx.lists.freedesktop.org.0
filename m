Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC9B30D7E9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 11:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071DD6EA52;
	Wed,  3 Feb 2021 10:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEF036EA51;
 Wed,  3 Feb 2021 10:49:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A957DA363D;
 Wed,  3 Feb 2021 10:49:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 10:49:11 -0000
Message-ID: <161234935168.943.15715149849179409401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203090205.25818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203090205.25818-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/8=5D_drm/i915/selftests=3A_Set_cach?=
 =?utf-8?q?e_status_for_huge=5Fgem=5Fobject?=
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
Content-Type: multipart/mixed; boundary="===============1232903912=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1232903912==
Content-Type: multipart/alternative;
 boundary="===============6264268279689971452=="

--===============6264268279689971452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/8] drm/i915/selftests: Set cache status for huge_gem_object
URL   : https://patchwork.freedesktop.org/series/86626/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9721 -> Patchwork_19570
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html

Known issues
------------

  Here are the changes found in Patchwork_19570 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#142] / [i915#2405])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#2782] / [i915#926])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][7] ([i915#1814] / [i915#2505])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][10] ([i915#579]) -> [SKIP][11] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-jsl-1 fi-bdw-samus fi-bsw-cyan fi-skl-6600u 


Build changes
-------------

  * Linux: CI_DRM_9721 -> Patchwork_19570

  CI-20190529: 20190529
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19570: 6a011dd0f51abea8e0652c4b018b333a6fddf93a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6a011dd0f51a drm/i915/gem: Manage all set-domain waits explicitly
38603c58675f drm/i915/selftests: Remove redundant set-to-gtt-domain before batch submission
6b0fc3bf8497 drm/i915/selftests: Replace an unbounded set-domain wait with a timeout
5616e93b9fca drm/i915/selftests: Replace unbound set-domain waits with explicit timeouts
24b33d831171 drm/i915/selftests: Remove redundant set-to-gtt-domain
dfc407ff0fa7 drm/i915/selftests: Replace the unbounded set-domain with an explicit wait
61c7e3eb85eb drm/i915/selftests: Use a coherent map to setup scratch batch buffers
0f47176702b6 drm/i915/selftests: Set cache status for huge_gem_object

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html

--===============6264268279689971452==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/8] drm/i915/selftests: Set cache status for huge_gem_object</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86626/">https://patchwork.freedesktop.org/series/86626/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9721 -&gt; Patchwork_19570</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19570 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19570/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-jsl-1 fi-bdw-samus fi-bsw-cyan fi-skl-6600u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9721 -&gt; Patchwork_19570</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19570: 6a011dd0f51abea8e0652c4b018b333a6fddf93a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6a011dd0f51a drm/i915/gem: Manage all set-domain waits explicitly<br />
38603c58675f drm/i915/selftests: Remove redundant set-to-gtt-domain before batch submission<br />
6b0fc3bf8497 drm/i915/selftests: Replace an unbounded set-domain wait with a timeout<br />
5616e93b9fca drm/i915/selftests: Replace unbound set-domain waits with explicit timeouts<br />
24b33d831171 drm/i915/selftests: Remove redundant set-to-gtt-domain<br />
dfc407ff0fa7 drm/i915/selftests: Replace the unbounded set-domain with an explicit wait<br />
61c7e3eb85eb drm/i915/selftests: Use a coherent map to setup scratch batch buffers<br />
0f47176702b6 drm/i915/selftests: Set cache status for huge_gem_object</p>

</body>
</html>

--===============6264268279689971452==--

--===============1232903912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1232903912==--
