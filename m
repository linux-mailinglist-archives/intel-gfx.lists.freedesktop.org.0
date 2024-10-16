Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F3A99FD5C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 02:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0224810E637;
	Wed, 16 Oct 2024 00:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4616010E643;
 Wed, 16 Oct 2024 00:48:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5102540950944800802=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5Bv5?=
 =?utf-8?q?=2C1/1=5D_drm/i915/pxp=3A_Add_missing_tag_for_Wa=5F14019159160?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2024 00:48:06 -0000
Message-ID: <172903968628.1271149.4084171212942198773@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241016001658.2671225-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20241016001658.2671225-1-alan.previn.teres.alexis@intel.com>
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

--===============5102540950944800802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/1] drm/i915/pxp: Add missing tag for Wa_14019159160
URL   : https://patchwork.freedesktop.org/series/140030/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15538 -> Patchwork_140030v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140030v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140030v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140030v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium_edid@dp-edid-read:
    - bat-dg2-13:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_140030v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][2] -> [ABORT][3] ([i915#12133]) +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-8/igt@i915_selftest@live.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-dg2-11:         [PASS][4] -> [ABORT][5] ([i915#12133])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-11/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-dg2-11:         [PASS][6] -> [ABORT][7] ([i915#12305])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-11/igt@i915_selftest@live@active.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-11/igt@i915_selftest@live@active.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [DMESG-WARN][8] ([i915#12253]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-adlp-6/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-WARN][10] ([i915#10341]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-mtlp-8/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-8:         [DMESG-WARN][12] ([i915#11349]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305


Build changes
-------------

  * Linux: CI_DRM_15538 -> Patchwork_140030v1

  CI-20190529: 20190529
  CI_DRM_15538: 01c7b2c084e5c84313f382734c10945b9aa49823 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8073: afc7d63f0733598ecf3d3b48a2edd23bf7609a09 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140030v1: 01c7b2c084e5c84313f382734c10945b9aa49823 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/index.html

--===============5102540950944800802==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/1] drm/i915/pxp: Add missing tag for Wa_14019159160</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140030/">https://patchwork.freedesktop.org/series/140030/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15538 -&gt; Patchwork_140030v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140030v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140030v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140030v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium_edid@dp-edid-read:<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140030v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-dg2-11/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-dg2-11/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305">i915#12305</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-adlp-6/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15538/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140030v1/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15538 -&gt; Patchwork_140030v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15538: 01c7b2c084e5c84313f382734c10945b9aa49823 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8073: afc7d63f0733598ecf3d3b48a2edd23bf7609a09 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140030v1: 01c7b2c084e5c84313f382734c10945b9aa49823 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5102540950944800802==--
