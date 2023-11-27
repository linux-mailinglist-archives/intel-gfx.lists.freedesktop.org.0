Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153967FABEC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 21:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4531210E14F;
	Mon, 27 Nov 2023 20:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6D2910E14F;
 Mon, 27 Nov 2023 20:47:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ACC53A47DF;
 Mon, 27 Nov 2023 20:47:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7257304678221291170=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 27 Nov 2023 20:47:52 -0000
Message-ID: <170111807270.3002.9425610302744803837@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231127190043.4099109-2-matthew.d.roper@intel.com>
In-Reply-To: <20231127190043.4099109-2-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Drop_Wa=5F22014600077?=
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

--===============7257304678221291170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Drop Wa_22014600077
URL   : https://patchwork.freedesktop.org/series/126942/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13929 -> Patchwork_126942v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (3): bat-dg2-9 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_126942v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +20 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1845]) +14 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][4] ([i915#1845])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_contexts:
    - bat-rpls-1:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849


Build changes
-------------

  * Linux: CI_DRM_13929 -> Patchwork_126942v1

  CI-20190529: 20190529
  CI_DRM_13929: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7605: 7605
  Patchwork_126942v1: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7e1f1a0d28f4 drm/i915/dg2: Drop Wa_22014600077

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html

--===============7257304678221291170==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Drop Wa_22014600077</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126942/">https://patchwork.freedesktop.org/series/126942/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13929 -&gt; Patchwork_126942v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (3): bat-dg2-9 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126942v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_contexts:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13929 -&gt; Patchwork_126942v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13929: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7605: 7605<br />
  Patchwork_126942v1: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7e1f1a0d28f4 drm/i915/dg2: Drop Wa_22014600077</p>

</body>
</html>

--===============7257304678221291170==--
