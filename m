Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E6330F1A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A941C89F8B;
	Mon,  8 Mar 2021 13:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCCF489EBB;
 Mon,  8 Mar 2021 13:27:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6245A0118;
 Mon,  8 Mar 2021 13:27:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jia-Ju Bai" <baijiaju1990@gmail.com>
Date: Mon, 08 Mar 2021 13:27:29 -0000
Message-ID: <161521004978.17933.9002020879928971849@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210308090722.8392-1-baijiaju1990@gmail.com>
In-Reply-To: <20210308090722.8392-1-baijiaju1990@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZ3B1?=
 =?utf-8?q?=3A_drm=3A_i915=3A_fix_error_return_code_of_igt=5Fthreaded=5Fbl?=
 =?utf-8?b?dCgp?=
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
Content-Type: multipart/mixed; boundary="===============0513394821=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0513394821==
Content-Type: multipart/alternative;
 boundary="===============2743084643076888687=="

--===============2743084643076888687==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: drm: i915: fix error return code of igt_threaded_blt()
URL   : https://patchwork.freedesktop.org/series/87765/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9838 -> Patchwork_19766
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19766 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19766, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19766:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_19766 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#3145]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#203]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][7] ([i915#2502] / [i915#3145]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][9] ([i915#3145]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][15] ([i915#3143]) -> [DMESG-WARN][16] ([i915#1982] / [i915#3143])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9838 -> Patchwork_19766

  CI-20190529: 20190529
  CI_DRM_9838: 18041d32fb75fb42a0b6c8d26529dba5cf4afcf6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6024: d8e03fe437f0c328c96717a92ad97719c02ba2cd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19766: 8423b9a9d94492cde592a40efa26d79848bbceaa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8423b9a9d944 gpu: drm: i915: fix error return code of igt_threaded_blt()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/index.html

--===============2743084643076888687==
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
<tr><td><b>Series:</b></td><td>gpu: drm: i915: fix error return code of igt_threaded_blt()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87765/">https://patchwork.freedesktop.org/series/87765/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9838 -&gt; Patchwork_19766</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19766 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19766, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19766:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19766 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9838/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19766/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9838 -&gt; Patchwork_19766</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9838: 18041d32fb75fb42a0b6c8d26529dba5cf4afcf6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6024: d8e03fe437f0c328c96717a92ad97719c02ba2cd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19766: 8423b9a9d94492cde592a40efa26d79848bbceaa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8423b9a9d944 gpu: drm: i915: fix error return code of igt_threaded_blt()</p>

</body>
</html>

--===============2743084643076888687==--

--===============0513394821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0513394821==--
