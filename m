Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9480F829233
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 02:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0140B10E54B;
	Wed, 10 Jan 2024 01:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5AD10E0F7;
 Wed, 10 Jan 2024 01:36:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3858706491007233231=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Use_rc6=2Esu?=
 =?utf-8?q?pported_flag_from_intel=5Fgt_for_rc6=5Fenable_sysfs_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juan Escamilla" <jcescami@wasd.net>
Date: Wed, 10 Jan 2024 01:36:16 -0000
Message-ID: <170485057695.240792.12887256606325273079@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240110010302.553597-1-jcescami@wasd.net>
In-Reply-To: <20240110010302.553597-1-jcescami@wasd.net>
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

--===============3858706491007233231==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Use rc6.supported flag from intel_gt for rc6_enable sysfs (rev2)
URL   : https://patchwork.freedesktop.org/series/128343/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14103 -> Patchwork_128343v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_128343v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][2] -> [INCOMPLETE][3] ([i915#9275])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +36 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adlp-6:         [PASS][5] -> [INCOMPLETE][6] ([i915#7443])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - bat-dg2-8:          [PASS][7] -> [INCOMPLETE][8] ([i915#1982] / [i915#9280])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9280]: https://gitlab.freedesktop.org/drm/intel/issues/9280


Build changes
-------------

  * Linux: CI_DRM_14103 -> Patchwork_128343v2

  CI-20190529: 20190529
  CI_DRM_14103: e727f148b7ccd42555b101f35fe28b0d0b1d34f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7664: 5b8a8dcca7711c73f9cfeb66b5deb27751290fb4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128343v2: e727f148b7ccd42555b101f35fe28b0d0b1d34f0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0cba1204bc6e drm/i915/gt: Use rc6.supported flag from intel_gt for rc6_enable sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/index.html

--===============3858706491007233231==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Use rc6.supported flag from intel_gt for rc6_enable sysfs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128343/">https://patchwork.freedesktop.org/series/128343/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14103 -&gt; Patchwork_128343v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128343v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14103/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128343v2/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9280">i915#9280</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14103 -&gt; Patchwork_128343v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14103: e727f148b7ccd42555b101f35fe28b0d0b1d34f0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7664: 5b8a8dcca7711c73f9cfeb66b5deb27751290fb4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128343v2: e727f148b7ccd42555b101f35fe28b0d0b1d34f0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0cba1204bc6e drm/i915/gt: Use rc6.supported flag from intel_gt for rc6_enable sysfs</p>

</body>
</html>

--===============3858706491007233231==--
