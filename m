Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04107ED85D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 01:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C0210E2A8;
	Thu, 16 Nov 2023 00:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1BD210E2A4;
 Thu, 16 Nov 2023 00:01:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9479A02F0;
 Thu, 16 Nov 2023 00:01:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2384846844445621128=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 16 Nov 2023 00:01:15 -0000
Message-ID: <170009287578.3093.13354108181229467593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231115123625.74286-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20231115123625.74286-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQUxT?=
 =?utf-8?q?A=3A_hda=3A_i915=3A_Alays_handle_-EPROBE=5FDEFER?=
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

--===============2384846844445621128==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA: hda: i915: Alays handle -EPROBE_DEFER
URL   : https://patchwork.freedesktop.org/series/126462/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13881 -> Patchwork_126462v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126462v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126462v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): bat-mtlp-8 fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126462v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5:
    - bat-adlp-11:        [PASS][1] -> [FAIL][2] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5.html

  * igt@vgem_basic@unload:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/fi-hsw-4770/igt@vgem_basic@unload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/fi-hsw-4770/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_126462v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][5] -> [INCOMPLETE][6] ([i915#9275])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][7] -> [FAIL][8] ([fdo#103375])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5:
    - bat-adlp-11:        [PASS][9] -> [DMESG-FAIL][10] ([i915#6868])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][11] ([i915#1845] / [i915#9197])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-6:
    - bat-adlp-11:        NOTRUN -> [ABORT][12] ([i915#8668])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-6.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][13] ([i915#8668]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13881 -> Patchwork_126462v1

  CI-20190529: 20190529
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126462v1: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bc2bb55efd93 ALSA: hda: i915: Alays handle -EPROBE_DEFER

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/index.html

--===============2384846844445621128==
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
<tr><td><b>Series:</b></td><td>ALSA: hda: i915: Alays handle -EPROBE_DEFER</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126462/">https://patchwork.freedesktop.org/series/126462/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13881 -&gt; Patchwork_126462v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126462v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126462v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): bat-mtlp-8 fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126462v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-5.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/fi-hsw-4770/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/fi-hsw-4770/igt@vgem_basic@unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126462v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-6:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-6.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126462v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13881 -&gt; Patchwork_126462v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126462v1: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bc2bb55efd93 ALSA: hda: i915: Alays handle -EPROBE_DEFER</p>

</body>
</html>

--===============2384846844445621128==--
