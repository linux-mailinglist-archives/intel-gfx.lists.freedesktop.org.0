Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DAA959082
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ADC010E512;
	Tue, 20 Aug 2024 22:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2CB10E50F;
 Tue, 20 Aug 2024 22:32:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7630961276826650915=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drivers=3Agt=3ASwitch_to_us?=
 =?utf-8?q?e_kmemdup=5Farray=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yu Jiaoliang" <yujiaoliang@vivo.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2024 22:32:04 -0000
Message-ID: <172419312456.716756.17938980129620525992@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240820074505.2728118-1-yujiaoliang@vivo.com>
In-Reply-To: <20240820074505.2728118-1-yujiaoliang@vivo.com>
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

--===============7630961276826650915==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drivers:gt:Switch to use kmemdup_array()
URL   : https://patchwork.freedesktop.org/series/137539/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15267 -> Patchwork_137539v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137539v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137539v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/index.html

Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-arls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137539v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_tlb:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-arlh-2/igt@i915_selftest@live@gt_tlb.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/bat-arlh-2/igt@i915_selftest@live@gt_tlb.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@coherency:
    - {bat-arlh-3}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-arlh-3/igt@i915_selftest@live@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/bat-arlh-3/igt@i915_selftest@live@coherency.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_15267 -> Patchwork_137539v1

  CI-20190529: 20190529
  CI_DRM_15267: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137539v1: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/index.html

--===============7630961276826650915==
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
<tr><td><b>Series:</b></td><td>drivers:gt:Switch to use kmemdup_array()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137539/">https://patchwork.freedesktop.org/series/137539/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15267 -&gt; Patchwork_137539v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137539v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137539v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/index.html</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-arls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137539v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_tlb:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-arlh-2/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/bat-arlh-2/igt@i915_selftest@live@gt_tlb.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@coherency:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-arlh-3/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137539v1/bat-arlh-3/igt@i915_selftest@live@coherency.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15267 -&gt; Patchwork_137539v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15267: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137539v1: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7630961276826650915==--
