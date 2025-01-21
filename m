Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FCBA176AB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 05:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F232D10E06D;
	Tue, 21 Jan 2025 04:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D6610E06D;
 Tue, 21 Jan 2025 04:49:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1717765944002904449=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Check_Scaler_and_DSC_Pref?=
 =?utf-8?q?ill_Latency_Against_Vblank_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2025 04:49:10 -0000
Message-ID: <173743495065.2449613.1805824221733023909@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============1717765944002904449==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Check Scaler and DSC Prefill Latency Against Vblank (rev7)
URL   : https://patchwork.freedesktop.org/series/143160/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15984 -> Patchwork_143160v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_143160v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][1] -> [FAIL][2] ([i915#13401])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-adls-6/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] ([i915#13445]) +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@runner@aborted:
    - bat-twl-1:          NOTRUN -> [FAIL][5] ([i915#13173])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-twl-1/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - {bat-mtlp-9}:       [DMESG-WARN][6] ([i915#13494]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-9/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][8] ([i915#12061]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-8/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-mtlp-8/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13173
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#13445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13445
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494


Build changes
-------------

  * Linux: CI_DRM_15984 -> Patchwork_143160v7

  CI-20190529: 20190529
  CI_DRM_15984: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8199: 8df1895672949617992cddbc33c5d683865879e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143160v7: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/index.html

--===============1717765944002904449==
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
<tr><td><b>Series:</b></td><td>Check Scaler and DSC Prefill Latency Against Vblank (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143160/">https://patchwork.freedesktop.org/series/143160/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15984 -&gt; Patchwork_143160v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143160v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-adls-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13445">i915#13445</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-twl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13173">i915#13173</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v7/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15984 -&gt; Patchwork_143160v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15984: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8199: 8df1895672949617992cddbc33c5d683865879e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143160v7: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1717765944002904449==--
