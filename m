Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B18A4F33
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675B8112514;
	Mon, 15 Apr 2024 12:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA46D112524;
 Mon, 15 Apr 2024 12:37:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5921678419378159832=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_i915=5Freg=2Eh_?=
 =?utf-8?q?cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 12:37:58 -0000
Message-ID: <171318467882.1404431.2965094531697400177@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712933479.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712933479.git.jani.nikula@intel.com>
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

--===============5921678419378159832==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: i915_reg.h cleanups
URL   : https://patchwork.freedesktop.org/series/132381/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14572 -> Patchwork_132381v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (2): bat-kbl-2 fi-cfl-8109u 
  Missing    (4): fi-kbl-8809g fi-elk-e7500 fi-snb-2520m bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132381v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] +39 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@gtt:
    - bat-arls-2:         [PASS][5] -> [ABORT][6] ([i915#10677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-arls-2/igt@i915_selftest@live@gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-arls-2/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hugepages:
    - fi-apl-guc:         [PASS][7] -> [ABORT][8] ([i915#10461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/fi-apl-guc/igt@i915_selftest@live@hugepages.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-apl-guc/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-8:          [PASS][9] -> [ABORT][10] ([i915#10366])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-8/igt@i915_selftest@live@perf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-dg2-8/igt@i915_selftest@live@perf.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][11] +11 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][12] ([i915#10378]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
  [i915#10677]: https://gitlab.freedesktop.org/drm/intel/issues/10677
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14572 -> Patchwork_132381v1

  CI-20190529: 20190529
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132381v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a72891e8eab8 drm/i915/display: split out bxt_phy_regs.h from i915_reg.h
d1706507aa57 drm/i915/display: split out intel_dpio_regs.h from i915_reg.h
3252ba27c86b drm/i915/display: split out intel_sprite_regs.h from i915_reg.h
f20203ff0022 drm/i915/display: split out intel_fbc_regs.h from i915_reg.h
44475679c3a6 drm/i915/color: move palette registers to intel_color_regs.h
837e2cec47b2 drm/i915/audio: move LPE audio regs to intel_audio_regs.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/index.html

--===============5921678419378159832==
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
<tr><td><b>Series:</b></td><td>drm/i915: i915_reg.h cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132381/">https://patchwork.freedesktop.org/series/132381/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14572 -&gt; Patchwork_132381v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (2): bat-kbl-2 fi-cfl-8109u <br />
  Missing    (4): fi-kbl-8809g fi-elk-e7500 fi-snb-2520m bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132381v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-arls-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-arls-2/igt@i915_selftest@live@gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10677">i915#10677</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/fi-apl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-apl-guc/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10461">i915#10461</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-8/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-dg2-8/igt@i915_selftest@live@perf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14572/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132381v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14572 -&gt; Patchwork_132381v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14572: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132381v1: 85eef611f85be84edeabab83debdbb1fabeba066 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a72891e8eab8 drm/i915/display: split out bxt_phy_regs.h from i915_reg.h<br />
d1706507aa57 drm/i915/display: split out intel_dpio_regs.h from i915_reg.h<br />
3252ba27c86b drm/i915/display: split out intel_sprite_regs.h from i915_reg.h<br />
f20203ff0022 drm/i915/display: split out intel_fbc_regs.h from i915_reg.h<br />
44475679c3a6 drm/i915/color: move palette registers to intel_color_regs.h<br />
837e2cec47b2 drm/i915/audio: move LPE audio regs to intel_audio_regs.h</p>

</body>
</html>

--===============5921678419378159832==--
