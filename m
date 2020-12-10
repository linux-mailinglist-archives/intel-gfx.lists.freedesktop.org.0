Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ECF2D6AEF
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 00:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726336EBD0;
	Thu, 10 Dec 2020 23:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A3DC6EBC4;
 Thu, 10 Dec 2020 23:30:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53BD3A0091;
 Thu, 10 Dec 2020 23:30:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 10 Dec 2020 23:30:57 -0000
Message-ID: <160764305731.19115.1066796981290515555@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210012143.729402-1-lyude@redhat.com>
In-Reply-To: <20201210012143.729402-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_in_?=
 =?utf-8?q?nouveau_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1667380145=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1667380145==
Content-Type: multipart/alternative;
 boundary="===============8927243464535470613=="

--===============8927243464535470613==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev3)
URL   : https://patchwork.freedesktop.org/series/84754/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9473 -> Patchwork_19117
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/index.html

Known issues
------------

  Here are the changes found in Patchwork_19117 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-tgl-y/igt@fbdev@read.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][3] -> [DMESG-FAIL][4] ([i915#1748])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-gdg-551/igt@i915_selftest@live@coherency.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [DMESG-WARN][5] ([i915#62]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [DMESG-WARN][7] ([i915#180] / [i915#62]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9473 -> Patchwork_19117

  CI-20190529: 20190529
  CI_DRM_9473: c64377fd4f00a839c5b25b9e3bae1052fee113b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19117: e9d81787a6e79b5b7cd1caaf750cd18d35d4cb8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9d81787a6e7 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau
f4bf871fa73a drm/dp: Extract i915's eDP backlight code into DRM helpers
f4762128551a drm/i915/dp: Remove redundant AUX backlight frequency calculations
945b0c32e7e2 drm/nouveau/kms: Don't probe eDP connectors more then once
cfc42e455a86 drm/nouveau/kms/nv40-/backlight: Assign prop type once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/index.html

--===============8927243464535470613==
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
<tr><td><b>Series:</b></td><td>drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84754/">https://patchwork.freedesktop.org/series/84754/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9473 -&gt; Patchwork_19117</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19117 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9473/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19117/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9473 -&gt; Patchwork_19117</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9473: c64377fd4f00a839c5b25b9e3bae1052fee113b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19117: e9d81787a6e79b5b7cd1caaf750cd18d35d4cb8c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e9d81787a6e7 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau<br />
f4bf871fa73a drm/dp: Extract i915's eDP backlight code into DRM helpers<br />
f4762128551a drm/i915/dp: Remove redundant AUX backlight frequency calculations<br />
945b0c32e7e2 drm/nouveau/kms: Don't probe eDP connectors more then once<br />
cfc42e455a86 drm/nouveau/kms/nv40-/backlight: Assign prop type once</p>

</body>
</html>

--===============8927243464535470613==--

--===============1667380145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1667380145==--
