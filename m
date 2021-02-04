Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B37DE30F9AF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 18:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137FA6EE0A;
	Thu,  4 Feb 2021 17:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CD9F6EDF5;
 Thu,  4 Feb 2021 17:31:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 859A6A363B;
 Thu,  4 Feb 2021 17:31:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 17:31:25 -0000
Message-ID: <161245988554.4501.5049455422414003661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204121121.2660-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204121121.2660-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/3=5D_proc=3A_Show_GPU_runtimes?=
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
Content-Type: multipart/mixed; boundary="===============1966620226=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1966620226==
Content-Type: multipart/alternative;
 boundary="===============5071407170504687548=="

--===============5071407170504687548==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RFC,1/3] proc: Show GPU runtimes
URL   : https://patchwork.freedesktop.org/series/86693/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9730 -> Patchwork_19587
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html

Known issues
------------

  Here are the changes found in Patchwork_19587 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#2868])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#1982] / [i915#402]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#2411] / [i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@client.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][14] ([i915#2940]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [DMESG-WARN][16] ([i915#2605]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9730 -> Patchwork_19587

  CI-20190529: 20190529
  CI_DRM_9730: a70ac209cb308e06bc397cb3a6bf5764a4917333 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5990: e796ca7ce6fe9c54ee7d939be4110582d555fbb6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19587: 49cb9e5c8e5a0328b2c0921c52ce25eef351ff64 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49cb9e5c8e5a drm/i915/gt: Export device and per-process runtimes via procfs
b8f1256bd5ba drm/i915: Look up clients by pid
852e50fbb083 proc: Show GPU runtimes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html

--===============5071407170504687548==
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
<tr><td><b>Series:</b></td><td>series starting with [RFC,1/3] proc: Show GPU runtimes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86693/">https://patchwork.freedesktop.org/series/86693/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9730 -&gt; Patchwork_19587</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19587 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9730 -&gt; Patchwork_19587</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9730: a70ac209cb308e06bc397cb3a6bf5764a4917333 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5990: e796ca7ce6fe9c54ee7d939be4110582d555fbb6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19587: 49cb9e5c8e5a0328b2c0921c52ce25eef351ff64 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>49cb9e5c8e5a drm/i915/gt: Export device and per-process runtimes via procfs<br />
b8f1256bd5ba drm/i915: Look up clients by pid<br />
852e50fbb083 proc: Show GPU runtimes</p>

</body>
</html>

--===============5071407170504687548==--

--===============1966620226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1966620226==--
