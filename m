Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C05D182702B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 14:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF7310E1DF;
	Mon,  8 Jan 2024 13:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABC510E1DF;
 Mon,  8 Jan 2024 13:47:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7301115591246046547=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Extend_ARL_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Haridhar Kalvala" <haridhar.kalvala@intel.com>
Date: Mon, 08 Jan 2024 13:47:07 -0000
Message-ID: <170472162723.195263.8250817939889636920@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
In-Reply-To: <20240108122738.14399-1-haridhar.kalvala@intel.com>
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

--===============7301115591246046547==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Extend ARL support
URL   : https://patchwork.freedesktop.org/series/128322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14092 -> Patchwork_128322v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (3): fi-bsw-nick fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_128322v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][2] -> [INCOMPLETE][3] ([i915#9883])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +36 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982] / [i915#8585])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][7] -> [DMESG-WARN][8] ([i915#8585])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#9730]) +31 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][13] -> [FAIL][14] ([i915#10031])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
    - bat-atsm-1:         NOTRUN -> [SKIP][15] ([i915#6645])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][16] ([i915#1836])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][17] ([i915#8668])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][18] ([i915#8668] / [i915#9368]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4550]: https://gitlab.freedesktop.org/drm/intel/issues/4550
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9368]: https://gitlab.freedesktop.org/drm/intel/issues/9368
  [i915#9730]: https://gitlab.freedesktop.org/drm/intel/issues/9730
  [i915#9883]: https://gitlab.freedesktop.org/drm/intel/issues/9883


Build changes
-------------

  * Linux: CI_DRM_14092 -> Patchwork_128322v1

  CI-20190529: 20190529
  CI_DRM_14092: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7661: 17df2eb8cded19c629cacee8a369629b56976068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128322v1: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6fef8faaa708 drm/i915/xelpg: Extend some workarounds/tuning to gfx version 12.74
76121f371ad8 drm/i915/xelpg: Extend driver code of Xe_LPG to Xe_LPG+
81bb98e564e5 drm/i915: Add additional ARL PCI IDs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html

--===============7301115591246046547==
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
<tr><td><b>Series:</b></td><td>Extend ARL support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128322/">https://patchwork.freedesktop.org/series/128322/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14092 -&gt; Patchwork_128322v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (3): fi-bsw-nick fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128322v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9883">i915#9883</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9730">i915#9730</a>) +31 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10031">i915#10031</a>)</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9368">i915#9368</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14092 -&gt; Patchwork_128322v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14092: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7661: 17df2eb8cded19c629cacee8a369629b56976068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128322v1: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6fef8faaa708 drm/i915/xelpg: Extend some workarounds/tuning to gfx version 12.74<br />
76121f371ad8 drm/i915/xelpg: Extend driver code of Xe_LPG to Xe_LPG+<br />
81bb98e564e5 drm/i915: Add additional ARL PCI IDs</p>

</body>
</html>

--===============7301115591246046547==--
