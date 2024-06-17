Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C500B90BB3D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 21:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4403D10E4D0;
	Mon, 17 Jun 2024 19:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0761E10E4D0;
 Mon, 17 Jun 2024 19:37:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6813935213967121000=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Sparse_errors_on_the_i915?=
 =?utf-8?q?=5Fgem=5Fstolen_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2024 19:37:32 -0000
Message-ID: <171865305202.99140.1223727948567298240@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240617184243.330231-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240617184243.330231-1-andi.shyti@linux.intel.com>
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

--===============6813935213967121000==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Sparse errors on the i915_gem_stolen (rev2)
URL   : https://patchwork.freedesktop.org/series/134930/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14957 -> Patchwork_134930v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (4): fi-kbl-7567u bat-kbl-2 fi-cfl-8109u fi-elk-e7500 
  Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m bat-jsl-3 

Known issues
------------

  Here are the changes found in Patchwork_134930v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] +39 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][7] +11 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][8] +11 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-elk-e7500:       NOTRUN -> [SKIP][9] +24 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-mtlp-9}:       [DMESG-WARN][10] ([i915#11009]) -> [PASS][11] +4 other tests pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-mtlp-9}:       [SKIP][12] ([i915#10580]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8:
    - {bat-mtlp-9}:       [FAIL][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][16] ([i915#7507]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][18] ([i915#11009]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6:
    - {bat-mtlp-9}:       [FAIL][20] ([i915#10979]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14957 -> Patchwork_134930v2

  CI-20190529: 20190529
  CI_DRM_14957: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134930v2: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/index.html

--===============6813935213967121000==
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
<tr><td><b>Series:</b></td><td>Sparse errors on the i915_gem_stolen (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134930/">https://patchwork.freedesktop.org/series/134930/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14957 -&gt; Patchwork_134930v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (4): fi-kbl-7567u bat-kbl-2 fi-cfl-8109u fi-elk-e7500 <br />
  Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m bat-jsl-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134930v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp8.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14957/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979">i915#10979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134930v2/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14957 -&gt; Patchwork_134930v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14957: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134930v2: 3b4eab7e82c7a1429e257890553ad571f320b8a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6813935213967121000==--
