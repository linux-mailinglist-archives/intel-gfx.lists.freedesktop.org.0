Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E484125D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 19:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E83510EA72;
	Mon, 29 Jan 2024 18:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D1A10EA72;
 Mon, 29 Jan 2024 18:42:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7314196504481411012=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Add_jitter_W?=
 =?utf-8?q?As_for_MST/FEC/DSC_links?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 29 Jan 2024 18:42:39 -0000
Message-ID: <170655375914.806672.1319438269388720488@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240129175533.904590-1-imre.deak@intel.com>
In-Reply-To: <20240129175533.904590-1-imre.deak@intel.com>
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

--===============7314196504481411012==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Add jitter WAs for MST/FEC/DSC links
URL   : https://patchwork.freedesktop.org/series/129277/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14192 -> Patchwork_129277v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129277v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_hangman@error-state-basic:
    - bat-mtlp-6:         [PASS][1] -> [ABORT][2] ([i915#9414])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-mtlp-6/igt@i915_hangman@error-state-basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][3] ([i915#7911]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adls-6}:       [DMESG-WARN][5] ([i915#5591]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_14192 -> Patchwork_129277v1

  CI-20190529: 20190529
  CI_DRM_14192: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7698: af750f5e7eaad98d40d8c924eb5f05e99d3c668b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129277v1: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

684e00785693 drm/i915/mtl: Add DP FEC BS jitter WA
4710e5a9e439 drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA
f5853ef36adf drm/i915/adlp+: Add DSC early pixel count scaling WA (Wa_1409098942)
58b3ea4c8782 drm/i915/adlp: Add DP MST DPT/DPTP alignment WA (Wa_14014143976)
a8501371285d drm/i915/adlp: Add MST short HBlank WA (Wa_14014143976)
b689adcd3028 drm/i915/adlp: Add MST FEC BS jitter WA (Wa_14013163432)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html

--===============7314196504481411012==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Add jitter WAs for MST/FEC/DSC links</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129277/">https://patchwork.freedesktop.org/series/129277/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14192 -&gt; Patchwork_129277v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129277v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-mtlp-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-mtlp-6/igt@i915_hangman@error-state-basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14192 -&gt; Patchwork_129277v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14192: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7698: af750f5e7eaad98d40d8c924eb5f05e99d3c668b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129277v1: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>684e00785693 drm/i915/mtl: Add DP FEC BS jitter WA<br />
4710e5a9e439 drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA<br />
f5853ef36adf drm/i915/adlp+: Add DSC early pixel count scaling WA (Wa_1409098942)<br />
58b3ea4c8782 drm/i915/adlp: Add DP MST DPT/DPTP alignment WA (Wa_14014143976)<br />
a8501371285d drm/i915/adlp: Add MST short HBlank WA (Wa_14014143976)<br />
b689adcd3028 drm/i915/adlp: Add MST FEC BS jitter WA (Wa_14013163432)</p>

</body>
</html>

--===============7314196504481411012==--
