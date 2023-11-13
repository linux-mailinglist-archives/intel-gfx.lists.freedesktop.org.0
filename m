Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E797EA3D6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 20:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD14910E18E;
	Mon, 13 Nov 2023 19:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0335310E06E;
 Mon, 13 Nov 2023 19:38:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F107BAADF4;
 Mon, 13 Nov 2023 19:38:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2173130475660681450=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krister Johansen" <kjlx@templeofstupid.com>
Date: Mon, 13 Nov 2023 19:38:17 -0000
Message-ID: <169990429796.24211.16937328619119144158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1699564053.git.kjlx@templeofstupid.com>
In-Reply-To: <cover.1699564053.git.kjlx@templeofstupid.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRnVz?=
 =?utf-8?q?e_submount=5Flookup_needs_to_be_initialized?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2173130475660681450==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fuse submount_lookup needs to be initialized
URL   : https://patchwork.freedesktop.org/series/126336/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13869 -> Patchwork_126336v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/index.html

Participating hosts (35 -> 32)
------------------------------

  Missing    (3): fi-hsw-4770 bat-kbl-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_126336v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][1] ([i915#1845] / [i915#9197])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@mman:
    - bat-dg2-9:          [DMESG-WARN][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13869/bat-dg2-9/igt@i915_selftest@live@mman.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-dg2-9/igt@i915_selftest@live@mman.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][4] ([i915#8668]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13869/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_13869 -> Patchwork_126336v1

  CI-20190529: 20190529
  CI_DRM_13869: 3d1e36691e73b3946b4a9ca8132a34f0319ff984 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7584: 30e6ded90039edde8aa6c435001f8d63159356bb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126336v1: 3d1e36691e73b3946b4a9ca8132a34f0319ff984 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d0a74b2b695e fuse: share lookup state between submount and its parent
9f62ff284751 fuse: ensure submount_lookup is initialized on alloc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/index.html

--===============2173130475660681450==
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
<tr><td><b>Series:</b></td><td>Fuse submount_lookup needs to be initialized</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126336/">https://patchwork.freedesktop.org/series/126336/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13869 -&gt; Patchwork_126336v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Missing    (3): fi-hsw-4770 bat-kbl-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126336v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence:<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13869/bat-dg2-9/igt@i915_selftest@live@mman.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-dg2-9/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13869/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126336v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13869 -&gt; Patchwork_126336v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13869: 3d1e36691e73b3946b4a9ca8132a34f0319ff984 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7584: 30e6ded90039edde8aa6c435001f8d63159356bb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126336v1: 3d1e36691e73b3946b4a9ca8132a34f0319ff984 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d0a74b2b695e fuse: share lookup state between submount and its parent<br />
9f62ff284751 fuse: ensure submount_lookup is initialized on alloc</p>

</body>
</html>

--===============2173130475660681450==--
