Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCD3938C16
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 11:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4753110E48E;
	Mon, 22 Jul 2024 09:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FD610E48E;
 Mon, 22 Jul 2024 09:31:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7049325860248037268=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Use_VRR_timing_generator_fo?=
 =?utf-8?q?r_fixed_refresh_rate_modes_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 09:31:23 -0000
Message-ID: <172164068385.327121.2124681822037704188@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
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

--===============7049325860248037268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use VRR timing generator for fixed refresh rate modes (rev4)
URL   : https://patchwork.freedesktop.org/series/134383/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15107 -> Patchwork_134383v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_134383v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_134383v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134383v4:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15107/bat-arlh-2/igt@vgem_basic@unload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/bat-arlh-2/igt@vgem_basic@unload.html

  


Build changes
-------------

  * Linux: CI_DRM_15107 -> Patchwork_134383v4

  CI-20190529: 20190529
  CI_DRM_15107: 867eb2599d00e03d12a2a49b223cf37280d7ee2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7933: 7933
  Patchwork_134383v4: 867eb2599d00e03d12a2a49b223cf37280d7ee2e @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/index.html

--===============7049325860248037268==
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
<tr><td><b>Series:</b></td><td>Use VRR timing generator for fixed refresh rate modes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134383/">https://patchwork.freedesktop.org/series/134383/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15107 -&gt; Patchwork_134383v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_134383v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_134383v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134383v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15107/bat-arlh-2/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v4/bat-arlh-2/igt@vgem_basic@unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15107 -&gt; Patchwork_134383v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15107: 867eb2599d00e03d12a2a49b223cf37280d7ee2e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7933: 7933<br />
  Patchwork_134383v4: 867eb2599d00e03d12a2a49b223cf37280d7ee2e @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7049325860248037268==--
