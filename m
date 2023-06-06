Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1077724C67
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B42D10E24F;
	Tue,  6 Jun 2023 19:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6C7B10E24F;
 Tue,  6 Jun 2023 19:07:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE367A0BA8;
 Tue,  6 Jun 2023 19:07:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6988914775636257812=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Tue, 06 Jun 2023 19:07:01 -0000
Message-ID: <168607842190.22675.1129357249321725331@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606163942.330052-1-luciano.coelho@intel.com>
In-Reply-To: <20230606163942.330052-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev2=29?=
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

--===============6988914775636257812==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: implement internal workqueues (rev2)
URL   : https://patchwork.freedesktop.org/series/118947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13237 -> Patchwork_118947v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_118947v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6:
    - {bat-adlp-11}:      NOTRUN -> [FAIL][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html

  
Known issues
------------

  Here are the changes found in Patchwork_118947v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][2] -> [DMESG-FAIL][3] ([i915#5334])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][4] -> [ABORT][5] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-rpls-2/igt@i915_selftest@live@reset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][6] -> [FAIL][7] ([i915#7932]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [DMESG-FAIL][8] ([i915#7269]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {bat-adlp-11}:      [DMESG-WARN][10] ([i915#6868]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {bat-adlp-11}:      [SKIP][12] ([i915#3546]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:
    - {bat-adlp-11}:      [ABORT][14] ([i915#4423]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html

  
#### Warnings ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][16] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384]) -> [ABORT][17] ([i915#4983] / [i915#7461] / [i915#7981] / [i915#8347] / [i915#8384])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-rpls-1/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:
    - bat-adlp-6:         [ABORT][18] -> [ABORT][19] ([i915#8434])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7269]: https://gitlab.freedesktop.org/drm/intel/issues/7269
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434


Build changes
-------------

  * Linux: CI_DRM_13237 -> Patchwork_118947v2

  CI-20190529: 20190529
  CI_DRM_13237: 4770a078e0a95c8fa5f9490c11321114c3d9cc2c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118947v2: 4770a078e0a95c8fa5f9490c11321114c3d9cc2c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ddaac139858c drm/i915/selftests: add local workqueue for SW fence selftest
6e59ecd6a241 drm/i915: add a dedicated workqueue inside drm_i915_private
af6438dd159a drm/i915: use pointer to i915 instead of rpm in wakeref

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/index.html

--===============6988914775636257812==
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
<tr><td><b>Series:</b></td><td>drm/i915: implement internal workqueues (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118947/">https://patchwork.freedesktop.org/series/118947/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13237 -&gt; Patchwork_118947v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_118947v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6:<ul>
<li>{bat-adlp-11}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-6.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118947v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7269">i915#7269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13237 -&gt; Patchwork_118947v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13237: 4770a078e0a95c8fa5f9490c11321114c3d9cc2c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118947v2: 4770a078e0a95c8fa5f9490c11321114c3d9cc2c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ddaac139858c drm/i915/selftests: add local workqueue for SW fence selftest<br />
6e59ecd6a241 drm/i915: add a dedicated workqueue inside drm_i915_private<br />
af6438dd159a drm/i915: use pointer to i915 instead of rpm in wakeref</p>

</body>
</html>

--===============6988914775636257812==--
