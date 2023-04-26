Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D58CC6EEB2F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 02:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E9810E830;
	Wed, 26 Apr 2023 00:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB0ED10E850;
 Wed, 26 Apr 2023 00:02:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AAD6A66C9;
 Wed, 26 Apr 2023 00:02:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2954123835286406064=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 26 Apr 2023 00:02:00 -0000
Message-ID: <168246732056.17155.9706441128656510161@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230425194441.68086-1-hdegoede@redhat.com>
In-Reply-To: <20230425194441.68086-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Use_unconditional_msleep=28=29_instead_of_intel=5F?=
 =?utf-8?b?ZHNpX21zbGVlcCgp?=
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

--===============2954123835286406064==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: Use unconditional msleep() instead of intel_dsi_msleep()
URL   : https://patchwork.freedesktop.org/series/116947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13062 -> Patchwork_116947v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116947v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116947v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116947v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await@ccs3:
    - bat-dg2-8:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@gem_exec_fence@basic-await@ccs3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-8/igt@gem_exec_fence@basic-await@ccs3.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][9] ([i915#7443]) -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_116947v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][11] -> [FAIL][12] ([i915#7932])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#5354])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         [PASS][14] -> [FAIL][15] ([fdo#103375]) +6 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][16] ([i915#8384]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rpls-1/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13062 -> Patchwork_116947v1

  CI-20190529: 20190529
  CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116947v1: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0bbf45bcf1b3 drm/i915/dsi: Use unconditional msleep() instead of intel_dsi_msleep()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/index.html

--===============2954123835286406064==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: Use unconditional msleep() instead of intel_dsi_msleep()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116947/">https://patchwork.freedesktop.org/series/116947/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13062 -&gt; Patchwork_116947v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116947v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116947v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116947v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@ccs3:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@gem_exec_fence@basic-await@ccs3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-8/igt@gem_exec_fence@basic-await@ccs3.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116947v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13062/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116947v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13062 -&gt; Patchwork_116947v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13062: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7270: 3bd8bf9bca97bbfb7b4b408f9fccd0cf6f742d4c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116947v1: 5a0333cf630a335d7e8f60fd2b8526ed0895900c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0bbf45bcf1b3 drm/i915/dsi: Use unconditional msleep() instead of intel_dsi_msleep()</p>

</body>
</html>

--===============2954123835286406064==--
