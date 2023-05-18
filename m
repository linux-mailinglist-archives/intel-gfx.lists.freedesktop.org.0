Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31E708857
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 21:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5E910E549;
	Thu, 18 May 2023 19:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10A6C10E547;
 Thu, 18 May 2023 19:31:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DADF5A47DF;
 Thu, 18 May 2023 19:31:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8142337664893191628=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Clint Taylor" <clinton.a.taylor@intel.com>
Date: Thu, 18 May 2023 19:31:58 -0000
Message-ID: <168443831887.2372.5786124962463754360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
In-Reply-To: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQzIw?=
 =?utf-8?q?_Computed_HDMI_TMDS_pixel_clocks_=28rev3=29?=
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

--===============8142337664893191628==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: C20 Computed HDMI TMDS pixel clocks (rev3)
URL   : https://patchwork.freedesktop.org/series/117399/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13164 -> Patchwork_117399v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117399v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117399v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-kbl-soraka fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117399v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {bat-mtlp-8}:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-mtlp-8/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_117399v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-atsm-1:         [PASS][5] -> [FAIL][6] ([i915#6268])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][7] ([i915#4258] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         NOTRUN -> [ABORT][8] ([i915#7913] / [i915#7982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [DMESG-FAIL][9] ([i915#5334]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-rpls-2:         [INCOMPLETE][11] ([i915#4983] / [i915#7913]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adls-5:         [FAIL][15] ([fdo#103375]) -> [PASS][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][17] ([i915#7932]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - bat-adlp-6:         [ABORT][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][21] ([i915#7911] / [i915#7920] / [i915#7982]) -> [ABORT][22] ([i915#7911] / [i915#7920])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rpls-1/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [SKIP][23] ([i915#3555] / [i915#4579]) -> [ABORT][24] ([i915#4579] / [i915#8260])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260


Build changes
-------------

  * Linux: CI_DRM_13164 -> Patchwork_117399v3

  CI-20190529: 20190529
  CI_DRM_13164: 30793067f161dfcbaca1b0249d919c9fc306754e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7296: f58eaf30c30c1cc9f00c8b5c596ee5c94d054198 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117399v3: 30793067f161dfcbaca1b0249d919c9fc306754e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e2b63090a956 drm/i915/hdmi: C20 computed PLL frequencies
273769d73c7b drm/i915: Add 16bit register/mask operators

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html

--===============8142337664893191628==
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
<tr><td><b>Series:</b></td><td>C20 Computed HDMI TMDS pixel clocks (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117399/">https://patchwork.freedesktop.org/series/117399/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13164 -&gt; Patchwork_117399v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117399v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117399v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-kbl-soraka fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117399v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-mtlp-8/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117399v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adls-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13164/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13164 -&gt; Patchwork_117399v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13164: 30793067f161dfcbaca1b0249d919c9fc306754e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7296: f58eaf30c30c1cc9f00c8b5c596ee5c94d054198 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117399v3: 30793067f161dfcbaca1b0249d919c9fc306754e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e2b63090a956 drm/i915/hdmi: C20 computed PLL frequencies<br />
273769d73c7b drm/i915: Add 16bit register/mask operators</p>

</body>
</html>

--===============8142337664893191628==--
