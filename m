Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9021A84F970
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 17:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC17110F6F7;
	Fri,  9 Feb 2024 16:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C7810F6F7;
 Fri,  9 Feb 2024 16:16:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6374585441439749623=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/selftests=3A_Incre?=
 =?utf-8?q?asing_the_sleep_time_for_live=5Frc6=5Fmanual_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sk Anirban" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 Feb 2024 16:16:50 -0000
Message-ID: <170749541007.1129907.16230861563662544359@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240209121127.1019920-1-sk.anirban@intel.com>
In-Reply-To: <20240209121127.1019920-1-sk.anirban@intel.com>
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

--===============6374585441439749623==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Increasing the sleep time for live_rc6_manual (rev3)
URL   : https://patchwork.freedesktop.org/series/129664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14248 -> Patchwork_129664v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (2): fi-glk-j4005 fi-apl-guc 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129664v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_setmode@basic-clone-single-crtc:
    - {bat-arls-2}:       [SKIP][1] ([i915#10208] / [i915#8809]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_129664v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-6:         [PASS][8] -> [INCOMPLETE][9] ([i915#9413])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][10] ([fdo#109271]) +6 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271]) +13 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@ccs0:
    - {bat-arls-1}:       [DMESG-WARN][12] ([i915#10194]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html

  * igt@i915_selftest@live@gt_pm:
    - bat-adln-1:         [DMESG-FAIL][14] ([i915#10010]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-8:         [DMESG-WARN][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10010]: https://gitlab.freedesktop.org/drm/intel/issues/10010
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413


Build changes
-------------

  * Linux: CI_DRM_14248 -> Patchwork_129664v3

  CI-20190529: 20190529
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129664v3: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

270c94787b24 drm/i915/selftests: Increasing the sleep time for live_rc6_manual

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/index.html

--===============6374585441439749623==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Increasing the sleep time for live_rc6_manual (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129664/">https://patchwork.freedesktop.org/series/129664/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14248 -&gt; Patchwork_129664v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (2): fi-glk-j4005 fi-apl-guc <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129664v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129664v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@ccs0:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10010">i915#10010</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14248/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129664v3/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14248 -&gt; Patchwork_129664v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14248: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7708: c2ecf4ba307d3342682745de6f608d307a06782c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129664v3: c7d234dd2d329f223f56699636248a609dbe2267 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>270c94787b24 drm/i915/selftests: Increasing the sleep time for live_rc6_manual</p>

</body>
</html>

--===============6374585441439749623==--
