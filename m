Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F9372B413
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Jun 2023 23:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C598C10E063;
	Sun, 11 Jun 2023 21:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58F1C10E063;
 Sun, 11 Jun 2023 21:04:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D5C1A0BA8;
 Sun, 11 Jun 2023 21:04:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7235782276927394157=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wayne Lin" <wayne.lin@amd.com>
Date: Sun, 11 Jun 2023 21:04:47 -0000
Message-ID: <168651748722.6759.15782301938687624017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230609104925.3736756-1-Wayne.Lin@amd.com>
In-Reply-To: <20230609104925.3736756-1-Wayne.Lin@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Clear_MSG=5FRDY_flag_before_sending_new_message_?=
 =?utf-8?b?KHJldjMp?=
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

--===============7235782276927394157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Clear MSG_RDY flag before sending new message (rev3)
URL   : https://patchwork.freedesktop.org/series/116623/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13258 -> Patchwork_116623v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116623v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116623v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-kbl-soraka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116623v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
Known issues
------------

  Here are the changes found in Patchwork_116623v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][2] -> [ABORT][3] ([i915#5122])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][4] ([i915#6367])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][5] -> [DMESG-WARN][6] ([i915#7102])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         NOTRUN -> [ABORT][7] ([i915#6687])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][8] -> [FAIL][9] ([fdo#103375])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [DMESG-FAIL][10] ([i915#5334]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-6}:       [DMESG-FAIL][12] ([i915#7059]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][14] ([i915#4258] / [i915#7913]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][16] ([i915#7913] / [i915#7982]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-2/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - {bat-mtlp-6}:       [DMESG-WARN][18] ([i915#6367]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         [DMESG-WARN][20] ([i915#6367]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-6}:       [DMESG-FAIL][22] ([i915#6763]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7102]: https://gitlab.freedesktop.org/drm/intel/issues/7102
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_13258 -> Patchwork_116623v3

  CI-20190529: 20190529
  CI_DRM_13258: 7988fc2326bc683686289363a5c8e2e2bb3d30d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7325: 17fbab44f3ce578011e74a9de99884e32a133b25 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116623v3: 7988fc2326bc683686289363a5c8e2e2bb3d30d8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

20560de412e6 drm/dp_mst: Clear MSG_RDY flag before sending new message

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/index.html

--===============7235782276927394157==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Clear MSG_RDY flag before sending new message (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116623/">https://patchwork.freedesktop.org/series/116623/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13258 -&gt; Patchwork_116623v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116623v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116623v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116623v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence:<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116623v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7102">i915#7102</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13258/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13258 -&gt; Patchwork_116623v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13258: 7988fc2326bc683686289363a5c8e2e2bb3d30d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7325: 17fbab44f3ce578011e74a9de99884e32a133b25 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116623v3: 7988fc2326bc683686289363a5c8e2e2bb3d30d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>20560de412e6 drm/dp_mst: Clear MSG_RDY flag before sending new message</p>

</body>
</html>

--===============7235782276927394157==--
