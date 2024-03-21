Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD74886293
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 22:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5D9112164;
	Thu, 21 Mar 2024 21:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8838B112164;
 Thu, 21 Mar 2024 21:35:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2915380345973868761=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Report_full_?=
 =?utf-8?q?vm_address_range_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Mar 2024 21:35:50 -0000
Message-ID: <171105695055.941104.5147544696208366493@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240321151726.207866-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240321151726.207866-1-andi.shyti@linux.intel.com>
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

--===============2915380345973868761==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Report full vm address range (rev3)
URL   : https://patchwork.freedesktop.org/series/131095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14464 -> Patchwork_131095v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131095v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131095v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): bat-dg1-7 bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131095v3:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all-engines:
    - fi-pnv-d510:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-pnv-d510/igt@gem_busy@busy@all-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-pnv-d510/igt@gem_busy@busy@all-engines.html
    - fi-ivb-3770:        [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-ivb-3770/igt@gem_busy@busy@all-engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-ivb-3770/igt@gem_busy@busy@all-engines.html
    - fi-elk-e7500:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-elk-e7500/igt@gem_busy@busy@all-engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-elk-e7500/igt@gem_busy@busy@all-engines.html
    - fi-ilk-650:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-ilk-650/igt@gem_busy@busy@all-engines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-ilk-650/igt@gem_busy@busy@all-engines.html

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-11:         [PASS][9] -> [FAIL][10] +3 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-11/igt@gem_softpin@allocator-basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-11/igt@gem_softpin@allocator-basic.html
    - bat-dg2-14:         [PASS][11] -> [FAIL][12] +3 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - bat-atsm-1:         [PASS][13] -> [FAIL][14] +2 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-9:          [PASS][15] -> [FAIL][16] +2 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-8:          [PASS][17] -> [FAIL][18] +2 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html

  
Known issues
------------

  Here are the changes found in Patchwork_131095v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][19] -> [FAIL][20] ([i915#8293])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-apl-guc/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][21] -> [ABORT][22] ([i915#9662])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][23] -> [DMESG-WARN][24] ([i915#5591])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg2-8:          [PASS][25] -> [INCOMPLETE][26] ([i915#10419])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html

  * igt@vgem_basic@unload:
    - fi-kbl-8809g:       [PASS][27] -> [INCOMPLETE][28] ([i915#10454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-8809g/igt@vgem_basic@unload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-kbl-8809g/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-14:         [ABORT][29] ([i915#10366]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10419]: https://gitlab.freedesktop.org/drm/intel/issues/10419
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#10454]: https://gitlab.freedesktop.org/drm/intel/issues/10454
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9662]: https://gitlab.freedesktop.org/drm/intel/issues/9662


Build changes
-------------

  * Linux: CI_DRM_14464 -> Patchwork_131095v3

  CI-20190529: 20190529
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131095v3: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eb2a2af7958c drm/i915/gt: Report full vm address range

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/index.html

--===============2915380345973868761==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Report full vm address range (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131095/">https://patchwork.freedesktop.org/series/131095/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14464 -&gt; Patchwork_131095v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131095v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131095v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): bat-dg1-7 bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131095v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-pnv-d510/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-pnv-d510/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-elk-e7500/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-elk-e7500/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-ilk-650/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-ilk-650/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-11/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-11/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-14/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131095v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9662">i915#9662</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10419">i915#10419</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/fi-kbl-8809g/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/fi-kbl-8809g/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10454">i915#10454</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14464/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v3/bat-dg2-14/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14464 -&gt; Patchwork_131095v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14464: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7775: 0ee4074685c1e184f2d3612ea6eb4d126f9a2e23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131095v3: ad4a10c6d0e21df4bd830c20c96b795ae2d03962 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eb2a2af7958c drm/i915/gt: Report full vm address range</p>

</body>
</html>

--===============2915380345973868761==--
