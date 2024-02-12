Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C202B850D6E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 06:50:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E1610EA6B;
	Mon, 12 Feb 2024 05:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FB510EA6A;
 Mon, 12 Feb 2024 05:50:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0746491178285453638=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/selftests=3A_Incre?=
 =?utf-8?q?asing_the_sleep_time_for_live=5Frc6=5Fmanual_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sk Anirban" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Feb 2024 05:50:25 -0000
Message-ID: <170771702528.1181743.16849860625298348887@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240212050738.1162198-1-sk.anirban@intel.com>
In-Reply-To: <20240212050738.1162198-1-sk.anirban@intel.com>
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

--===============0746491178285453638==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Increasing the sleep time for live_rc6_manual (rev4)
URL   : https://patchwork.freedesktop.org/series/129664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14248 -> Patchwork_129664v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/index.html

Participating hosts (36 -> 34)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (3): bat-mtlp-8 bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129664v4 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         NOTRUN -> [FAIL][1] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/fi-apl-guc/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-adln-1:         [DMESG-FAIL][2] ([i915#10010]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10010]: https://gitlab.freedesktop.org/drm/intel/issues/10010
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14248 -> Patchwork_129664v4

  CI-20190529: 20190529
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129664v4: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

38d131f87e5d drm/i915/selftests: Increasing the sleep time for live_rc6_manual

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/index.html

--===============0746491178285453638==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Increasing the sleep time for live_rc6_manual (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129664/">https://patchwork.freedesktop.org/series/129664/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14248 -&gt; Patchwork_129664v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (3): bat-mtlp-8 bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129664v4 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10010">i915#10010</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v4/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14248 -&gt; Patchwork_129664v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129664v4: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>38d131f87e5d drm/i915/selftests: Increasing the sleep time for live_rc6_manual</p>

</body>
</html>

--===============0746491178285453638==--
