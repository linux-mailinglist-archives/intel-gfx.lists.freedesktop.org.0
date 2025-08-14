Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8EB26D39
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 19:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D19F10E8CB;
	Thu, 14 Aug 2025 17:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9C310E8CA;
 Thu, 14 Aug 2025 17:03:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0166683371951859019=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/bo=3A_remove_unn?=
 =?utf-8?q?ecessary_include?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Aug 2025 17:03:02 -0000
Message-ID: <175519098296.237804.9206023861493841128@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250814132445.1573035-1-jani.nikula@intel.com>
In-Reply-To: <20250814132445.1573035-1-jani.nikula@intel.com>
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

--===============0166683371951859019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bo: remove unnecessary include
URL   : https://patchwork.freedesktop.org/series/152954/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17000 -> Patchwork_152954v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-snb-2520m bat-adls-6 

Known issues
------------

  Here are the changes found in Patchwork_152954v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-arls-6:         [PASS][1] -> [ABORT][2] ([i915#14804])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-arls-6/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-arls-6/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      [PASS][3] -> [ABORT][4] ([i915#14804])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][5] -> [ABORT][6] ([i915#12904]) +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-apl-1/igt@dmabuf@all-tests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_lmem_swapping@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][7] +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-bsw-n3050/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [PASS][9] -> [ABORT][10] ([i915#14804])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-adlp-6/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-adlp-6/igt@i915_module_load@reload.html
    - bat-twl-2:          [PASS][11] -> [ABORT][12] ([i915#14804])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-twl-2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-twl-2/igt@i915_module_load@reload.html
    - bat-jsl-1:          [PASS][13] -> [ABORT][14] ([i915#14804])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-jsl-1/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-jsl-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-5:         [PASS][15] -> [ABORT][16] ([i915#14804])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-arls-5/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-arls-5/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][17] -> [DMESG-FAIL][18] ([i915#12061]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-mtlp-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          NOTRUN -> [DMESG-FAIL][19] ([i915#12061]) +1 other test dmesg-fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-primary-page-flip:
    - fi-glk-j4005:       NOTRUN -> [SKIP][20] +6 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-n3050:       [ABORT][21] ([i915#14804]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-dg2-9:          [ABORT][23] ([i915#14804]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - fi-glk-j4005:       [ABORT][25] ([i915#14804]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#14804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_17000 -> Patchwork_152954v1

  CI-20190529: 20190529
  CI_DRM_17000: 7f1ecbbddf3bf50bf5338e86514bf77c32eb4edb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8493: 8493
  Patchwork_152954v1: 7f1ecbbddf3bf50bf5338e86514bf77c32eb4edb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/index.html

--===============0166683371951859019==
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
<tr><td><b>Series:</b></td><td>drm/i915/bo: remove unnecessary include</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152954/">https://patchwork.freedesktop.org/series/152954/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17000 -&gt; Patchwork_152954v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-snb-2520m bat-adls-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152954v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-arls-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-arls-6/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-bsw-n3050/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-adlp-6/igt@i915_module_load@reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-twl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-twl-2/igt@i915_module_load@reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-jsl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-jsl-1/igt@i915_module_load@reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-arls-5/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-arls-5/igt@i915_pm_rpm@module-reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17000/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152954v1/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17000 -&gt; Patchwork_152954v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17000: 7f1ecbbddf3bf50bf5338e86514bf77c32eb4edb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8493: 8493<br />
  Patchwork_152954v1: 7f1ecbbddf3bf50bf5338e86514bf77c32eb4edb @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0166683371951859019==--
