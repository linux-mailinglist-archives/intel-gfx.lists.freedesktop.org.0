Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8441F3FC39D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 10:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6278C89798;
	Tue, 31 Aug 2021 08:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82F57897CD;
 Tue, 31 Aug 2021 08:21:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BE98A0003;
 Tue, 31 Aug 2021 08:21:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4143934511747400106=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Aug 2021 08:21:42 -0000
Message-ID: <163039810247.10657.2408132016128610543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210831072501.184211-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210831072501.184211-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_update_locking_for_modesetting_=28rev7=29?=
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

--===============4143934511747400106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: update locking for modesetting (rev7)
URL   : https://patchwork.freedesktop.org/series/93864/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10538 -> Patchwork_20925
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/index.html

Known issues
------------

  Here are the changes found in Patchwork_20925 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][2] ([i915#3925]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10538/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10538/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925


Participating hosts (44 -> 36)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10538 -> Patchwork_20925

  CI-20190529: 20190529
  CI_DRM_10538: 031f5dcf3ec226bcd0d5f700347780d51cddd2eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6191: e9292b533691784f46eeb9bae522ca7a8710c920 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20925: aa1dc5ecd4c1fe7724951e573e95f8d5c76c9719 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aa1dc5ecd4c1 drm: avoid races with modesetting rights
561f815dc062 drm: lock drm_global_mutex earlier in the ioctl handler
488e5f613522 drm: convert drm_device.master_mutex into a rwsem
3fccaf2012dc drm: fix null ptr dereference in drm_master_release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/index.html

--===============4143934511747400106==
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
<tr><td><b>Series:</b></td><td>drm: update locking for modesetting (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93864/">https://patchwork.freedesktop.org/series/93864/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10538 -&gt; Patchwork_20925</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20925 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_basic@cs-gfx:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10538/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10538/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20925/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 36)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10538 -&gt; Patchwork_20925</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10538: 031f5dcf3ec226bcd0d5f700347780d51cddd2eb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6191: e9292b533691784f46eeb9bae522ca7a8710c920 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20925: aa1dc5ecd4c1fe7724951e573e95f8d5c76c9719 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aa1dc5ecd4c1 drm: avoid races with modesetting rights<br />
561f815dc062 drm: lock drm_global_mutex earlier in the ioctl handler<br />
488e5f613522 drm: convert drm_device.master_mutex into a rwsem<br />
3fccaf2012dc drm: fix null ptr dereference in drm_master_release</p>

</body>
</html>

--===============4143934511747400106==--
