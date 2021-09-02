Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3693FF4A2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 22:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C6886E811;
	Thu,  2 Sep 2021 20:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 734A36E817;
 Thu,  2 Sep 2021 20:10:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F95FA00CC;
 Thu,  2 Sep 2021 20:10:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2609054584962931528=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 20:10:40 -0000
Message-ID: <163061344045.29441.16862443791202460076@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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

--===============2609054584962931528==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Initialize unused MOCS entries to L3_WB
URL   : https://patchwork.freedesktop.org/series/94295/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10548 -> Patchwork_20946
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20946 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20946, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20946:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_20946 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#3928])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (48 -> 39)
------------------------------

  Missing    (9): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bsw-kefka fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10548 -> Patchwork_20946

  CI-20190529: 20190529
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20946: aac515f419092c6c22c426c25bc89ac4eb63b800 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aac515f41909 drm/i915/selftest: Remove Renderer class check for l3cc table read
8f930253133f drm/i915/gt: Initialize L3CC table in mocs init
cbe983e4de1e drm/i915/gt: Initialize unused MOCS entries with device specific values
ee72b0d50d16 drm/i915/gt: Set BLIT_CCTL reg to un-cached
ae6608c212cd drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
677e40246b6e drm/i915/gt: Add support of mocs propagation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/index.html

--===============2609054584962931528==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Initialize unused MOCS entries to L3_WB</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94295/">https://patchwork.freedesktop.org/series/94295/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10548 -&gt; Patchwork_20946</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20946 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20946, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20946:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20946 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20946/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Missing    (9): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bsw-kefka fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10548 -&gt; Patchwork_20946</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20946: aac515f419092c6c22c426c25bc89ac4eb63b800 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aac515f41909 drm/i915/selftest: Remove Renderer class check for l3cc table read<br />
8f930253133f drm/i915/gt: Initialize L3CC table in mocs init<br />
cbe983e4de1e drm/i915/gt: Initialize unused MOCS entries with device specific values<br />
ee72b0d50d16 drm/i915/gt: Set BLIT_CCTL reg to un-cached<br />
ae6608c212cd drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward<br />
677e40246b6e drm/i915/gt: Add support of mocs propagation</p>

</body>
</html>

--===============2609054584962931528==--
