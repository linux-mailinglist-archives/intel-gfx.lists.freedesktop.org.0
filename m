Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD043077D2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 15:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560BB6E971;
	Thu, 28 Jan 2021 14:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CAE36E96C;
 Thu, 28 Jan 2021 14:22:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14623A00CC;
 Thu, 28 Jan 2021 14:22:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 28 Jan 2021 14:22:31 -0000
Message-ID: <161184375105.13615.151687945289937418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127131417.393872-1-matthew.auld@intel.com>
In-Reply-To: <20210127131417.393872-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/8=5D_drm/i915=3A_make_local-memory_?=
 =?utf-8?q?probing_a_GT_operation_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1090201782=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1090201782==
Content-Type: multipart/alternative;
 boundary="===============5092917348963426243=="

--===============5092917348963426243==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/8] drm/i915: make local-memory probing a GT operation (rev2)
URL   : https://patchwork.freedesktop.org/series/86355/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9693 -> Patchwork_19527
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/index.html

Known issues
------------

  Here are the changes found in Patchwork_19527 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@fbdev@write.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-tgl-y/igt@fbdev@write.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][6] ([i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9693 -> Patchwork_19527

  CI-20190529: 20190529
  CI_DRM_9693: 0a2c27ba1783f0990c2c448c105682e7885120a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19527: a77633bc8ce12e87c74c3238abaccc646fff437d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a77633bc8ce1 drm/i915: allocate cmd ring in lmem
054586a67eb0 drm/i915: move engine scratch to LMEM
717bbf43447c drm/i915: allocate context from LMEM
878040dcab1f drm/i915/dg1: Reserve first 1MB of local memory
fa4053331dd1 drm/i915: introduce mem->reserved
555325d53cd8 drm/i915: reserve stolen for LMEM region
4b38ca0a0740 drm/i915: setup the LMEM region
9bdaab539cc2 drm/i915: make local-memory probing a GT operation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/index.html

--===============5092917348963426243==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/8] drm/i915: make local-memory probing a GT operation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86355/">https://patchwork.freedesktop.org/series/86355/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9693 -&gt; Patchwork_19527</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19527 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-tgl-y/igt@fbdev@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9693/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19527/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9693 -&gt; Patchwork_19527</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9693: 0a2c27ba1783f0990c2c448c105682e7885120a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19527: a77633bc8ce12e87c74c3238abaccc646fff437d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a77633bc8ce1 drm/i915: allocate cmd ring in lmem<br />
054586a67eb0 drm/i915: move engine scratch to LMEM<br />
717bbf43447c drm/i915: allocate context from LMEM<br />
878040dcab1f drm/i915/dg1: Reserve first 1MB of local memory<br />
fa4053331dd1 drm/i915: introduce mem-&gt;reserved<br />
555325d53cd8 drm/i915: reserve stolen for LMEM region<br />
4b38ca0a0740 drm/i915: setup the LMEM region<br />
9bdaab539cc2 drm/i915: make local-memory probing a GT operation</p>

</body>
</html>

--===============5092917348963426243==--

--===============1090201782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1090201782==--
