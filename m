Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0709636B8BD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 20:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5356E863;
	Mon, 26 Apr 2021 18:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BFBB66E1B5;
 Mon, 26 Apr 2021 18:11:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B39C0A363D;
 Mon, 26 Apr 2021 18:11:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lv Yunlong" <lyl2019@mail.ustc.edu.cn>
Date: Mon, 26 Apr 2021 18:11:17 -0000
Message-ID: <161946067770.18668.1418432972668271795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426124340.4238-1-lyl2019@mail.ustc.edu.cn>
In-Reply-To: <20210426124340.4238-1-lyl2019@mail.ustc.edu.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i9i5/gt=3A_Fix_a_double_free_in_gen8=5Fpreallocate=5Ftop=5Flev?=
 =?utf-8?q?el=5Fpdp?=
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
Content-Type: multipart/mixed; boundary="===============1833455815=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1833455815==
Content-Type: multipart/alternative;
 boundary="===============8754425952778259705=="

--===============8754425952778259705==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i9i5/gt: Fix a double free in gen8_preallocate_top_level_pdp
URL   : https://patchwork.freedesktop.org/series/89500/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10010 -> Patchwork_19992
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/index.html

Known issues
------------

  Here are the changes found in Patchwork_19992 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10010/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2782] / [i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10010/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][5] ([i915#1436])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-bsw-kefka/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10010 -> Patchwork_19992

  CI-20190529: 20190529
  CI_DRM_10010: 58acb454bb6b897117656a2cba0edce64e3ee1dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19992: 8a9defaba2621a654c95903bf97297815d0c80f3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a9defaba262 drm/i9i5/gt: Fix a double free in gen8_preallocate_top_level_pdp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/index.html

--===============8754425952778259705==
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
<tr><td><b>Series:</b></td><td>drm/i9i5/gt: Fix a double free in gen8_preallocate_top_level_pdp</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89500/">https://patchwork.freedesktop.org/series/89500/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10010 -&gt; Patchwork_19992</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19992 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10010/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10010/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19992/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10010 -&gt; Patchwork_19992</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10010: 58acb454bb6b897117656a2cba0edce64e3ee1dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19992: 8a9defaba2621a654c95903bf97297815d0c80f3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8a9defaba262 drm/i9i5/gt: Fix a double free in gen8_preallocate_top_level_pdp</p>

</body>
</html>

--===============8754425952778259705==--

--===============1833455815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1833455815==--
