Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 170394CDEDA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 21:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B48C1137C0;
	Fri,  4 Mar 2022 20:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A89D1137C2;
 Fri,  4 Mar 2022 20:28:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23CBCA00FD;
 Fri,  4 Mar 2022 20:28:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7729107122374424729=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 04 Mar 2022 20:28:04 -0000
Message-ID: <164642568410.21355.5689184121494138618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304174252.1000238-1-matthew.auld@intel.com>
In-Reply-To: <20220304174252.1000238-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_checking_for_NULL_vma-=3Eobj?=
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

--===============7729107122374424729==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: stop checking for NULL vma->obj
URL   : https://patchwork.freedesktop.org/series/101054/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11329 -> Patchwork_22490
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/index.html

Participating hosts (44 -> 41)
------------------------------

  Missing    (3): fi-bsw-cyan shard-tglu fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22490 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@gem_wait@wait@all:
    - {bat-jsl-2}:        [FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-jsl-2/igt@gem_wait@wait@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-jsl-2/igt@gem_wait@wait@all.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-5:          [FAIL][5] ([i915#4032]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][7] ([i915#4494] / [i915#4957]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [FAIL][9] ([i915#4547]) -> [INCOMPLETE][10] ([i915#4547])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11329 -> Patchwork_22490

  CI-20190529: 20190529
  CI_DRM_11329: ec4c2d8a8b77ef304b5f4d5badb03a84f0b18ce5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6364: 3523fe577bc22e6512a8de7e60175c8f46cf61d2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22490: e09ec7ec1180f14cb9bb5f9f9ea6c6e3e7dbb662 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e09ec7ec1180 drm/i915: stop checking for NULL vma->obj

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/index.html

--===============7729107122374424729==
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
<tr><td><b>Series:</b></td><td>drm/i915: stop checking for NULL vma-&gt;obj</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101054/">https://patchwork.freedesktop.org/series/101054/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11329 -&gt; Patchwork_22490</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/index.html</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Missing    (3): fi-bsw-cyan shard-tglu fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22490 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-jsl-2/igt@gem_wait@wait@all.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-jsl-2/igt@gem_wait@wait@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-dg1-5/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_flink_basic@bad-flink:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11329/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22490/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11329 -&gt; Patchwork_22490</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11329: ec4c2d8a8b77ef304b5f4d5badb03a84f0b18ce5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6364: 3523fe577bc22e6512a8de7e60175c8f46cf61d2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22490: e09ec7ec1180f14cb9bb5f9f9ea6c6e3e7dbb662 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e09ec7ec1180 drm/i915: stop checking for NULL vma-&gt;obj</p>

</body>
</html>

--===============7729107122374424729==--
