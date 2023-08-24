Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DDA7871D4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 16:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7402110E563;
	Thu, 24 Aug 2023 14:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33ABB10E563;
 Thu, 24 Aug 2023 14:38:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB0BDAADE1;
 Thu, 24 Aug 2023 14:38:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3356763812947204064=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 24 Aug 2023 14:38:36 -0000
Message-ID: <169288791676.13344.8692902356781901861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230824125121.840298-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230824125121.840298-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZURQ?=
 =?utf-8?q?_DSC_fixes_=28rev3=29?=
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

--===============3356763812947204064==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: eDP DSC fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/122792/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13561 -> Patchwork_122792v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-kbl-soraka fi-tgl-1115g4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122792v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          NOTRUN -> [INCOMPLETE][1] ([i915#6311])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-rpls-2:         [PASS][2] -> [INCOMPLETE][3] ([i915#4983] / [i915#7913])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][4] -> [ABORT][5] ([i915#8442] / [i915#8668])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][6] ([i915#6311]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13561 -> Patchwork_122792v3

  CI-20190529: 20190529
  CI_DRM_13561: c39e5ec45f38ae6f551865329286511ece62c532 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122792v3: c39e5ec45f38ae6f551865329286511ece62c532 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5a3c5161a412 drivers/drm/i915: Honor limits->max_bpp while computing DSC max input bpp
01c7e7d7eab9 drm/display/dp: Assume 8 bpc support when DSC is supported

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/index.html

--===============3356763812947204064==
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
<tr><td><b>Series:</b></td><td>eDP DSC fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122792/">https://patchwork.freedesktop.org/series/122792/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13561 -&gt; Patchwork_122792v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-kbl-soraka fi-tgl-1115g4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122792v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13561/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122792v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13561 -&gt; Patchwork_122792v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13561: c39e5ec45f38ae6f551865329286511ece62c532 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122792v3: c39e5ec45f38ae6f551865329286511ece62c532 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5a3c5161a412 drivers/drm/i915: Honor limits-&gt;max_bpp while computing DSC max input bpp<br />
01c7e7d7eab9 drm/display/dp: Assume 8 bpc support when DSC is supported</p>

</body>
</html>

--===============3356763812947204064==--
