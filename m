Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A284233DB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 00:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DCF56EC90;
	Tue,  5 Oct 2021 22:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35EE76EC8D;
 Tue,  5 Oct 2021 22:49:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E021AA917;
 Tue,  5 Oct 2021 22:49:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1823370356830492106=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 22:49:04 -0000
Message-ID: <163347414415.19282.18446731645706554832@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005174711.55618-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211005174711.55618-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Connect_engine_busyness_stats_from_GuC_to_pmu_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============1823370356830492106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Connect engine busyness stats from GuC to pmu (rev2)
URL   : https://patchwork.freedesktop.org/series/95043/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10685 -> Patchwork_21254
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21254 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21254, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21254:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10685/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_21254 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#3928])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (41 -> 1)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21254 prevented too many machines from booting.

  Missing    (40): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-cfl-8700k fi-ehl-2 bat-jsl-1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc bat-adlp-4 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 


Build changes
-------------

  * Linux: CI_DRM_10685 -> Patchwork_21254

  CI-20190529: 20190529
  CI_DRM_10685: 36c3656c997b07f326d6b967efb1b75e01713773 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6232: effad6af5678be711a2c3e58e182319de784de54 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21254: 6044dafc24be45f573885716d0b7ac1b78133e3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6044dafc24be drm/i915/pmu: Connect engine busyness stats from GuC to pmu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/index.html

--===============1823370356830492106==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Connect engine busyness stats from GuC to pmu (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95043/">https://patchwork.freedesktop.org/series/95043/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10685 -&gt; Patchwork_21254</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21254 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21254, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21254:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10685/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21254 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21254/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 1)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21254 prevented too many machines from booting.</p>
<p>Missing    (40): fi-kbl-soraka fi-rkl-11600 bat-dg1-6 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-tgl-u2 fi-glk-dsi fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-cfl-8700k fi-ehl-2 bat-jsl-1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc bat-adlp-4 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10685 -&gt; Patchwork_21254</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10685: 36c3656c997b07f326d6b967efb1b75e01713773 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6232: effad6af5678be711a2c3e58e182319de784de54 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21254: 6044dafc24be45f573885716d0b7ac1b78133e3f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6044dafc24be drm/i915/pmu: Connect engine busyness stats from GuC to pmu</p>

</body>
</html>

--===============1823370356830492106==--
