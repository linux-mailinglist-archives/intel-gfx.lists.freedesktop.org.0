Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EEC727FEF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 14:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BA110E25A;
	Thu,  8 Jun 2023 12:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B358510E256;
 Thu,  8 Jun 2023 12:25:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFEC4A00CC;
 Thu,  8 Jun 2023 12:25:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9087225309631799272=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Thu, 08 Jun 2023 12:25:36 -0000
Message-ID: <168622713671.18385.1862173010488733833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230608094247.812488-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230608094247.812488-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZmJj?=
 =?utf-8?q?on=3A_Reschedule_cursor_worker_if_try_lock_fails?=
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

--===============9087225309631799272==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbcon: Reschedule cursor worker if try lock fails
URL   : https://patchwork.freedesktop.org/series/119060/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13249 -> Patchwork_119060v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/index.html

Participating hosts (34 -> 33)
------------------------------

  Missing    (1): fi-blb-e6850 

Known issues
------------

  Here are the changes found in Patchwork_119060v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [PASS][1] -> [INCOMPLETE][2] ([i915#7609] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][3] -> [ABORT][4] ([i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#4983] / [i915#7911] / [i915#7920])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-rpls-1/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg1-7:          NOTRUN -> [SKIP][7] ([i915#7828])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-dg1-7:          NOTRUN -> [SKIP][8] ([i915#1845] / [i915#4078])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-7:          [ABORT][9] ([i915#4983]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-dg1-7/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@i915_selftest@live@hangcheck.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5}:
    - {bat-adlp-11}:      [ABORT][11] ([i915#4423]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:
    - {bat-adlp-11}:      [DMESG-WARN][13] ([i915#4309] / [i915#4423]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4309]: https://gitlab.freedesktop.org/drm/intel/issues/4309
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920


Build changes
-------------

  * Linux: CI_DRM_13249 -> Patchwork_119060v1

  CI-20190529: 20190529
  CI_DRM_13249: e5065ee5a0b23e3f970315def269ac363bcb212f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119060v1: e5065ee5a0b23e3f970315def269ac363bcb212f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9a5d60a072a fbcon: Reschedule cursor worker if try lock fails

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/index.html

--===============9087225309631799272==
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
<tr><td><b>Series:</b></td><td>fbcon: Reschedule cursor worker if try lock fails</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119060/">https://patchwork.freedesktop.org/series/119060/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13249 -&gt; Patchwork_119060v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/index.html</p>
<h2>Participating hosts (34 -&gt; 33)</h2>
<p>Missing    (1): fi-blb-e6850 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119060v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-dg1-7/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-dg1-7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5}:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13249/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4309">i915#4309</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119060v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13249 -&gt; Patchwork_119060v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13249: e5065ee5a0b23e3f970315def269ac363bcb212f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119060v1: e5065ee5a0b23e3f970315def269ac363bcb212f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9a5d60a072a fbcon: Reschedule cursor worker if try lock fails</p>

</body>
</html>

--===============9087225309631799272==--
