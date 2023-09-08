Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0CF7981B0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 07:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D5710E0A9;
	Fri,  8 Sep 2023 05:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96C2B10E0A9;
 Fri,  8 Sep 2023 05:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CBE9A00E6;
 Fri,  8 Sep 2023 05:56:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4190169474949870295=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 08 Sep 2023 05:56:38 -0000
Message-ID: <169415259853.14896.1858154076665535038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230908045538.806063-1-suraj.kandpal@intel.com>
In-Reply-To: <20230908045538.806063-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsc=3A_Fix_pic=5Fwidth_readout?=
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

--===============4190169474949870295==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsc: Fix pic_width readout
URL   : https://patchwork.freedesktop.org/series/123415/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13613 -> Patchwork_123415v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_123415v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-hsw-4770:        NOTRUN -> [FAIL][1] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy@all-engines:
    - bat-mtlp-8:         [PASS][2] -> [DMESG-FAIL][3] ([i915#9121])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-mtlp-8/igt@gem_busy@busy@all-engines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-mtlp-8/igt@gem_busy@busy@all-engines.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][4] -> [INCOMPLETE][5] ([i915#9275])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][6] -> [FAIL][7] ([fdo#103375])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [PASS][8] -> [FAIL][9] ([i915#9276])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6:
    - bat-adlp-11:        [PASS][10] -> [ABORT][11] ([i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         NOTRUN -> [SKIP][12] ([i915#1072]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [ABORT][13] ([i915#8260] / [i915#8668])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5:
    - bat-adlp-11:        [ABORT][14] ([i915#8668]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][16] ([i915#8442] / [i915#8668]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276


Build changes
-------------

  * Linux: CI_DRM_13613 -> Patchwork_123415v1

  CI-20190529: 20190529
  CI_DRM_13613: 25ec37710fd81562fd25eccebaac156d9334ff0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123415v1: 25ec37710fd81562fd25eccebaac156d9334ff0c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2dc949d8fabf drm/i915/dsc: Fix pic_width readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/index.html

--===============4190169474949870295==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsc: Fix pic_width readout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123415/">https://patchwork.freedesktop.org/series/123415/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13613 -&gt; Patchwork_123415v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123415v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-mtlp-8/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-mtlp-8/igt@gem_busy@busy@all-engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#9121</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13613/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123415v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13613 -&gt; Patchwork_123415v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13613: 25ec37710fd81562fd25eccebaac156d9334ff0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123415v1: 25ec37710fd81562fd25eccebaac156d9334ff0c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2dc949d8fabf drm/i915/dsc: Fix pic_width readout</p>

</body>
</html>

--===============4190169474949870295==--
