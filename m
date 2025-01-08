Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDB0A062F8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E665F10EC1F;
	Wed,  8 Jan 2025 17:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D9310EC1F;
 Wed,  8 Jan 2025 17:05:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5855094025922631002=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/dp=3A_Rework_LTTPR_tr?=
 =?utf-8?q?ansparent_mode_handling_and_add_support_to_msm_driver?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abel Vesa" <abel.vesa@linaro.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Jan 2025 17:05:08 -0000
Message-ID: <173635590860.1342332.10069179486312737587@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
In-Reply-To: <20250108-drm-dp-msm-add-lttpr-transparent-mode-set-v4-0-918949bc2e3a@linaro.org>
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

--===============5855094025922631002==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp: Rework LTTPR transparent mode handling and add support to msm driver
URL   : https://patchwork.freedesktop.org/series/143251/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15924 -> Patchwork_143251v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143251v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][1] -> [SKIP][2] ([i915#9197]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-jsl-3:          [INCOMPLETE][3] ([i915#13241]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-3:          [DMESG-FAIL][5] ([i915#13132]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@objects:
    - bat-jsl-3:          [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@objects.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][9] ([i915#13393]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - {bat-arls-6}:       [DMESG-FAIL][11] ([i915#13393]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#13132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13132
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15924 -> Patchwork_143251v1

  CI-20190529: 20190529
  CI_DRM_15924: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8181: 32ed9fc482fee95777054d53b96d19a7e30eaa18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143251v1: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/index.html

--===============5855094025922631002==
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
<tr><td><b>Series:</b></td><td>drm/dp: Rework LTTPR transparent mode handling and add support to msm driver</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143251/">https://patchwork.freedesktop.org/series/143251/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15924 -&gt; Patchwork_143251v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143251v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13132">i915#13132</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-jsl-3/igt@i915_selftest@live@objects.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-jsl-3/igt@i915_selftest@live@objects.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>{bat-arls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15924/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143251v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15924 -&gt; Patchwork_143251v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15924: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8181: 32ed9fc482fee95777054d53b96d19a7e30eaa18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143251v1: 9cbe590862ef629f35ce9f4c2dc5c0a6a4553f48 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5855094025922631002==--
