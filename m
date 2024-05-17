Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A188C866F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 14:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3604010EE87;
	Fri, 17 May 2024 12:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FE110EE87;
 Fri, 17 May 2024 12:45:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8135988989196700153=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Don=27t_be_alarmed_at_FLR_t?=
 =?utf-8?q?imeouts?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2024 12:45:19 -0000
Message-ID: <171594991980.2143358.9010787217726654991@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240517112550.251955-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240517112550.251955-1-andi.shyti@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8135988989196700153==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Don't be alarmed at FLR timeouts
URL   : https://patchwork.freedesktop.org/series/133744/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14780 -> Patchwork_133744v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/index.html

Participating hosts (44 -> 37)
------------------------------

  Missing    (7): bat-mtlp-8 bat-dg1-7 fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-jsl-1 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_133744v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@dmabuf:
    - {bat-mtlp-9}:       [DMESG-FAIL][1] ([i915#11035]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-mtlp-9/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-mtlp-9/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][3] ([i915#10594]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp7:
    - {bat-mtlp-9}:       [DMESG-WARN][5] ([i915#10435]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@b-dp7.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@b-dp7.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - {bat-rpls-4}:       [DMESG-WARN][7] ([i915#9970]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-rpls-4/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-rpls-4/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911
  [i915#11035]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11035
  [i915#9970]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9970


Build changes
-------------

  * Linux: CI_DRM_14780 -> Patchwork_133744v1

  CI-20190529: 20190529
  CI_DRM_14780: 8ef53c10d150679e3ff5db00d128417dfffb7798 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7860: 05b3f5540c6dcaacdf2169dc730c126df9ffd7e2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133744v1: 8ef53c10d150679e3ff5db00d128417dfffb7798 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/index.html

--===============8135988989196700153==
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
<tr><td><b>Series:</b></td><td>Don&#x27;t be alarmed at FLR timeouts</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133744/">https://patchwork.freedesktop.org/series/133744/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14780 -&gt; Patchwork_133744v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/index.html</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): bat-mtlp-8 bat-dg1-7 fi-snb-2520m fi-kbl-8809g bat-dg2-11 bat-jsl-1 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133744v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-mtlp-9/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11035">i915#11035</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-mtlp-9/igt@i915_selftest@live@dmabuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@b-dp7.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@b-dp7.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
<ul>
<li>{bat-rpls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14780/bat-rpls-4/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9970">i915#9970</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133744v1/bat-rpls-4/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14780 -&gt; Patchwork_133744v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14780: 8ef53c10d150679e3ff5db00d128417dfffb7798 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7860: 05b3f5540c6dcaacdf2169dc730c126df9ffd7e2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133744v1: 8ef53c10d150679e3ff5db00d128417dfffb7798 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8135988989196700153==--
