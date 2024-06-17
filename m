Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4AE90BA97
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 21:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D4B10E4C0;
	Mon, 17 Jun 2024 19:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7443510E4C0;
 Mon, 17 Jun 2024 19:10:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0177277612918845789=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Fix_potentia?=
 =?utf-8?q?l_UAF_by_revoke_of_fence_registers_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2024 19:10:53 -0000
Message-ID: <171865145347.97967.1643470283160474641@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240603195446.297690-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240603195446.297690-2-janusz.krzysztofik@linux.intel.com>
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

--===============0177277612918845789==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix potential UAF by revoke of fence registers (rev5)
URL   : https://patchwork.freedesktop.org/series/134411/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14957 -> Patchwork_134411v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/index.html

Participating hosts (41 -> 44)
------------------------------

  Additional (5): fi-kbl-7567u bat-kbl-2 fi-cfl-8109u fi-elk-e7500 fi-kbl-8809g 
  Missing    (2): bat-jsl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134411v5:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - {bat-mtlp-9}:       NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_134411v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([i915#1849])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][8] +39 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][11] ([i915#4613]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][12] +11 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][13] +30 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][14] +11 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-elk-e7500:       NOTRUN -> [SKIP][15] +24 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-mtlp-9}:       [DMESG-WARN][16] ([i915#11009]) -> [PASS][17] +3 other tests pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-mtlp-9}:       [SKIP][18] ([i915#10580]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][20] ([i915#6121]) -> [PASS][21] +3 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14957 -> Patchwork_134411v5

  CI-20190529: 20190529
  CI_DRM_14957: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134411v5: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/index.html

--===============0177277612918845789==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix potential UAF by revoke of fence registers (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134411/">https://patchwork.freedesktop.org/series/134411/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14957 -&gt; Patchwork_134411v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/index.html</p>
<h2>Participating hosts (41 -&gt; 44)</h2>
<p>Additional (5): fi-kbl-7567u bat-kbl-2 fi-cfl-8109u fi-elk-e7500 fi-kbl-8809g <br />
  Missing    (2): bat-jsl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134411v5:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>{bat-mtlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@i915_selftest@live.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134411v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +30 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v5/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14957 -&gt; Patchwork_134411v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14957: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134411v5: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0177277612918845789==--
