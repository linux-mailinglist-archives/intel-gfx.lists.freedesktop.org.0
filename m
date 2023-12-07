Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6518080B6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 07:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E2D10E7AE;
	Thu,  7 Dec 2023 06:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E83B10E7AE;
 Thu,  7 Dec 2023 06:30:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86436A0078;
 Thu,  7 Dec 2023 06:30:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4637534260947345931=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 07 Dec 2023 06:30:49 -0000
Message-ID: <170193064951.28719.15692819563786237336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Fail_Repeater_authentication_if_Type1_device_not_?=
 =?utf-8?q?present_=28rev2=29?=
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

--===============4637534260947345931==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev2)
URL   : https://patchwork.freedesktop.org/series/127414/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13990 -> Patchwork_127414v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127414v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127414v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127414v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][1] +2 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
Known issues
------------

  Here are the changes found in Patchwork_127414v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][2] ([i915#9197]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][3] ([i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@d-dp6:
    - bat-adlp-11:        [DMESG-FAIL][4] ([i915#6868]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp6:
    - bat-adlp-11:        [DMESG-WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][8] ([IGT#3]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][10] ([i915#8668]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_13990 -> Patchwork_127414v2

  CI-20190529: 20190529
  CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127414v2: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a20eeb2ab5a4 drm/i915/hdcp: Fail Repeater authentication if Type1 device not present

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/index.html

--===============4637534260947345931==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127414/">https://patchwork.freedesktop.org/series/127414/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13990 -&gt; Patchwork_127414v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127414v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127414v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127414v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127414v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13990 -&gt; Patchwork_127414v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127414v2: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a20eeb2ab5a4 drm/i915/hdcp: Fail Repeater authentication if Type1 device not present</p>

</body>
</html>

--===============4637534260947345931==--
