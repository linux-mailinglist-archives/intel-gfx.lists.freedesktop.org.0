Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BB187C3A4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 20:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A76710F38C;
	Thu, 14 Mar 2024 19:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028A810F379;
 Thu, 14 Mar 2024 19:22:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4090742857551126688=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B01/?=
 =?utf-8?q?11=5D_drm/xe=3A_Introduce_xe=5Fpm=5Fruntime=5Fget=5Fnoresume_for_?=
 =?utf-8?q?inner_callers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 19:22:29 -0000
Message-ID: <171044414901.756215.18163194998996459318@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
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

--===============4090742857551126688==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers
URL   : https://patchwork.freedesktop.org/series/131141/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14433 -> Patchwork_131141v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131141v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131141v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (2): bat-dg1-7 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131141v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all-engines:
    - fi-kbl-8809g:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html

  * igt@gem_close_race@basic-process:
    - bat-dg2-8:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_close_race@basic-process.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-8/igt@gem_close_race@basic-process.html
    - bat-mtlp-6:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-6/igt@gem_close_race@basic-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-6/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@load:
    - bat-atsm-1:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-atsm-1/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-9/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-guc/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-pnv-d510:        [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-adln-1:         [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adln-1/igt@kms_busy@basic@modeset.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adln-1/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-rplp-1/igt@kms_busy@basic@modeset.html
    - fi-ivb-3770:        [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-ivb-3770/igt@kms_busy@basic@modeset.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html
    - bat-adls-6:         [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@kms_busy@basic@modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adls-6/igt@kms_busy@basic@modeset.html
    - fi-ilk-650:         [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-ilk-650/igt@kms_busy@basic@modeset.html
    - bat-arls-1:         [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-1/igt@kms_busy@basic@modeset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-arls-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp2:
    - bat-rpls-3:         [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-3:          [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-cfl-guc:         [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
    - fi-tgl-1115g4:      [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - fi-glk-j4005:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {bat-mtlp-9}:       [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html
    - {bat-arls-4}:       [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-4/igt@kms_busy@basic@modeset.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-arls-4/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_131141v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][40] -> [FAIL][41] ([i915#8293])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-jsl-1/boot.html
    - fi-cfl-8109u:       [PASS][42] -> [FAIL][43] ([i915#8293])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8109u/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][44] +4 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][45] ([i915#1849])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@fbdev@info.html

  * igt@kms_busy@basic@modeset:
    - fi-apl-guc:         [PASS][46] -> [INCOMPLETE][47] ([i915#10056])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-7567u:       [PASS][48] -> [INCOMPLETE][49] ([i915#10056])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
    - bat-dg2-14:         [PASS][50] -> [INCOMPLETE][51] ([i915#10056])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@kms_busy@basic@modeset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-14/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         [PASS][52] -> [INCOMPLETE][53] ([i915#10056])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-8/igt@kms_busy@basic@modeset.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-adlp-6:         [PASS][54] -> [INCOMPLETE][55] ([i915#10056])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/intel/issues/10056
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14433 -> Patchwork_131141v1

  CI-20190529: 20190529
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131141v1: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e69cf4d9a53b drm/xe: Kill xe_device_mem_access_{get*,put}
61ef856ddb5c drm/xe: Ensure all the inner access are using the _noresume variant
647d7a5b64aa drm/xe: Convert mem_access_if_ongoing to direct xe_pm_runtime_get_if_active
3db70fccb52d drm/xe: Removing extra mem_access protection from runtime pm
d99a6c1af946 drm/xe: Convert xe_gem_fault to use direct xe_pm_runtime calls
ff92126792b8 drm/xe: Remove useless mem_access during probe
1fb4ebb91fee drm/xe: Convert GSC HDCP from mem_access to direct xe_pm_runtime calls
91f51eecc7a4 drm/xe: Move lockdep protection from mem_access to xe_pm_runtime
98db7e114c42 drm/i915/display: convert inner wakeref get towards get_if_in_use
d4f1b5b53f14 drm/xe: Introduce intel_runtime_pm_get_noresume at compat-i915-headers for display
ca7a1aaa4dab drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/index.html

--===============4090742857551126688==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131141/">https://patchwork.freedesktop.org/series/131141/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14433 -&gt; Patchwork_131141v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131141v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131141v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (2): bat-dg1-7 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131141v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-8/igt@gem_close_race@basic-process.html">INCOMPLETE</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-6/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-6/igt@gem_close_race@basic-process.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-atsm-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adln-1/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-rplp-1/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-ivb-3770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-arls-1/igt@kms_busy@basic@modeset.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp2:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">ABORT</a></li>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-arls-4/igt@kms_busy@basic@modeset.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131141v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-apl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-apl-guc/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-dg2-14/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-8/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131141v1/bat-adlp-6/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14433 -&gt; Patchwork_131141v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131141v1: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e69cf4d9a53b drm/xe: Kill xe_device_mem_access_{get*,put}<br />
61ef856ddb5c drm/xe: Ensure all the inner access are using the _noresume variant<br />
647d7a5b64aa drm/xe: Convert mem_access_if_ongoing to direct xe_pm_runtime_get_if_active<br />
3db70fccb52d drm/xe: Removing extra mem_access protection from runtime pm<br />
d99a6c1af946 drm/xe: Convert xe_gem_fault to use direct xe_pm_runtime calls<br />
ff92126792b8 drm/xe: Remove useless mem_access during probe<br />
1fb4ebb91fee drm/xe: Convert GSC HDCP from mem_access to direct xe_pm_runtime calls<br />
91f51eecc7a4 drm/xe: Move lockdep protection from mem_access to xe_pm_runtime<br />
98db7e114c42 drm/i915/display: convert inner wakeref get towards get_if_in_use<br />
d4f1b5b53f14 drm/xe: Introduce intel_runtime_pm_get_noresume at compat-i915-headers for display<br />
ca7a1aaa4dab drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers</p>

</body>
</html>

--===============4090742857551126688==--
