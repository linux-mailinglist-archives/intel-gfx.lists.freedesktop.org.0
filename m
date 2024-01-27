Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1A183EEF6
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 18:21:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C377F10F2F0;
	Sat, 27 Jan 2024 17:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CC310F2EA;
 Sat, 27 Jan 2024 17:20:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2154824262018983618=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/hwmon=3A_Fix_abi_doc_wa?=
 =?utf-8?q?rnings?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Sat, 27 Jan 2024 17:20:30 -0000
Message-ID: <170637603098.774015.12765784180287173323@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
In-Reply-To: <20240127165040.2348009-1-badal.nilawar@intel.com>
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

--===============2154824262018983618==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/hwmon: Fix abi doc warnings
URL   : https://patchwork.freedesktop.org/series/129237/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14187 -> Patchwork_129237v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/index.html

Participating hosts (35 -> 32)
------------------------------

  Missing    (3): bat-rpls-2 bat-adlm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129237v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][1] ([fdo#109271]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-nick:        [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adls-6}:       [DMESG-WARN][5] ([i915#5591]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_14187 -> Patchwork_129237v1

  CI-20190529: 20190529
  CI_DRM_14187: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7694: 814cd9883b94be1c61d830b2c1279dc2265476bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129237v1: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2b136f7af3be drm/hwmon: Fix abi doc warnings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/index.html

--===============2154824262018983618==
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
<tr><td><b>Series:</b></td><td>drm/hwmon: Fix abi doc warnings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129237/">https://patchwork.freedesktop.org/series/129237/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14187 -&gt; Patchwork_129237v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Missing    (3): bat-rpls-2 bat-adlm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129237v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14187/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129237v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14187 -&gt; Patchwork_129237v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14187: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7694: 814cd9883b94be1c61d830b2c1279dc2265476bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129237v1: 0f1b42b9d395bd4097b2846230a13869dc638216 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2b136f7af3be drm/hwmon: Fix abi doc warnings</p>

</body>
</html>

--===============2154824262018983618==--
