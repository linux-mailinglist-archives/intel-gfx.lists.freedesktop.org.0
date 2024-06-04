Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575DD8FB9C2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 19:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9379610E296;
	Tue,  4 Jun 2024 17:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70AA10E296;
 Tue,  4 Jun 2024 17:02:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4954933727719280204=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5Bv1?=
 =?utf-8?q?=2C1/1=5D_treewide=3A_Align_match=5Fstring=28=29_with_sysfs=5Fmat?=
 =?utf-8?q?ch=5Fstring=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Jun 2024 17:02:05 -0000
Message-ID: <171752052581.2263376.4975300100781101661@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
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

--===============4954933727719280204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v1,1/1] treewide: Align match_string() with sysfs_match_string()
URL   : https://patchwork.freedesktop.org/series/134452/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14873 -> Patchwork_134452v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_134452v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_134452v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/index.html

Participating hosts (40 -> 33)
------------------------------

  Additional (1): bat-dg2-13 
  Missing    (8): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 bat-dg2-14 bat-dg2-11 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134452v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14873/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_134452v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-13:         NOTRUN -> [FAIL][3] ([i915#11166])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][4] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  
  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#11166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11166
  [i915#4550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550


Build changes
-------------

  * Linux: CI_DRM_14873 -> Patchwork_134452v1

  CI-20190529: 20190529
  CI_DRM_14873: d3a2b947894e0ab1825478d04fe08585e153f142 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7877: 23b8b8a0168e1b5141e29346be1f83fdbed31037 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134452v1: d3a2b947894e0ab1825478d04fe08585e153f142 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/index.html

--===============4954933727719280204==
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
<tr><td><b>Series:</b></td><td>series starting with [v1,1/1] treewide: Align match_string() with sysfs_match_string()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134452/">https://patchwork.freedesktop.org/series/134452/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14873 -&gt; Patchwork_134452v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_134452v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_134452v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/index.html</p>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Additional (1): bat-dg2-13 <br />
  Missing    (8): bat-dg1-7 bat-kbl-2 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 bat-dg2-14 bat-dg2-11 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134452v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14873/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134452v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11166">i915#11166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134452v1/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14873 -&gt; Patchwork_134452v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14873: d3a2b947894e0ab1825478d04fe08585e153f142 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7877: 23b8b8a0168e1b5141e29346be1f83fdbed31037 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134452v1: d3a2b947894e0ab1825478d04fe08585e153f142 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4954933727719280204==--
