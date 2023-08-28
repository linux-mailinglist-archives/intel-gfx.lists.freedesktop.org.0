Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB578B248
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 15:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428C710E2E2;
	Mon, 28 Aug 2023 13:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C11F610E2E2;
 Mon, 28 Aug 2023 13:53:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9ACBAADD5;
 Mon, 28 Aug 2023 13:53:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8125490161787722828=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Linyu Yuan" <quic_linyyuan@quicinc.com>
Date: Mon, 28 Aug 2023 13:53:38 -0000
Message-ID: <169323081869.20018.7223656738619456600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
In-Reply-To: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_fix_compile_issue_of_guc=5Fklvs=5Fabi=2Eh?=
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

--===============8125490161787722828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: fix compile issue of guc_klvs_abi.h
URL   : https://patchwork.freedesktop.org/series/122971/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13571 -> Patchwork_122971v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/index.html

Participating hosts (38 -> 27)
------------------------------

  Missing    (11): fi-kbl-7567u bat-adls-5 bat-adlp-9 bat-dg2-9 fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-cfl-guc fi-ivb-3770 fi-elk-e7500 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_122971v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-FAIL][2] ([i915#5334] / [i915#7872])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - bat-jsl-1:          [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][5] ([i915#1845]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [SKIP][6] ([i915#1072]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - bat-adlp-6:         NOTRUN -> [ABORT][7] ([i915#8442] / [i915#8668])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-adlp-6/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [ABORT][8] ([i915#8260] / [i915#8668])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:
    - bat-adlp-6:         [ABORT][9] ([i915#7977] / [i915#8469] / [i915#8668]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][11] ([i915#8442] / [i915#8668] / [i915#8860]) -> [SKIP][12] ([i915#1072])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860


Build changes
-------------

  * Linux: CI_DRM_13571 -> Patchwork_122971v1

  CI-20190529: 20190529
  CI_DRM_13571: d3f0e020609215d9097f1b1fad5a13ea0b37548e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7454: 7454
  Patchwork_122971v1: d3f0e020609215d9097f1b1fad5a13ea0b37548e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6a7147fc198e drm/i915/guc: fix compile issue of guc_klvs_abi.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/index.html

--===============8125490161787722828==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: fix compile issue of guc_klvs_abi.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122971/">https://patchwork.freedesktop.org/series/122971/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13571 -&gt; Patchwork_122971v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/index.html</p>
<h2>Participating hosts (38 -&gt; 27)</h2>
<p>Missing    (11): fi-kbl-7567u bat-adls-5 bat-adlp-9 bat-dg2-9 fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-cfl-guc fi-ivb-3770 fi-elk-e7500 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122971v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-adlp-6/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13571/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122971v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13571 -&gt; Patchwork_122971v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13571: d3f0e020609215d9097f1b1fad5a13ea0b37548e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7454: 7454<br />
  Patchwork_122971v1: d3f0e020609215d9097f1b1fad5a13ea0b37548e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6a7147fc198e drm/i915/guc: fix compile issue of guc_klvs_abi.h</p>

</body>
</html>

--===============8125490161787722828==--
