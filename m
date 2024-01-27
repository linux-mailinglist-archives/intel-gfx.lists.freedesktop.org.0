Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2728A83EBB1
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 08:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0E110E5D4;
	Sat, 27 Jan 2024 07:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11CC10E45E;
 Sat, 27 Jan 2024 07:27:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4719127953019883629=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_ccs_compressed_frame?=
 =?utf-8?q?buffers_on_Xe2_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Sat, 27 Jan 2024 07:27:33 -0000
Message-ID: <170634045391.765364.10276519672218510622@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
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

--===============4719127953019883629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable ccs compressed framebuffers on Xe2 (rev4)
URL   : https://patchwork.freedesktop.org/series/128947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14187 -> Patchwork_128947v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/index.html

Participating hosts (35 -> 32)
------------------------------

  Missing    (3): bat-kbl-2 fi-snb-2520m bat-adls-6 

Known issues
------------

  Here are the changes found in Patchwork_128947v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#10137])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-nick:        [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlm-1:         [INCOMPLETE][5] ([i915#9413]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html

  
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413


Build changes
-------------

  * Linux: CI_DRM_14187 -> Patchwork_128947v4

  CI-20190529: 20190529
  CI_DRM_14187: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7694: 814cd9883b94be1c61d830b2c1279dc2265476bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128947v4: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6020d5a60593 drm/i915/display: On Xe2 always enable decompression with tile4
bd4fc9a6b228 drm/xe/xe2: Limit ccs framebuffers to tile4 only
9023696a4285 drm/xe: store bind time pat index to xe_bo
84520e9668e3 drm/xe: add bind time pat index to xe_bo structure
c5f74e43b29f drm/xe/pat: annotate pat index table with compression information

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/index.html

--===============4719127953019883629==
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
<tr><td><b>Series:</b></td><td>Enable ccs compressed framebuffers on Xe2 (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128947/">https://patchwork.freedesktop.org/series/128947/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14187 -&gt; Patchwork_128947v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Missing    (3): bat-kbl-2 fi-snb-2520m bat-adls-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128947v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v4/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14187 -&gt; Patchwork_128947v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14187: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7694: 814cd9883b94be1c61d830b2c1279dc2265476bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128947v4: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6020d5a60593 drm/i915/display: On Xe2 always enable decompression with tile4<br />
bd4fc9a6b228 drm/xe/xe2: Limit ccs framebuffers to tile4 only<br />
9023696a4285 drm/xe: store bind time pat index to xe_bo<br />
84520e9668e3 drm/xe: add bind time pat index to xe_bo structure<br />
c5f74e43b29f drm/xe/pat: annotate pat index table with compression information</p>

</body>
</html>

--===============4719127953019883629==--
