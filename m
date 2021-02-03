Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3584F30DFF9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 17:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7190789762;
	Wed,  3 Feb 2021 16:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C2528958E;
 Wed,  3 Feb 2021 16:47:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 869C1A47E9;
 Wed,  3 Feb 2021 16:47:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Wed, 03 Feb 2021 16:47:14 -0000
Message-ID: <161237083453.944.1872569540371845116@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203110803.17894-1-colin.king@canonical.com>
In-Reply-To: <20210203110803.17894-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_fix_spelling_mistake_=22Couldnt=22_-=3E_=22Cou?=
 =?utf-8?b?bGRuJ3Qi?=
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
Content-Type: multipart/mixed; boundary="===============0521961347=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0521961347==
Content-Type: multipart/alternative;
 boundary="===============0987706682074817841=="

--===============0987706682074817841==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: fix spelling mistake "Couldnt" -> "Couldn't"
URL   : https://patchwork.freedesktop.org/series/86637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9725 -> Patchwork_19573
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/index.html

Known issues
------------

  Here are the changes found in Patchwork_19573 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#2411] / [i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#1602] / [i915#2029] / [i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][9] ([i915#2940]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-jsl-1 fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9725 -> Patchwork_19573

  CI-20190529: 20190529
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19573: cdaaabd99e4385724a9a96fab98410ac41a7915e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cdaaabd99e43 drm/i915/display: fix spelling mistake "Couldnt" -> "Couldn't"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/index.html

--===============0987706682074817841==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: fix spelling mistake &quot;Couldnt&quot; -&gt; &quot;Couldn&#39;t&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86637/">https://patchwork.freedesktop.org/series/86637/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9725 -&gt; Patchwork_19573</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19573 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19573/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 38)</h2>
<p>Missing    (7): fi-jsl-1 fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9725 -&gt; Patchwork_19573</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19573: cdaaabd99e4385724a9a96fab98410ac41a7915e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cdaaabd99e43 drm/i915/display: fix spelling mistake "Couldnt" -&gt; "Couldn't"</p>

</body>
</html>

--===============0987706682074817841==--

--===============0521961347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0521961347==--
