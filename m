Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D094327DA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 21:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EC06EA59;
	Mon, 18 Oct 2021 19:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 927616EA59;
 Mon, 18 Oct 2021 19:42:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89C72A0169;
 Mon, 18 Oct 2021 19:42:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3000620825154490065=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 19:42:51 -0000
Message-ID: <163458617152.27087.15263627378284136376@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018174508.2137279-1-matthew.auld@intel.com>
In-Reply-To: <20211018174508.2137279-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915=3A_mark_dmabuf_objects_as_?=
 =?utf-8?q?ALLOC=5FUSER?=
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

--===============3000620825154490065==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/9] drm/i915: mark dmabuf objects as ALLOC_USER
URL   : https://patchwork.freedesktop.org/series/95982/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10753 -> Patchwork_21376
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/index.html

Known issues
------------

  Here are the changes found in Patchwork_21376 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-WARN][3] ([i915#1982])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-kbl-soraka/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-skl-6600u:       [PASS][4] -> [FAIL][5] ([i915#3049])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][6] ([i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][8] ([i915#4269]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-bsw-cyan bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10753 -> Patchwork_21376

  CI-20190529: 20190529
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21376: ae2c908cf31fc5df4d6767f448ef9d66321fe364 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae2c908cf31f drm/i915/selftests: mark up hugepages object with start_cpu_write
49bf1fb0cbbe drm/i915: mark up internal objects with start_cpu_write
db935401f057 drm/i915: expand on the kernel-doc for cache_dirty
3fd7ed641f99 drm/i915/shmem: ensure flush during swap-in on non-LLC
e13b48097394 drm/i915/userptr: add paranoid flush-on-acquire
42a7064ef6ae drm/i915/dmabuf: add paranoid flush-on-acquire
fc3555ba8818 drm/i915: extract bypass-llc check into helper
9dfe83b2167d drm/i915: mark userptr objects as ALLOC_USER
1ad5557daeac drm/i915: mark dmabuf objects as ALLOC_USER

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/index.html

--===============3000620825154490065==
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
<tr><td><b>Series:</b></td><td>series starting with [1/9] drm/i915: mark dmabuf objects as ALLOC_USER</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95982/">https://patchwork.freedesktop.org/series/95982/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10753 -&gt; Patchwork_21376</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21376 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-skl-6600u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21376/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-bsw-cyan bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10753 -&gt; Patchwork_21376</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21376: ae2c908cf31fc5df4d6767f448ef9d66321fe364 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ae2c908cf31f drm/i915/selftests: mark up hugepages object with start_cpu_write<br />
49bf1fb0cbbe drm/i915: mark up internal objects with start_cpu_write<br />
db935401f057 drm/i915: expand on the kernel-doc for cache_dirty<br />
3fd7ed641f99 drm/i915/shmem: ensure flush during swap-in on non-LLC<br />
e13b48097394 drm/i915/userptr: add paranoid flush-on-acquire<br />
42a7064ef6ae drm/i915/dmabuf: add paranoid flush-on-acquire<br />
fc3555ba8818 drm/i915: extract bypass-llc check into helper<br />
9dfe83b2167d drm/i915: mark userptr objects as ALLOC_USER<br />
1ad5557daeac drm/i915: mark dmabuf objects as ALLOC_USER</p>

</body>
</html>

--===============3000620825154490065==--
