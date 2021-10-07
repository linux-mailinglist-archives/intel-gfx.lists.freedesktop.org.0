Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983864260CC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 01:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C9D6E85C;
	Thu,  7 Oct 2021 23:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 628FA6E04E;
 Thu,  7 Oct 2021 23:57:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 534FAA47EB;
 Thu,  7 Oct 2021 23:57:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6677003685813040431=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 23:57:03 -0000
Message-ID: <163365102330.5187.1189326857815352294@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007225547.30997-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211007225547.30997-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Add_a_name_to_the_e?=
 =?utf-8?q?xeclists_stats?=
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

--===============6677003685813040431==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats
URL   : https://patchwork.freedesktop.org/series/95586/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10696 -> Patchwork_21285
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21285 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21285, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21285:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_21285 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#3928])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (44 -> 1)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21285 prevented too many machines from booting.

  Missing    (43): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 bat-jsl-1 fi-hsw-gt1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 


Build changes
-------------

  * Linux: CI_DRM_10696 -> Patchwork_21285

  CI-20190529: 20190529
  CI_DRM_10696: 58a206ae5bf2f81a11e4408d10a3e1b445d6eebb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6237: 910b5caac6625d2bf0b6c1dde502451431bd0159 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21285: 03bcbfdbe47d5b10a8eb3440cbeee39bd2efd3e8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03bcbfdbe47d drm/i915/pmu: Connect engine busyness stats from GuC to pmu
ffc67cf0919d drm/i915/pmu: Add a name to the execlists stats

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/index.html

--===============6677003685813040431==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95586/">https://patchwork.freedesktop.org/series/95586/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10696 -&gt; Patchwork_21285</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21285 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21285, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21285:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10696/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21285 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21285/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 1)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21285 prevented too many machines from booting.</p>
<p>Missing    (43): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 bat-jsl-1 fi-hsw-gt1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10696 -&gt; Patchwork_21285</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10696: 58a206ae5bf2f81a11e4408d10a3e1b445d6eebb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6237: 910b5caac6625d2bf0b6c1dde502451431bd0159 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21285: 03bcbfdbe47d5b10a8eb3440cbeee39bd2efd3e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>03bcbfdbe47d drm/i915/pmu: Connect engine busyness stats from GuC to pmu<br />
ffc67cf0919d drm/i915/pmu: Add a name to the execlists stats</p>

</body>
</html>

--===============6677003685813040431==--
