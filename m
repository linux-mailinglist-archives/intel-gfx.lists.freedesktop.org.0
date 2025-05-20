Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C67ABD9CC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 15:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BFF10E513;
	Tue, 20 May 2025 13:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54D410E513;
 Tue, 20 May 2025 13:43:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8659056549730880642=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_small_fixes_f?=
 =?utf-8?q?rom_code_reviews_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 May 2025 13:43:22 -0000
Message-ID: <174774860266.4551.1678415905595853258@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
In-Reply-To: <20250520082917.1302665-1-luciano.coelho@intel.com>
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

--===============8659056549730880642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: small fixes from code reviews (rev2)
URL   : https://patchwork.freedesktop.org/series/149236/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16571 -> Patchwork_149236v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_149236v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [DMESG-WARN][2] ([i915#13494])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061] / [i915#14243])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - bat-arlh-2:         [PASS][5] -> [DMESG-FAIL][6] ([i915#14243])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [DMESG-FAIL][9] ([i915#12061]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg2-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@perf:
    - bat-dg1-6:          [DMESG-FAIL][11] -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg1-6/igt@i915_selftest@live@perf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg1-6/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243


Build changes
-------------

  * Linux: CI_DRM_16571 -> Patchwork_149236v2

  CI-20190529: 20190529
  CI_DRM_16571: 943adcb1bc226246125ec1d18a387b4295e73703 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8369: 8369
  Patchwork_149236v2: 943adcb1bc226246125ec1d18a387b4295e73703 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html

--===============8659056549730880642==
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
<tr><td><b>Series:</b></td><td>drm/i915: small fixes from code reviews (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149236/">https://patchwork.freedesktop.org/series/149236/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16571 -&gt; Patchwork_149236v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149236v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg1-6/igt@i915_selftest@live@perf.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg1-6/igt@i915_selftest@live@perf.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16571 -&gt; Patchwork_149236v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16571: 943adcb1bc226246125ec1d18a387b4295e73703 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8369: 8369<br />
  Patchwork_149236v2: 943adcb1bc226246125ec1d18a387b4295e73703 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8659056549730880642==--
