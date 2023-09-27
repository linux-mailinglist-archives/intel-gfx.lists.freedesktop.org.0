Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDD97AF798
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 03:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F65D10E456;
	Wed, 27 Sep 2023 01:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11BA010E456;
 Wed, 27 Sep 2023 01:02:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08A20A0BA8;
 Wed, 27 Sep 2023 01:02:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5331879752320339170=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Wed, 27 Sep 2023 01:02:21 -0000
Message-ID: <169577654199.20756.12959972399194391873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230926165107.23440-1-rodrigo.vivi@intel.com>
In-Reply-To: <20230926165107.23440-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_missing_CCS_documen?=
 =?utf-8?q?tation_=28rev2=29?=
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

--===============5331879752320339170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Add missing CCS documentation (rev2)
URL   : https://patchwork.freedesktop.org/series/124285/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13682 -> Patchwork_124285v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-dg2-9 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_124285v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        [PASS][1] -> [ABORT][2] ([i915#8668])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html

  
#### Possible fixes ####

  * igt@kms_chamelium_frames@dp-crc-fast:
    - {bat-dg2-13}:       [DMESG-WARN][3] ([Intel XE#485]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_flip@basic-plain-flip@b-dp6:
    - bat-adlp-11:        [DMESG-WARN][5] ([i915#6868]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html

  * igt@kms_flip@basic-plain-flip@c-dp6:
    - bat-adlp-11:        [FAIL][7] ([i915#6121]) -> [PASS][8] +8 other tests pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_flip@basic-plain-flip@c-dp6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_flip@basic-plain-flip@c-dp6.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:
    - bat-adlp-11:        [DMESG-FAIL][9] ([i915#6868]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:
    - bat-adlp-11:        [FAIL][11] ([i915#9047]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6:
    - bat-adlp-11:        [ABORT][13] ([i915#8668]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-edid:
    - bat-adlp-11:        [FAIL][15] ([i915#8803]) -> [SKIP][16] ([i915#4093])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_force_connector_basic@force-edid.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#485]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/485
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8803]: https://gitlab.freedesktop.org/drm/intel/issues/8803
  [i915#9047]: https://gitlab.freedesktop.org/drm/intel/issues/9047


Build changes
-------------

  * Linux: CI_DRM_13682 -> Patchwork_124285v2

  CI-20190529: 20190529
  CI_DRM_13682: a42554bf0755b80fdfb8e91ca35ae6835bb3534d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7503: 7503
  Patchwork_124285v2: a42554bf0755b80fdfb8e91ca35ae6835bb3534d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e6fa9d781a75 drm/i915: Add missing GSCCS documentation
9593f226368b drm/i915: Add missing CCS documentation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/index.html

--===============5331879752320339170==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Add missing CCS documentation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124285/">https://patchwork.freedesktop.org/series/124285/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13682 -&gt; Patchwork_124285v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-dg2-9 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124285v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/485">Intel XE#485</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_flip@basic-plain-flip@c-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_flip@basic-plain-flip@c-dp6.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9047">i915#9047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_force_connector_basic@force-edid:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13682/bat-adlp-11/igt@kms_force_connector_basic@force-edid.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8803">i915#8803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124285v2/bat-adlp-11/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13682 -&gt; Patchwork_124285v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13682: a42554bf0755b80fdfb8e91ca35ae6835bb3534d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7503: 7503<br />
  Patchwork_124285v2: a42554bf0755b80fdfb8e91ca35ae6835bb3534d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e6fa9d781a75 drm/i915: Add missing GSCCS documentation<br />
9593f226368b drm/i915: Add missing CCS documentation</p>

</body>
</html>

--===============5331879752320339170==--
