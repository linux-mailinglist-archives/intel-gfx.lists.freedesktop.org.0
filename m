Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65C88A4D45
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 13:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFB411246F;
	Mon, 15 Apr 2024 11:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2297610F9F8;
 Mon, 15 Apr 2024 11:05:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6176601550644200522=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/vma=3A_Fix_UAF_on_?=
 =?utf-8?q?reopen_vs_destroy_race?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 11:05:36 -0000
Message-ID: <171317913614.1404431.6256943870075230982@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412101840.329836-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240412101840.329836-2-janusz.krzysztofik@linux.intel.com>
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

--===============6176601550644200522==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vma: Fix UAF on reopen vs destroy race
URL   : https://patchwork.freedesktop.org/series/132360/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14572 -> Patchwork_132360v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132360v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132360v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/index.html

Participating hosts (40 -> 31)
------------------------------

  Missing    (9): fi-kbl-7567u fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-kbl-8809g fi-elk-e7500 bat-dg2-11 bat-arls-2 bat-arls-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132360v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-14:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html

  


Build changes
-------------

  * Linux: CI_DRM_14572 -> Patchwork_132360v1

  CI-20190529: 20190529
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132360v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2ef499d4d144 drm/i915/vma: Fix UAF on reopen vs destroy race

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/index.html

--===============6176601550644200522==
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
<tr><td><b>Series:</b></td><td>drm/i915/vma: Fix UAF on reopen vs destroy race</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132360/">https://patchwork.freedesktop.org/series/132360/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14572 -&gt; Patchwork_132360v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132360v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132360v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/index.html</p>
<h2>Participating hosts (40 -&gt; 31)</h2>
<p>Missing    (9): fi-kbl-7567u fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-kbl-8809g fi-elk-e7500 bat-dg2-11 bat-arls-2 bat-arls-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132360v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v1/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14572 -&gt; Patchwork_132360v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132360v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2ef499d4d144 drm/i915/vma: Fix UAF on reopen vs destroy race</p>

</body>
</html>

--===============6176601550644200522==--
