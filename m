Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE3E69762E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 07:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6112710E139;
	Wed, 15 Feb 2023 06:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A93910E113;
 Wed, 15 Feb 2023 06:14:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6376DA7DFB;
 Wed, 15 Feb 2023 06:14:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7878089885828737746=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Randy Dunlap" <rdunlap@infradead.org>
Date: Wed, 15 Feb 2023 06:14:30 -0000
Message-ID: <167644167036.30603.5899376150113875239@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230215044533.4847-1-rdunlap@infradead.org>
In-Reply-To: <20230215044533.4847-1-rdunlap@infradead.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_move_a_Kconfig_symbol_to_unbreak_the_menu_presentation?=
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

--===============7878089885828737746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: move a Kconfig symbol to unbreak the menu presentation
URL   : https://patchwork.freedesktop.org/series/114037/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12741 -> Patchwork_114037v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114037v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-rpls-1}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_114037v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@dmabuf:
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] ([i915#7562] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +44 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [DMESG-FAIL][6] ([i915#5334]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [ABORT][8] ([i915#7982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/bat-rpls-2/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/bat-rpls-2/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7562]: https://gitlab.freedesktop.org/drm/intel/issues/7562
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12741 -> Patchwork_114037v1

  CI-20190529: 20190529
  CI_DRM_12741: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114037v1: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cbd2c02030bb drm/i915: move a Kconfig symbol to unbreak the menu presentation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/index.html

--===============7878089885828737746==
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
<tr><td><b>Series:</b></td><td>drm/i915: move a Kconfig symbol to unbreak the menu presentation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114037/">https://patchwork.freedesktop.org/series/114037/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12741 -&gt; Patchwork_114037v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114037v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114037v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-bsw-nick/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7562">i915#7562</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114037v1/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12741 -&gt; Patchwork_114037v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12741: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114037v1: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cbd2c02030bb drm/i915: move a Kconfig symbol to unbreak the menu presentation</p>

</body>
</html>

--===============7878089885828737746==--
