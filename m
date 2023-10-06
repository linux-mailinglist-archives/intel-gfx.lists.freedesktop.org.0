Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C557BBC0B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 17:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B04A10E531;
	Fri,  6 Oct 2023 15:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BC3910E531;
 Fri,  6 Oct 2023 15:45:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20B1CAADEF;
 Fri,  6 Oct 2023 15:45:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0105819070907549331=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 06 Oct 2023 15:45:14 -0000
Message-ID: <169660711412.6465.6609471179655600783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1696595500.git.jani.nikula@intel.com>
In-Reply-To: <cover.1696595500.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_align_with_W=3D1_warnings?=
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

--===============0105819070907549331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: align with W=1 warnings
URL   : https://patchwork.freedesktop.org/series/124718/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13722 -> Patchwork_124718v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_124718v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:
    - bat-adlp-11:        [PASS][1] -> [DMESG-WARN][2] ([i915#6868])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6:
    - bat-adlp-11:        [PASS][3] -> [FAIL][4] ([i915#6121])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlp-11:        NOTRUN -> [SKIP][5] ([i915#3637])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-plain-flip.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:
    - bat-adlp-11:        [PASS][6] -> [ABORT][7] ([i915#8668])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][8] ([IGT#3]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        [ABORT][10] ([i915#8668] / [i915#9451]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adlp-11:        [SKIP][12] ([i915#4093]) -> [FAIL][13] ([i915#8803])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_force_connector_basic@force-connector-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_force_connector_basic@force-connector-state.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8803]: https://gitlab.freedesktop.org/drm/intel/issues/8803
  [i915#9451]: https://gitlab.freedesktop.org/drm/intel/issues/9451


Build changes
-------------

  * Linux: CI_DRM_13722 -> Patchwork_124718v1

  CI-20190529: 20190529
  CI_DRM_13722: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7518: 2d4a57e28db0c2ccbf8b2e763074c9aa74a1ae52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124718v1: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

596a52a71ef7 drm/i915: enable W=1 warnings by default
e28a46430f10 drm/i915: drop -Wall and related disables from cflags as redundant

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/index.html

--===============0105819070907549331==
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
<tr><td><b>Series:</b></td><td>drm/i915: align with W=1 warnings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124718/">https://patchwork.freedesktop.org/series/124718/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13722 -&gt; Patchwork_124718v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124718v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9451">i915#9451</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_force_connector_basic@force-connector-state:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13722/bat-adlp-11/igt@kms_force_connector_basic@force-connector-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124718v1/bat-adlp-11/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8803">i915#8803</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13722 -&gt; Patchwork_124718v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13722: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7518: 2d4a57e28db0c2ccbf8b2e763074c9aa74a1ae52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124718v1: ead693ec2d2fddb30bff4718845d42f9adabcce6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>596a52a71ef7 drm/i915: enable W=1 warnings by default<br />
e28a46430f10 drm/i915: drop -Wall and related disables from cflags as redundant</p>

</body>
</html>

--===============0105819070907549331==--
