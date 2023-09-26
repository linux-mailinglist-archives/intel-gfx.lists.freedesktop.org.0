Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B56247AF060
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 18:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC2C10E012;
	Tue, 26 Sep 2023 16:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25E4410E012;
 Tue, 26 Sep 2023 16:13:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E1D6AADE1;
 Tue, 26 Sep 2023 16:13:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0626657306258785602=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 26 Sep 2023 16:13:43 -0000
Message-ID: <169574482308.20978.10415611036559208531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230926083742.14740-1-nirmoy.das@intel.com>
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXBk?=
 =?utf-8?q?ate_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev10=29?=
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

--===============0626657306258785602==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev10)
URL   : https://patchwork.freedesktop.org/series/123329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13681 -> Patchwork_123329v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/index.html

Participating hosts (41 -> 29)
------------------------------

  Additional (1): bat-dg2-14 
  Missing    (13): fi-kbl-soraka fi-rkl-11600 fi-tgl-1115g4 bat-dg2-9 fi-cfl-8700k fi-snb-2520m fi-cfl-guc fi-glk-j4005 fi-bsw-nick fi-pnv-d510 fi-blb-e6850 bat-jsl-3 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_123329v10 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-hsw-4770:        [FAIL][1] ([i915#8293]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/fi-hsw-4770/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/fi-hsw-4770/igt@debugfs_test@basic-hwmon.html

  * igt@kms_flip@basic-plain-flip@a-dp6:
    - bat-adlp-11:        [PASS][4] -> [DMESG-WARN][5] ([i915#6868])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-adlp-11/igt@kms_flip@basic-plain-flip@a-dp6.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-adlp-11/igt@kms_flip@basic-plain-flip@a-dp6.html

  * igt@kms_flip@basic-plain-flip@b-dp6:
    - bat-adlp-11:        [PASS][6] -> [FAIL][7] ([i915#6121]) +2 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#1845]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Warnings ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][9] ([i915#9262]) -> [ABORT][10] ([i915#9414])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13681 -> Patchwork_123329v10

  CI-20190529: 20190529
  CI_DRM_13681: b57407d0de043fc22b000a941a404ab103849e06 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7503: 7503
  Patchwork_123329v10: b57407d0de043fc22b000a941a404ab103849e06 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cecc823b73b0 drm/i915: Enable GGTT updates with binder in MTL
c0b3957e2023 drm/i915: Toggle binder context ready status
61c9b6dcffca drm/i915: Implement GGTT update method with MI_UPDATE_GTT
e93b7d40c91d drm/i915: Parameterize binder context creation
3b666f14446b drm/i915: Implement for_each_sgt_daddr_next
6ecadc0d9349 drm/i915: Create a kernel context for GGTT updates
d4f22e54c5c7 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/index.html

--===============0626657306258785602==
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
<tr><td><b>Series:</b></td><td>Update GGTT with MI_UPDATE_GTT on MTL (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123329/">https://patchwork.freedesktop.org/series/123329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13681 -&gt; Patchwork_123329v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/index.html</p>
<h2>Participating hosts (41 -&gt; 29)</h2>
<p>Additional (1): bat-dg2-14 <br />
  Missing    (13): fi-kbl-soraka fi-rkl-11600 fi-tgl-1115g4 bat-dg2-9 fi-cfl-8700k fi-snb-2520m fi-cfl-guc fi-glk-j4005 fi-bsw-nick fi-pnv-d510 fi-blb-e6850 bat-jsl-3 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123329v10 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/fi-hsw-4770/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/fi-hsw-4770/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-adlp-11/igt@kms_flip@basic-plain-flip@a-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-adlp-11/igt@kms_flip@basic-plain-flip@a-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-adlp-11/igt@kms_flip@basic-plain-flip@b-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13681/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v10/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13681 -&gt; Patchwork_123329v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13681: b57407d0de043fc22b000a941a404ab103849e06 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7503: 7503<br />
  Patchwork_123329v10: b57407d0de043fc22b000a941a404ab103849e06 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cecc823b73b0 drm/i915: Enable GGTT updates with binder in MTL<br />
c0b3957e2023 drm/i915: Toggle binder context ready status<br />
61c9b6dcffca drm/i915: Implement GGTT update method with MI_UPDATE_GTT<br />
e93b7d40c91d drm/i915: Parameterize binder context creation<br />
3b666f14446b drm/i915: Implement for_each_sgt_daddr_next<br />
6ecadc0d9349 drm/i915: Create a kernel context for GGTT updates<br />
d4f22e54c5c7 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex</p>

</body>
</html>

--===============0626657306258785602==--
