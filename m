Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED1417E62
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Sep 2021 01:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837B26EE9B;
	Fri, 24 Sep 2021 23:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89B986EE9B;
 Fri, 24 Sep 2021 23:45:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 812D5AA0EB;
 Fri, 24 Sep 2021 23:45:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3867173805530250372=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 23:45:22 -0000
Message-ID: <163252712250.20559.4031119279819628125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924223451.71316-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210924223451.71316-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Connect_engine_busyness_stats_from_GuC_to_pmu?=
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

--===============3867173805530250372==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Connect engine busyness stats from GuC to pmu
URL   : https://patchwork.freedesktop.org/series/95043/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10643 -> Patchwork_21158
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21158 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21158, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21158:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10643/fi-rkl-guc/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/fi-rkl-guc/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_21158 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#1602])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/fi-rkl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136


Participating hosts (40 -> 34)
------------------------------

  Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10643 -> Patchwork_21158

  CI-20190529: 20190529
  CI_DRM_10643: 6b2cb2c1f403ce807a7877c62cf1a8dcb5aef77a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21158: 341d088143ed862d96ea278c4824eec48c7b0516 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

341d088143ed drm/i915/pmu: Connect engine busyness stats from GuC to pmu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/index.html

--===============3867173805530250372==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Connect engine busyness stats from GuC to pmu</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95043/">https://patchwork.freedesktop.org/series/95043/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10643 -&gt; Patchwork_21158</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21158 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21158, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21158:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10643/fi-rkl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/fi-rkl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21158 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21158/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10643 -&gt; Patchwork_21158</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10643: 6b2cb2c1f403ce807a7877c62cf1a8dcb5aef77a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6218: 8d4169d9543d8e5c01f0c746f603801a4d65ead0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21158: 341d088143ed862d96ea278c4824eec48c7b0516 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>341d088143ed drm/i915/pmu: Connect engine busyness stats from GuC to pmu</p>

</body>
</html>

--===============3867173805530250372==--
