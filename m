Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF949A1A868
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 18:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABF510E043;
	Thu, 23 Jan 2025 17:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5410E10E043;
 Thu, 23 Jan 2025 17:07:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5527439574617918448=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Always_di?=
 =?utf-8?q?sable_interrupt_ahead_of_synchronize=5Firq?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2025 17:07:30 -0000
Message-ID: <173765205033.3613863.11145976651314862570@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250123162351.1364395-1-zhanjun.dong@intel.com>
In-Reply-To: <20250123162351.1364395-1-zhanjun.dong@intel.com>
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

--===============5527439574617918448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Always disable interrupt ahead of synchronize_irq
URL   : https://patchwork.freedesktop.org/series/143894/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16009 -> Patchwork_143894v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143894v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][1] -> [ABORT][2] ([i915#13203])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/fi-pnv-d510/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][3] -> [FAIL][4] ([i915#13401])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061] / [i915#12435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arlh-3/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arlh-3/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][7] -> [ABORT][8] ([i915#12435] / [i915#13399])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-adlp-9/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-adlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem:
    - bat-adlp-9:         [PASS][9] -> [ABORT][10] ([i915#13399])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-adlp-9/igt@i915_selftest@live@gem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-adlp-9/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][15] -> [DMESG-FAIL][16] ([i915#12061]) +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][17] -> [SKIP][18] ([i915#9197]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-mtlp-8/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-rplp-1:         [ABORT][21] ([i915#13399]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-rplp-1/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-rplp-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arls-6}:       [DMESG-FAIL][23] ([i915#12061]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16009 -> Patchwork_143894v1

  CI-20190529: 20190529
  CI_DRM_16009: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8207: 9f36f9f9e8825a67b762630c2b31628ddcda5c10 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143894v1: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/index.html

--===============5527439574617918448==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Always disable interrupt ahead of synchronize_irq</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143894/">https://patchwork.freedesktop.org/series/143894/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16009 -&gt; Patchwork_143894v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143894v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-adlp-9/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-adlp-9/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-arls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16009/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143894v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16009 -&gt; Patchwork_143894v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16009: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8207: 9f36f9f9e8825a67b762630c2b31628ddcda5c10 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143894v1: 7ea93d7bd75efd69dfb3c3400705990d5b42dec5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5527439574617918448==--
