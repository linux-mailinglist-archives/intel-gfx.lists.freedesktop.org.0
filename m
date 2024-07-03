Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 827FA925DA8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 13:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BBA10E22F;
	Wed,  3 Jul 2024 11:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A8F10E22F;
 Wed,  3 Jul 2024 11:30:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1338167948270932056=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_i915/perf=3A_Remove_code_to?=
 =?utf-8?q?_update_PWR=5FCLK=5FSTATE_for_gen12_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Jul 2024 11:30:30 -0000
Message-ID: <172000623088.24495.11662514878981434383@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240629005643.3050678-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20240629005643.3050678-1-umesh.nerlige.ramappa@intel.com>
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

--===============1338167948270932056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/perf: Remove code to update PWR_CLK_STATE for gen12 (rev2)
URL   : https://patchwork.freedesktop.org/series/135549/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15022 -> Patchwork_135549v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_135549v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_135549v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-kbl-2 fi-cfl-8109u fi-snb-2520m bat-jsl-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135549v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_135549v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][2] ([i915#11359]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15022/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html

  
  [i915#11359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359


Build changes
-------------

  * Linux: CI_DRM_15022 -> Patchwork_135549v2

  CI-20190529: 20190529
  CI_DRM_15022: 5ca7296d32d5ea4fd002b6adfe05ffda6d654993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7910: f61ff748b6f615e43668ddd4fee67d2ad2f52e75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135549v2: 5ca7296d32d5ea4fd002b6adfe05ffda6d654993 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/index.html

--===============1338167948270932056==
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
<tr><td><b>Series:</b></td><td>i915/perf: Remove code to update PWR_CLK_STATE for gen12 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135549/">https://patchwork.freedesktop.org/series/135549/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15022 -&gt; Patchwork_135549v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_135549v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_135549v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-kbl-2 fi-cfl-8109u fi-snb-2520m bat-jsl-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135549v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135549v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15022/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359">i915#11359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15022 -&gt; Patchwork_135549v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15022: 5ca7296d32d5ea4fd002b6adfe05ffda6d654993 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7910: f61ff748b6f615e43668ddd4fee67d2ad2f52e75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135549v2: 5ca7296d32d5ea4fd002b6adfe05ffda6d654993 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1338167948270932056==--
