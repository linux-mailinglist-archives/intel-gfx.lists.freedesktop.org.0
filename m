Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B48127AE180
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 00:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FEA10E333;
	Mon, 25 Sep 2023 22:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D9A710E332;
 Mon, 25 Sep 2023 22:05:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26EEFA0BA8;
 Mon, 25 Sep 2023 22:05:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1654053480281099198=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 25 Sep 2023 22:05:29 -0000
Message-ID: <169567952912.21532.5003417888792040832@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230922105645.3991066-1-jani.nikula@intel.com>
In-Reply-To: <20230922105645.3991066-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?b?L2k5MTUvZHA6IHJlZmFjdG9yIGF1eF9jaF9uYW1lKCkgKHJldjMp?=
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

--===============1654053480281099198==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: refactor aux_ch_name() (rev3)
URL   : https://patchwork.freedesktop.org/series/124107/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13677 -> Patchwork_124107v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/index.html

Participating hosts (40 -> 28)
------------------------------

  Missing    (12): fi-kbl-soraka fi-skl-guc bat-adlm-1 bat-dg2-9 fi-tgl-1115g4 fi-snb-2520m bat-adlp-6 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-kbl-8809g bat-dg2-13 

Known issues
------------

  Here are the changes found in Patchwork_124107v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][1] -> [ABORT][2] ([i915#9262])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][3] -> [FAIL][4] ([IGT#3])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262


Build changes
-------------

  * Linux: CI_DRM_13677 -> Patchwork_124107v3

  CI-20190529: 20190529
  CI_DRM_13677: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7502: ac56ba97248b33668fbe771882360bd7b274cc9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124107v3: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

62c9e1318cc1 drm/i915/dp: refactor aux_ch_name()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/index.html

--===============1654053480281099198==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: refactor aux_ch_name() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124107/">https://patchwork.freedesktop.org/series/124107/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13677 -&gt; Patchwork_124107v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/index.html</p>
<h2>Participating hosts (40 -&gt; 28)</h2>
<p>Missing    (12): fi-kbl-soraka fi-skl-guc bat-adlm-1 bat-dg2-9 fi-tgl-1115g4 fi-snb-2520m bat-adlp-6 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-kbl-8809g bat-dg2-13 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124107v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124107v3/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13677 -&gt; Patchwork_124107v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13677: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7502: ac56ba97248b33668fbe771882360bd7b274cc9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124107v3: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>62c9e1318cc1 drm/i915/dp: refactor aux_ch_name()</p>

</body>
</html>

--===============1654053480281099198==--
