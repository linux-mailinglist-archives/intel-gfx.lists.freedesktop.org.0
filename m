Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E51966A49
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 22:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779EC10E2AE;
	Fri, 30 Aug 2024 20:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F2310E2AE;
 Fri, 30 Aug 2024 20:17:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9149300947263999522=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_drm/xe=3A_Add_missing_runtime_reference_to_wedged_upon_gt=5Fr?=
 =?utf-8?q?eset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 20:17:12 -0000
Message-ID: <172504903262.855874.15971046001392847242@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240830183507.298351-1-rodrigo.vivi@intel.com>
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

--===============9149300947263999522==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/xe: Add missing runtime reference to wedged upon gt_reset
URL   : https://patchwork.freedesktop.org/series/138033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15337 -> Patchwork_138033v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/index.html

Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-kbl-7567u bat-arls-2 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_138033v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2] ([i915#9500])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [DMESG-WARN][3] ([i915#11349]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@fbdev@read:
    - bat-arls-1:         [DMESG-WARN][5] ([i915#12102]) -> [DMESG-FAIL][6] ([i915#12102])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-arls-1/igt@fbdev@read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-arls-1/igt@fbdev@read.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15337 -> Patchwork_138033v1

  CI-20190529: 20190529
  CI_DRM_15337: 22d8aff01ac9e4c895f20b0d825c9c2cbcc1692d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8000: fba44baafa5d79b6eed52fa24234781e8e47beb8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138033v1: 22d8aff01ac9e4c895f20b0d825c9c2cbcc1692d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/index.html

--===============9149300947263999522==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/xe: Add missing runtime reference to wedged upon gt_reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138033/">https://patchwork.freedesktop.org/series/138033/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15337 -&gt; Patchwork_138033v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-kbl-7567u bat-arls-2 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138033v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15337/bat-arls-1/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138033v1/bat-arls-1/igt@fbdev@read.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15337 -&gt; Patchwork_138033v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15337: 22d8aff01ac9e4c895f20b0d825c9c2cbcc1692d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8000: fba44baafa5d79b6eed52fa24234781e8e47beb8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138033v1: 22d8aff01ac9e4c895f20b0d825c9c2cbcc1692d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9149300947263999522==--
