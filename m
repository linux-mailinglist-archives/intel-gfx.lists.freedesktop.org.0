Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B2D96A631
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 20:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8870510E330;
	Tue,  3 Sep 2024 18:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB96910E31F;
 Tue,  3 Sep 2024 18:09:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1944567767651042945=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Use_memdup=5Fus?=
 =?utf-8?q?er=28=29_helper?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Sep 2024 18:09:09 -0000
Message-ID: <172538694995.920385.2057863144900807872@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240831102648.92714-1-ruanjinjie@huawei.com>
In-Reply-To: <20240831102648.92714-1-ruanjinjie@huawei.com>
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

--===============1944567767651042945==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use memdup_user() helper
URL   : https://patchwork.freedesktop.org/series/138143/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15353 -> Patchwork_138143v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/index.html

Participating hosts (41 -> 35)
------------------------------

  Missing    (6): bat-dg1-7 fi-snb-2520m fi-cfl-8109u fi-kbl-8809g bat-arls-1 bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_138143v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_parallel@engines@basic:
    - {bat-arlh-3}:       [INCOMPLETE][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-arlh-3/igt@gem_exec_parallel@engines@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-arlh-3/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][3] ([i915#9500]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [ABORT][5] ([i915#12062]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#12062]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12062
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15353 -> Patchwork_138143v1

  CI-20190529: 20190529
  CI_DRM_15353: 40f1f3d2913934d6a1446bbfeaf6a2fbaffe33a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8001: d3a77fc98e89cc94b03be2b0903d44f83480b8a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138143v1: 40f1f3d2913934d6a1446bbfeaf6a2fbaffe33a2 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/index.html

--===============1944567767651042945==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use memdup_user() helper</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138143/">https://patchwork.freedesktop.org/series/138143/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15353 -&gt; Patchwork_138143v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/index.html</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): bat-dg1-7 fi-snb-2520m fi-cfl-8109u fi-kbl-8809g bat-arls-1 bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138143v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-arlh-3/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-arlh-3/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15353/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12062">i915#12062</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138143v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15353 -&gt; Patchwork_138143v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15353: 40f1f3d2913934d6a1446bbfeaf6a2fbaffe33a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8001: d3a77fc98e89cc94b03be2b0903d44f83480b8a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138143v1: 40f1f3d2913934d6a1446bbfeaf6a2fbaffe33a2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1944567767651042945==--
