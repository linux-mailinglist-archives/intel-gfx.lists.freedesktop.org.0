Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8008BD693
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 22:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC8F10ED0E;
	Mon,  6 May 2024 20:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B1B10ED0E;
 Mon,  6 May 2024 20:56:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7210885475889153337=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Introducing_I915=5FFORMAT?=
 =?utf-8?q?=5FMOD=5F4=5FTILED=5FXE2=5FCCS_Modifier_for_Xe2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 May 2024 20:56:23 -0000
Message-ID: <171502898316.1942097.2641011585912623228@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
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

--===============7210885475889153337==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS Modifier for Xe2
URL   : https://patchwork.freedesktop.org/series/133253/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14715 -> Patchwork_133253v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/index.html

Participating hosts (43 -> 37)
------------------------------

  Missing    (6): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-elk-e7500 bat-jsl-1 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133253v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6:
    - {bat-mtlp-9}:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html

  
Known issues
------------

  Here are the changes found in Patchwork_133253v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][2] -> [FAIL][3] ([i915#10378])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-1115g4:      [DMESG-FAIL][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-8:          [DMESG-FAIL][6] ([i915#10793]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-dg2-8/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-dg2-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [FAIL][8] ([i915#9224]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-mtlp-9}:       [DMESG-WARN][10] ([i915#10435] / [i915#9157]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10793]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10793
  [i915#10900]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10900
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#8585]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585
  [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157
  [i915#9224]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9224


Build changes
-------------

  * Linux: CI_DRM_14715 -> Patchwork_133253v1

  CI-20190529: 20190529
  CI_DRM_14715: 83e0d2a2621c7550c198b8936f4680b24f24a698 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7834: 008178acd533c33910d41fefc80462b3915c89fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133253v1: 83e0d2a2621c7550c198b8936f4680b24f24a698 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/index.html

--===============7210885475889153337==
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
<tr><td><b>Series:</b></td><td>Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS Modifier for Xe2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133253/">https://patchwork.freedesktop.org/series/133253/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14715 -&gt; Patchwork_133253v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/index.html</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-elk-e7500 bat-jsl-1 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133253v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6:<ul>
<li>{bat-mtlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133253v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10793">i915#10793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-dg2-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-mtlp-9/igt@kms_busy@basic@modeset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9224">i915#9224</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14715/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133253v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14715 -&gt; Patchwork_133253v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14715: 83e0d2a2621c7550c198b8936f4680b24f24a698 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7834: 008178acd533c33910d41fefc80462b3915c89fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133253v1: 83e0d2a2621c7550c198b8936f4680b24f24a698 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7210885475889153337==--
