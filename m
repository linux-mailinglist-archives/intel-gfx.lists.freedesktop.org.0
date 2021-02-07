Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF57312579
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Feb 2021 16:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BFD6E183;
	Sun,  7 Feb 2021 15:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF1346E12C;
 Sun,  7 Feb 2021 15:45:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D330CA7DFC;
 Sun,  7 Feb 2021 15:45:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Feb 2021 15:45:35 -0000
Message-ID: <161271273582.30295.9447105504174531715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210207150351.19482-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210207150351.19482-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_submit=5Frequ?=
 =?utf-8?q?est_to_i915=5Fsched=5Fengine?=
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
Content-Type: multipart/mixed; boundary="===============0068725023=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0068725023==
Content-Type: multipart/alternative;
 boundary="===============7592639507517812409=="

--===============7592639507517812409==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915: Move submit_request to i915_sched_engine
URL   : https://patchwork.freedesktop.org/series/86822/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9743 -> Patchwork_19623
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/index.html

Known issues
------------

  Here are the changes found in Patchwork_19623 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +22 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9743/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9743/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-tgl-y/igt@gem_tiled_blits@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9743 -> Patchwork_19623

  CI-20190529: 20190529
  CI_DRM_9743: 9781d6be4363dd76f7e42e6249a67a6af43f40b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5997: 2f27f54d9fae945a4b7cffc7d7370abb7a41caf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19623: 9da368f0928b8eed572fd1d69e0b689c43aa193c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9da368f0928b drm/i915: Wrap i915_request_use_semaphores()
f89a52a6bf2f drm/i915: Show execlists queues when dumping state
90cb79f67175 drm/i915: Move finding the current active request to the scheduler
40ff776943d9 drm/i915: Move submit_request to i915_sched_engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/index.html

--===============7592639507517812409==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915: Move submit_request to i915_sched_engine</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86822/">https://patchwork.freedesktop.org/series/86822/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9743 -&gt; Patchwork_19623</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19623 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9743/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9743/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19623/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9743 -&gt; Patchwork_19623</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9743: 9781d6be4363dd76f7e42e6249a67a6af43f40b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5997: 2f27f54d9fae945a4b7cffc7d7370abb7a41caf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19623: 9da368f0928b8eed572fd1d69e0b689c43aa193c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9da368f0928b drm/i915: Wrap i915_request_use_semaphores()<br />
f89a52a6bf2f drm/i915: Show execlists queues when dumping state<br />
90cb79f67175 drm/i915: Move finding the current active request to the scheduler<br />
40ff776943d9 drm/i915: Move submit_request to i915_sched_engine</p>

</body>
</html>

--===============7592639507517812409==--

--===============0068725023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0068725023==--
