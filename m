Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8597F6715
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 20:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7640A10E33F;
	Thu, 23 Nov 2023 19:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D118D10E33D;
 Thu, 23 Nov 2023 19:26:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6773AADE8;
 Thu, 23 Nov 2023 19:26:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2983557229531895661=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Thu, 23 Nov 2023 19:26:47 -0000
Message-ID: <170076760777.8138.166635406981444171@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
In-Reply-To: <20231123074120.1641630-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?pare_intel=5Ffb_for_Xe_=28rev7=29?=
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

--===============2983557229531895661==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare intel_fb for Xe (rev7)
URL   : https://patchwork.freedesktop.org/series/126507/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13917 -> Patchwork_126507v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): bat-kbl-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_126507v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +25 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][2] -> [ABORT][3] ([i915#8668])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [INCOMPLETE][4] ([i915#9275]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5:
    - bat-adlp-11:        [DMESG-WARN][6] ([i915#6868]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13917 -> Patchwork_126507v7

  CI-20190529: 20190529
  CI_DRM_13917: e8f02d065ade740b7f56a134f6113e2777b5d11a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7600: b889fd01780dc79f6fcc8545346c81f5c79f5efb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126507v7: e8f02d065ade740b7f56a134f6113e2777b5d11a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c3cb7c41407b drm/i915/display: Split i915 specific code away from intel_fb.c
18bf8509e0d2 drm/i915/display: Handle invalid fb_modifier in intel_fb_modifier_to_tiling
1a8e4e80487f drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
0ebc9a9b09cf drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/index.html

--===============2983557229531895661==
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
<tr><td><b>Series:</b></td><td>Prepare intel_fb for Xe (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126507/">https://patchwork.freedesktop.org/series/126507/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13917 -&gt; Patchwork_126507v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): bat-kbl-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126507v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13917/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp5.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13917 -&gt; Patchwork_126507v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13917: e8f02d065ade740b7f56a134f6113e2777b5d11a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7600: b889fd01780dc79f6fcc8545346c81f5c79f5efb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126507v7: e8f02d065ade740b7f56a134f6113e2777b5d11a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c3cb7c41407b drm/i915/display: Split i915 specific code away from intel_fb.c<br />
18bf8509e0d2 drm/i915/display: Handle invalid fb_modifier in intel_fb_modifier_to_tiling<br />
1a8e4e80487f drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static<br />
0ebc9a9b09cf drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c</p>

</body>
</html>

--===============2983557229531895661==--
