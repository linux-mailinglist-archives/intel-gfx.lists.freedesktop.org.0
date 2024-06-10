Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10D901CFE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 10:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABF310E365;
	Mon, 10 Jun 2024 08:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6B810E365;
 Mon, 10 Jun 2024 08:32:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5128412615128897075=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Revert_=22e1000e=3A_move_fo?=
 =?utf-8?q?rce_SMBUS_near_the_end_of_enable=5Fulp_function=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2024 08:32:39 -0000
Message-ID: <171800835969.30863.2975866123560650080@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5128412615128897075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "e1000e: move force SMBUS near the end of enable_ulp function"
URL   : https://patchwork.freedesktop.org/series/134664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14905 -> Patchwork_134664v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html

Participating hosts (41 -> 34)
------------------------------

  Missing    (7): bat-arls-4 bat-kbl-2 bat-adlp-9 bat-mtlp-6 bat-dg2-14 bat-dg2-11 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_134664v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2] ([i915#10341])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-arls-1/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-arls-1/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@objects:
    - bat-arls-1:         [PASS][3] -> [DMESG-FAIL][4] ([i915#10262]) +31 other tests dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-arls-1/igt@i915_selftest@live@objects.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-arls-1/igt@i915_selftest@live@objects.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@d-dp7:
    - {bat-mtlp-9}:       [DMESG-WARN][5] ([i915#11009]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp7.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp7.html

  * igt@kms_flip@basic-plain-flip@c-dp7:
    - {bat-mtlp-9}:       [FAIL][7] ([i915#6121]) -> [PASS][8] +6 other tests pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][9] ([i915#11009]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6:
    - {bat-mtlp-9}:       [FAIL][11] ([i915#10979]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14905 -> Patchwork_134664v1

  CI-20190529: 20190529
  CI_DRM_14905: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134664v1: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html

--===============5128412615128897075==
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
<tr><td><b>Series:</b></td><td>Revert &quot;e1000e: move force SMBUS near the end of enable_ulp function&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134664/">https://patchwork.freedesktop.org/series/134664/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14905 -&gt; Patchwork_134664v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/index.html</p>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Missing    (7): bat-arls-4 bat-kbl-2 bat-adlp-9 bat-mtlp-6 bat-dg2-14 bat-dg2-11 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134664v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-arls-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-arls-1/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-arls-1/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-arls-1/igt@i915_selftest@live@objects.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +31 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp7.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp7.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14905/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979">i915#10979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134664v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14905 -&gt; Patchwork_134664v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14905: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134664v1: c410bb641ea861fdd70c14ed8cc30d0d9a2ef587 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5128412615128897075==--
