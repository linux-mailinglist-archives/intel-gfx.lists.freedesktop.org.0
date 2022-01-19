Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAB9493B3D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 14:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20E110E2D9;
	Wed, 19 Jan 2022 13:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C3A510E29A;
 Wed, 19 Jan 2022 13:41:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49DC4AA3D8;
 Wed, 19 Jan 2022 13:41:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0280491756906678692=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 19 Jan 2022 13:41:33 -0000
Message-ID: <164259969327.22604.18418243742709118726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?b?L2k5MTU6IE51a2UgZGcyX2RkaV9wcmVfZW5hYmxlX2RwKCk=?=
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

--===============0280491756906678692==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Nuke dg2_ddi_pre_enable_dp()
URL   : https://patchwork.freedesktop.org/series/99041/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11104 -> Patchwork_22022
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/index.html

Participating hosts (46 -> 41)
------------------------------

  Missing    (5): shard-tglu fi-bsw-cyan fi-pnv-d510 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22022 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][1] -> [INCOMPLETE][2] ([i915#4418])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#4269])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - bat-dg1-6:          NOTRUN -> [FAIL][7] ([i915#4214] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/bat-dg1-6/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][8] ([i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-FAIL][9] ([i915#295]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#295]) -> [PASS][12] +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#4214]: https://gitlab.freedesktop.org/drm/intel/issues/4214
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11104 -> Patchwork_22022

  CI-20190529: 20190529
  CI_DRM_11104: 78b8a3e2f4543ecf92fe5a59dbd0255503c97dcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22022: 9cb5445f65a3da28d449ed175505f9db29940290 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9cb5445f65a3 drm/i915: Nuke dg2_ddi_pre_enable_dp()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/index.html

--===============0280491756906678692==
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
<tr><td><b>Series:</b></td><td>drm/i915: Nuke dg2_ddi_pre_enable_dp()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99041/">https://patchwork.freedesktop.org/series/99041/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11104 -&gt; Patchwork_22022</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/index.html</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): shard-tglu fi-bsw-cyan fi-pnv-d510 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22022 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4214">i915#4214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11104/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22022/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11104 -&gt; Patchwork_22022</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11104: 78b8a3e2f4543ecf92fe5a59dbd0255503c97dcc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22022: 9cb5445f65a3da28d449ed175505f9db29940290 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9cb5445f65a3 drm/i915: Nuke dg2_ddi_pre_enable_dp()</p>

</body>
</html>

--===============0280491756906678692==--
