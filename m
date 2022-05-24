Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B905331F2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 21:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CBC10ED8E;
	Tue, 24 May 2022 19:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBB8210ED89;
 Tue, 24 May 2022 19:52:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4856A3C0D;
 Tue, 24 May 2022 19:52:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6949623626477538002=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Tue, 24 May 2022 19:52:49 -0000
Message-ID: <165342196990.14321.12817849904383501195@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653321034.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1653321034.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes_=28rev?=
 =?utf-8?q?8=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6949623626477538002==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/102665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11694 -> Patchwork_102665v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102665v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102665v8, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/index.html

Participating hosts (46 -> 9)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_102665v8 prevented too many machines from booting.

  Additional (2): bat-jsl-2 bat-atsm-1 
  Missing    (39): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-snb-2520m fi-apl-guc fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-adl-ddr5 bat-dg2-8 fi-tgl-u2 bat-adlm-1 fi-bwr-2160 fi-glk-dsi fi-hsw-g3258 fi-ilk-650 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102665v8:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@verify-random@lmem0:
    - {bat-atsm-1}:       NOTRUN -> [INCOMPLETE][1] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@gem_lmem_swapping@verify-random@lmem0.html

  * igt@kms_addfb_basic@bad-pitch-256:
    - {bat-atsm-1}:       NOTRUN -> [SKIP][2] +95 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@kms_addfb_basic@bad-pitch-256.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - {bat-atsm-1}:       NOTRUN -> [FAIL][3] +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@kms_flip@basic-flip-vs-modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_102665v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - bat-dg1-5:          [PASS][4] -> [SKIP][5] ([i915#4078]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][6] -> [DMESG-WARN][7] ([i915#3576])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - bat-dg1-6:          NOTRUN -> [SKIP][8] ([fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-6/igt@kms_chamelium@common-hpd-after-suspend.html
    - bat-dg1-5:          NOTRUN -> [SKIP][9] ([fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - bat-dg1-5:          NOTRUN -> [SKIP][10] ([i915#4078])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][11] ([i915#4494] / [i915#4957]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         [DMESG-WARN][13] ([i915#3576]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][15] ([i915#3576]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5869]: https://gitlab.freedesktop.org/drm/intel/issues/5869


Build changes
-------------

  * IGT: IGT_6486 -> IGTPW_7094
  * Linux: CI_DRM_11694 -> Patchwork_102665v8

  CI-20190529: 20190529
  CI_DRM_11694: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7094: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7094/index.html
  IGT_6486: f91af0ee70ed290890d122ece6b3857222f985b0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102665v8: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

05b447f95bfd drm/i915/gt: Fix memory leaks in per-gt sysfs
dd824f1ef4f5 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
fee2f04ccc51 drm/i915/pcode: Init pcode on different gt's
6906cdd4a92a drm/i915/gt: Add media freq factor to per-gt sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/index.html

--===============6949623626477538002==
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
<tr><td><b>Series:</b></td><td>drm/i915: Media freq factor and per-gt enhancements/fixes (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102665/">https://patchwork.freedesktop.org/series/102665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11694 -&gt; Patchwork_102665v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102665v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102665v8, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/index.html</p>
<h2>Participating hosts (46 -&gt; 9)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_102665v8 prevented too many machines from booting.</p>
<p>Additional (2): bat-jsl-2 bat-atsm-1 <br />
  Missing    (39): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-snb-2520m fi-apl-guc fi-pnv-d510 fi-blb-e6850 fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-adl-ddr5 bat-dg2-8 fi-tgl-u2 bat-adlm-1 fi-bwr-2160 fi-glk-dsi fi-hsw-g3258 fi-ilk-650 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102665v8:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random@lmem0:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@gem_lmem_swapping@verify-random@lmem0.html">INCOMPLETE</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-256:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@kms_addfb_basic@bad-pitch-256.html">SKIP</a> +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-atsm-1/igt@kms_flip@basic-flip-vs-modeset.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102665v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-6/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11694/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102665v8/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6486 -&gt; IGTPW_7094</li>
<li>Linux: CI_DRM_11694 -&gt; Patchwork_102665v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11694: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7094: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7094/index.html<br />
  IGT_6486: f91af0ee70ed290890d122ece6b3857222f985b0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102665v8: ba77f2196526253b70968472d78ced6dd09bdd4d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>05b447f95bfd drm/i915/gt: Fix memory leaks in per-gt sysfs<br />
dd824f1ef4f5 drm/i915/gt: Add media RP0/RPn to per-gt sysfs<br />
fee2f04ccc51 drm/i915/pcode: Init pcode on different gt's<br />
6906cdd4a92a drm/i915/gt: Add media freq factor to per-gt sysfs</p>

</body>
</html>

--===============6949623626477538002==--
