Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647E7417A7C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 20:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D056E202;
	Fri, 24 Sep 2021 18:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E52F56E200;
 Fri, 24 Sep 2021 18:05:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBD69AA0EB;
 Fri, 24 Sep 2021 18:05:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5030486396123138868=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 18:05:44 -0000
Message-ID: <163250674479.20559.9643507993173014836@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924144646.4096402-1-matthew.auld@intel.com>
In-Reply-To: <20210924144646.4096402-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remember_to_call_i915=5Fsw=5Ffence=5Ffini?=
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

--===============5030486396123138868==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: remember to call i915_sw_fence_fini
URL   : https://patchwork.freedesktop.org/series/95029/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10639 -> Patchwork_21154
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/index.html

Known issues
------------

  Here are the changes found in Patchwork_21154 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#2940])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#1436] / [i915#3428])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bsw-nick/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][4] ([i915#1602] / [i915#2029])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [FAIL][5] ([i915#1888]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-rkl-11600:       [SKIP][7] ([i915#4098]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098


Participating hosts (41 -> 34)
------------------------------

  Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10639 -> Patchwork_21154

  CI-20190529: 20190529
  CI_DRM_10639: e1c0405b8ce0a35b7057d4a09f6f429ef9a2865d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21154: 235d2c955af7c70fe87e334911072eb7992e5a28 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

235d2c955af7 drm/i915: remember to call i915_sw_fence_fini

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/index.html

--===============5030486396123138868==
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
<tr><td><b>Series:</b></td><td>drm/i915: remember to call i915_sw_fence_fini</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95029/">https://patchwork.freedesktop.org/series/95029/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10639 -&gt; Patchwork_21154</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21154 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10639/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21154/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10639 -&gt; Patchwork_21154</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10639: e1c0405b8ce0a35b7057d4a09f6f429ef9a2865d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21154: 235d2c955af7c70fe87e334911072eb7992e5a28 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>235d2c955af7 drm/i915: remember to call i915_sw_fence_fini</p>

</body>
</html>

--===============5030486396123138868==--
