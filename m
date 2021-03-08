Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8326D331266
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 16:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EB56E14B;
	Mon,  8 Mar 2021 15:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 458A66E14B;
 Mon,  8 Mar 2021 15:39:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E976A8832;
 Mon,  8 Mar 2021 15:39:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 08 Mar 2021 15:39:12 -0000
Message-ID: <161521795223.17932.16173195379371249542@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615211711.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615211711.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_refactor_KBL/TGL/ADLS_stepping_scheme_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0035121032=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0035121032==
Content-Type: multipart/alternative;
 boundary="===============7026868642362345139=="

--===============7026868642362345139==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: refactor KBL/TGL/ADLS stepping scheme (rev2)
URL   : https://patchwork.freedesktop.org/series/87323/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9840 -> Patchwork_19768
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/index.html

Known issues
------------

  Here are the changes found in Patchwork_19768 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#2502] / [i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-FAIL][4] ([i915#3047])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-glk-dsi/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-glk-dsi/igt@i915_selftest@live@client.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][5] ([i915#1888]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][7] ([i915#3145]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@client:
    - fi-bsw-kefka:       [DMESG-FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-bsw-kefka/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-bsw-kefka/igt@i915_selftest@live@client.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9840 -> Patchwork_19768

  CI-20190529: 20190529
  CI_DRM_9840: c32ebbc1bfd09da5fd10264570b81c9e65091a08 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6026: 8b8bbecf2f32298544c2f193753a0153f39e7326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19768: d1a2f1d5bb5c67b4f1bd95219ba73da00960d641 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d1a2f1d5bb5c drm/i915: rename i915_rev_steppings->intel_step_info
19a6fa288b97 drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step
f94a68bcd095 drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
3ab291f069dc drm/i915: switch TGL and ADL to the new stepping scheme
c5a4a8ab6645 drm/i915: switch KBL to the new stepping scheme
93d71ad11f06 drm/i915: add new helpers for accessing stepping info
1d23fa9cb274 drm/i915: split out stepping info to a new file
c52f0ea75128 drm/i915: remove unused ADLS_REVID_* macros

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/index.html

--===============7026868642362345139==
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
<tr><td><b>Series:</b></td><td>drm/i915: refactor KBL/TGL/ADLS stepping scheme (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87323/">https://patchwork.freedesktop.org/series/87323/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9840 -&gt; Patchwork_19768</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19768 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-bsw-kefka/igt@i915_selftest@live@client.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-bsw-kefka/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9840/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19768/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9840 -&gt; Patchwork_19768</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9840: c32ebbc1bfd09da5fd10264570b81c9e65091a08 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6026: 8b8bbecf2f32298544c2f193753a0153f39e7326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19768: d1a2f1d5bb5c67b4f1bd95219ba73da00960d641 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d1a2f1d5bb5c drm/i915: rename i915_rev_steppings-&gt;intel_step_info<br />
19a6fa288b97 drm/i915: rename disp_stepping-&gt;display_step and gt_stepping-&gt;gt_step<br />
f94a68bcd095 drm/i915: rename DISP_STEPPING-&gt;DISPLAY_STEP and GT_STEPPING-&gt;GT_STEP<br />
3ab291f069dc drm/i915: switch TGL and ADL to the new stepping scheme<br />
c5a4a8ab6645 drm/i915: switch KBL to the new stepping scheme<br />
93d71ad11f06 drm/i915: add new helpers for accessing stepping info<br />
1d23fa9cb274 drm/i915: split out stepping info to a new file<br />
c52f0ea75128 drm/i915: remove unused ADLS_REVID_* macros</p>

</body>
</html>

--===============7026868642362345139==--

--===============0035121032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0035121032==--
