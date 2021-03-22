Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD3B343FCB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 12:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6426E44A;
	Mon, 22 Mar 2021 11:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD6A56E439;
 Mon, 22 Mar 2021 11:31:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A58B3A47E2;
 Mon, 22 Mar 2021 11:31:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhaskar Chowdhury" <unixbhaskar@gmail.com>
Date: Mon, 22 Mar 2021 11:31:29 -0000
Message-ID: <161641268965.19227.4917692771986498908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210314044303.9220-1-unixbhaskar@gmail.com>
In-Reply-To: <20210314044303.9220-1-unixbhaskar@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZ3B1?=
 =?utf-8?q?=3A_drm=3A_i915=3A_gt=3A_Rudimentary_typo_fix_in_the_file_intel?=
 =?utf-8?q?=5Ftimeline=2Ec?=
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
Content-Type: multipart/mixed; boundary="===============1609006168=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1609006168==
Content-Type: multipart/alternative;
 boundary="===============5138633197734718705=="

--===============5138633197734718705==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: drm: i915: gt: Rudimentary typo fix in the file intel_timeline.c
URL   : https://patchwork.freedesktop.org/series/88254/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9880 -> Patchwork_19822
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19822:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@nb-await@vcs0:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][1] +38 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_19822 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#3145])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][5] -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-WARN][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][9] ([i915#203]) -> [PASS][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - {fi-tgl-dsi}:       [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (42 -> 40)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9880 -> Patchwork_19822

  CI-20190529: 20190529
  CI_DRM_9880: ec7a4e63b83999b055ba61da41bdd0ce656485d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19822: 88048cfca4e201d319c20335ac2853e846063e7c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

88048cfca4e2 gpu: drm: i915: gt: Rudimentary typo fix in the file intel_timeline.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/index.html

--===============5138633197734718705==
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
<tr><td><b>Series:</b></td><td>gpu: drm: i915: gt: Rudimentary typo fix in the file intel_timeline.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88254/">https://patchwork.freedesktop.org/series/88254/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9880 -&gt; Patchwork_19822</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19822:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19822 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9880/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19822/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9880 -&gt; Patchwork_19822</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9880: ec7a4e63b83999b055ba61da41bdd0ce656485d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19822: 88048cfca4e201d319c20335ac2853e846063e7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>88048cfca4e2 gpu: drm: i915: gt: Rudimentary typo fix in the file intel_timeline.c</p>

</body>
</html>

--===============5138633197734718705==--

--===============1609006168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1609006168==--
