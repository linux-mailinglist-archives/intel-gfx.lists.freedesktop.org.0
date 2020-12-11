Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F41682D7AB7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 17:21:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6941D6E483;
	Fri, 11 Dec 2020 16:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2A6F6E479;
 Fri, 11 Dec 2020 16:21:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB12DA8835;
 Fri, 11 Dec 2020 16:21:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Yongjun" <zhengyongjun3@huawei.com>
Date: Fri, 11 Dec 2020 16:21:23 -0000
Message-ID: <160770368369.16103.16177794119437203874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201211090005.3196-1-zhengyongjun3@huawei.com>
In-Reply-To: <20201211090005.3196-1-zhengyongjun3@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZ3B1?=
 =?utf-8?q?=3A_drm=3A_i915=3A_convert_comma_to_semicolon?=
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
Content-Type: multipart/mixed; boundary="===============2034083188=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2034083188==
Content-Type: multipart/alternative;
 boundary="===============1662154438394855930=="

--===============1662154438394855930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: drm: i915: convert comma to semicolon
URL   : https://patchwork.freedesktop.org/series/84845/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9476 -> Patchwork_19125
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html

Known issues
------------

  Here are the changes found in Patchwork_19125 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-6600u:       [PASS][2] -> [INCOMPLETE][3] ([CI#80] / [i915#1037])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-skl-6600u/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][4] ([i915#1436] / [i915#2426] / [i915#2722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-guc:         [INCOMPLETE][7] ([i915#1037]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9476 -> Patchwork_19125

  CI-20190529: 20190529
  CI_DRM_9476: d8abf7202ace9d800683176aab8df3137790a00c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5889: 3e63914556947974bd2d1cf92dda5b83e36848e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19125: 6e021cbcae75d2f5ef4182a1dbb5f98fe2760576 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e021cbcae75 gpu: drm: i915: convert comma to semicolon

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html

--===============1662154438394855930==
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
<tr><td><b>Series:</b></td><td>gpu: drm: i915: convert comma to semicolon</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84845/">https://patchwork.freedesktop.org/series/84845/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9476 -&gt; Patchwork_19125</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19125 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9476/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19125/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9476 -&gt; Patchwork_19125</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9476: d8abf7202ace9d800683176aab8df3137790a00c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5889: 3e63914556947974bd2d1cf92dda5b83e36848e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19125: 6e021cbcae75d2f5ef4182a1dbb5f98fe2760576 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6e021cbcae75 gpu: drm: i915: convert comma to semicolon</p>

</body>
</html>

--===============1662154438394855930==--

--===============2034083188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2034083188==--
