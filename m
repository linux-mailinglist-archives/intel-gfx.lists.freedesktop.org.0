Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE1E73DD16
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 13:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8B710E1EE;
	Mon, 26 Jun 2023 11:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D1EA10E1CC;
 Mon, 26 Jun 2023 11:16:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 153F2AADDC;
 Mon, 26 Jun 2023 11:16:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6409253277898792362=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 26 Jun 2023 11:16:32 -0000
Message-ID: <168777819204.5704.8791606412263132791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230626082821.2085-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230626082821.2085-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fail_if_DSC_compression_requirement_is_less_than_platf?=
 =?utf-8?q?orm_supports?=
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

--===============6409253277898792362==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fail if DSC compression requirement is less than platform supports
URL   : https://patchwork.freedesktop.org/series/119848/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13321 -> Patchwork_119848v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_119848v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-jsl-1:          [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][3] -> [ABORT][4] ([i915#4983] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-2/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-1/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][7] ([fdo#109271]) +25 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/fi-bsw-n3050/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4579]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][9] ([i915#4258] / [i915#7913]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [DMESG-FAIL][11] ([i915#7269]) -> [ABORT][12] ([i915#7982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [SKIP][13] ([i915#3555] / [i915#4579]) -> [ABORT][14] ([i915#4579] / [i915#8260])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13321 -> Patchwork_119848v1

  CI-20190529: 20190529
  CI_DRM_13321: 8bcc0ce6569a5889bd5a4b078b7c20e50d7be9d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7348: feb4fdbcce1e53cb1d483aad3d5ec4ff41092359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119848v1: 8bcc0ce6569a5889bd5a4b078b7c20e50d7be9d7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a527bfdeabaa drm/i915: Fail if DSC compression requirement is less than platform supports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/index.html

--===============6409253277898792362==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fail if DSC compression requirement is less than platform supports</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119848/">https://patchwork.freedesktop.org/series/119848/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13321 -&gt; Patchwork_119848v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119848v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/fi-bsw-n3050/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7269">i915#7269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13321/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119848v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13321 -&gt; Patchwork_119848v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13321: 8bcc0ce6569a5889bd5a4b078b7c20e50d7be9d7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7348: feb4fdbcce1e53cb1d483aad3d5ec4ff41092359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119848v1: 8bcc0ce6569a5889bd5a4b078b7c20e50d7be9d7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a527bfdeabaa drm/i915: Fail if DSC compression requirement is less than platform supports</p>

</body>
</html>

--===============6409253277898792362==--
