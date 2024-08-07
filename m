Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB2594A615
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB0C10E49F;
	Wed,  7 Aug 2024 10:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B0C10E49F;
 Wed,  7 Aug 2024 10:46:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4881342029225535137=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Mark_the_GT_?=
 =?utf-8?q?as_dead_when_mmio_is_unreliable?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2024 10:46:20 -0000
Message-ID: <172302758041.545083.17842167850525217609@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240807091014.469992-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240807091014.469992-1-andi.shyti@linux.intel.com>
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

--===============4881342029225535137==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Mark the GT as dead when mmio is unreliable
URL   : https://patchwork.freedesktop.org/series/136975/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15194 -> Patchwork_136975v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (3): bat-arls-2 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_136975v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-arls-1:         [PASS][3] -> [DMESG-WARN][4] ([i915#10341])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-8:          [PASS][5] -> [DMESG-FAIL][6] ([i915#9500])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-1:         [PASS][7] -> [DMESG-FAIL][8] ([i915#10262]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-6:         [PASS][9] -> [INCOMPLETE][10] ([i915#9413])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][11] +30 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@uncore:
    - bat-arlh-2:         [INCOMPLETE][12] ([i915#11785]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arlh-2/igt@i915_selftest@live@uncore.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arlh-2/igt@i915_selftest@live@uncore.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11785
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15194 -> Patchwork_136975v1

  CI-20190529: 20190529
  CI_DRM_15194: 5954d143b185800b3909f8583a715f896383ca15 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7960: 7960
  Patchwork_136975v1: 5954d143b185800b3909f8583a715f896383ca15 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/index.html

--===============4881342029225535137==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Mark the GT as dead when mmio is unreliable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136975/">https://patchwork.freedesktop.org/series/136975/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15194 -&gt; Patchwork_136975v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (3): bat-arls-2 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136975v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@uncore:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15194/bat-arlh-2/igt@i915_selftest@live@uncore.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11785">i915#11785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136975v1/bat-arlh-2/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15194 -&gt; Patchwork_136975v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15194: 5954d143b185800b3909f8583a715f896383ca15 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7960: 7960<br />
  Patchwork_136975v1: 5954d143b185800b3909f8583a715f896383ca15 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4881342029225535137==--
