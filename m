Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232F14E42D1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 16:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E9D10E081;
	Tue, 22 Mar 2022 15:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81B1C10E02B;
 Tue, 22 Mar 2022 15:20:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D715A882E;
 Tue, 22 Mar 2022 15:20:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5215600699816517184=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 22 Mar 2022 15:20:41 -0000
Message-ID: <164796244148.20010.17045247958980549845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228201234.1448613-1-imre.deak@intel.com>
In-Reply-To: <20220228201234.1448613-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_a_DP1=2E2_compatible_way_to_read_LTTPR_capabilitie?=
 =?utf-8?q?s_=28rev2=29?=
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

--===============5215600699816517184==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities (rev2)
URL   : https://patchwork.freedesktop.org/series/100851/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11396 -> Patchwork_22643
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/index.html

Participating hosts (49 -> 43)
------------------------------

  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22643:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@requests:
    - {bat-adlm-1}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-adlm-1/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_22643 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-glk-dsi:         [PASS][2] -> [DMESG-WARN][3] ([i915#2943])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@evict:
    - {bat-rpls-2}:       [INCOMPLETE][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@evict.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-rpls-2/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@objects:
    - {bat-rpls-2}:       [DMESG-WARN][6] ([i915#4391]) -> [PASS][7] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@objects.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-rpls-2/igt@i915_selftest@live@objects.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-adlm-1}:       [INCOMPLETE][8] ([i915#5361]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       [DMESG-WARN][10] ([i915#295] / [i915#5341]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][12] ([i915#295]) -> [PASS][13] +10 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5361]: https://gitlab.freedesktop.org/drm/intel/issues/5361


Build changes
-------------

  * Linux: CI_DRM_11396 -> Patchwork_22643

  CI-20190529: 20190529
  CI_DRM_11396: 18b88414e6c9660022bb464d4d5fadb07d38cf04 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22643: 8d7fe49b240d8f4fb1a167594706ab916e4a78cb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8d7fe49b240d drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/index.html

--===============5215600699816517184==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100851/">https://patchwork.freedesktop.org/series/100851/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11396 -&gt; Patchwork_22643</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/index.html</p>
<h2>Participating hosts (49 -&gt; 43)</h2>
<p>Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22643:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-adlm-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22643 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@evict.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-rpls-2/igt@i915_selftest@live@evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-rpls-2/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-rpls-2/igt@i915_selftest@live@objects.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5361">i915#5361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11396/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22643/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11396 -&gt; Patchwork_22643</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11396: 18b88414e6c9660022bb464d4d5fadb07d38cf04 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22643: 8d7fe49b240d8f4fb1a167594706ab916e4a78cb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8d7fe49b240d drm/i915: Add a DP1.2 compatible way to read LTTPR capabilities</p>

</body>
</html>

--===============5215600699816517184==--
