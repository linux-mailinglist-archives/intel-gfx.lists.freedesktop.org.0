Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7048CDD13
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 00:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D522410E350;
	Thu, 23 May 2024 22:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AAE10E350;
 Thu, 23 May 2024 22:59:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0517861474838903573=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Expand_?=
 =?utf-8?q?runtime=5Fpm_protection_to_atomic_commit_work?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2024 22:59:20 -0000
Message-ID: <171650516000.2171858.9007765911217129172@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240523220318.25446-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240523220318.25446-1-rodrigo.vivi@intel.com>
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

--===============0517861474838903573==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Expand runtime_pm protection to atomic commit work
URL   : https://patchwork.freedesktop.org/series/133991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14813 -> Patchwork_133991v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/index.html

Participating hosts (43 -> 35)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (9): bat-kbl-2 fi-tgl-1115g4 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-jsl-3 bat-dg2-11 bat-jsl-1 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133991v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - {bat-apl-1}:        NOTRUN -> [FAIL][1] +13 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness:
    - {bat-apl-1}:        [SKIP][2] -> [FAIL][3] +17 other tests fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-apl-1/igt@kms_pm_backlight@basic-brightness.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@vgem_basic@second-client:
    - {bat-apl-1}:        [PASS][4] -> [FAIL][5] +79 other tests fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-apl-1/igt@vgem_basic@second-client.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@vgem_basic@second-client.html

  
Known issues
------------

  Here are the changes found in Patchwork_133991v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][8] +30 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [FAIL][9] ([i915#10378]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][11] ([i915#10594]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp7:
    - {bat-mtlp-9}:       [FAIL][13] ([i915#6121]) -> [PASS][14] +4 other tests pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp7.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp7.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][15] ([i915#11009]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14813 -> Patchwork_133991v1

  CI-20190529: 20190529
  CI_DRM_14813: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7870: ad1cea5f9b4ce0f4a036cbda2da3d8979fb1ce15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133991v1: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/index.html

--===============0517861474838903573==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Expand runtime_pm protection to atomic commit work</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133991/">https://patchwork.freedesktop.org/series/133991/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14813 -&gt; Patchwork_133991v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/index.html</p>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (9): bat-kbl-2 fi-tgl-1115g4 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-jsl-3 bat-dg2-11 bat-jsl-1 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133991v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>{bat-apl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">FAIL</a> +13 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-apl-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@kms_pm_backlight@basic-brightness.html">FAIL</a> +17 other tests fail</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@second-client:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-apl-1/igt@vgem_basic@second-client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-apl-1/igt@vgem_basic@second-client.html">FAIL</a> +79 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133991v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp7.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133991v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-6.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14813 -&gt; Patchwork_133991v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14813: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7870: ad1cea5f9b4ce0f4a036cbda2da3d8979fb1ce15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133991v1: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0517861474838903573==--
