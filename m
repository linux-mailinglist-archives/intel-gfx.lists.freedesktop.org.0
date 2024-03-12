Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C354878CFF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 03:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A855F10EAC8;
	Tue, 12 Mar 2024 02:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843F710E85B;
 Tue, 12 Mar 2024 02:28:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2733089710726420644=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_drm/xe?=
 =?utf-8?q?=3A_Introduce_xe=5Fpm=5Fruntime=5Fget=5Fnoresume_for_inner_caller?=
 =?utf-8?q?s_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 02:28:37 -0000
Message-ID: <171021051753.685601.15033483425214934204@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
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

--===============2733089710726420644==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers (rev3)
URL   : https://patchwork.freedesktop.org/series/130995/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14420 -> Patchwork_130995v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130995v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130995v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/index.html

Participating hosts (34 -> 35)
------------------------------

  Additional (2): bat-kbl-2 bat-mtlp-8 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130995v3:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - bat-dg2-8:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg2-8/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg2-8/igt@gem_close_race@basic-process.html
    - bat-mtlp-6:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-mtlp-6/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-6/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-kbl-guc:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-guc/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic:
    - bat-adlm-1:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlm-1/igt@gem_ctx_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlm-1/igt@gem_ctx_create@basic.html

  * igt@i915_module_load@load:
    - bat-atsm-1:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-atsm-1/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-atsm-1/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-x1275/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-x1275/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-pnv-d510:        [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-dg1-7:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg1-7/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg1-7/igt@kms_busy@basic@modeset.html
    - bat-adln-1:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adln-1/igt@kms_busy@basic@modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adln-1/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-rplp-1/igt@kms_busy@basic@modeset.html
    - bat-arls-2:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-2/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-2/igt@kms_busy@basic@modeset.html
    - fi-ivb-3770:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-ivb-3770/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-ivb-3770/igt@kms_busy@basic@modeset.html
    - fi-ilk-650:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-ilk-650/igt@kms_busy@basic@modeset.html
    - bat-arls-1:         [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-1/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-cfl-8109u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
    - fi-kbl-7567u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-3:          [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-cfl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
    - fi-tgl-1115g4:      [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - bat-adlp-9:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {bat-arls-4}:       [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-4/igt@kms_busy@basic@modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-4/igt@kms_busy@basic@modeset.html
    - {bat-adls-6}:       [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adls-6/igt@kms_busy@basic@modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adls-6/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp2:
    - {bat-rpls-3}:       [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html

  
Known issues
------------

  Here are the changes found in Patchwork_130995v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][47] -> [FAIL][48] ([i915#8293])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-jsl-1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         NOTRUN -> [SKIP][49] ([i915#9318])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html

  * igt@gem_mmap@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][50] ([i915#4083])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][51] ([i915#4077]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][52] ([i915#4079]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@load:
    - bat-kbl-2:          NOTRUN -> [INCOMPLETE][53] ([i915#9546])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-kbl-2/igt@i915_module_load@load.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][54] ([i915#5190])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][55] ([i915#4212]) +8 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_busy@basic@modeset:
    - bat-dg2-14:         [PASS][56] -> [INCOMPLETE][57] ([i915#10056])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg2-14/igt@kms_busy@basic@modeset.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg2-14/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         NOTRUN -> [INCOMPLETE][58] ([i915#10056])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-adlp-6:         [PASS][59] -> [INCOMPLETE][60] ([i915#10056])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/intel/issues/10056
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9546]: https://gitlab.freedesktop.org/drm/intel/issues/9546


Build changes
-------------

  * Linux: CI_DRM_14420 -> Patchwork_130995v3

  CI-20190529: 20190529
  CI_DRM_14420: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7754: 5fb3239299b5be2c110aafa483c9e197c53f8bb8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130995v3: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9f070c722c5d drm/xe: Kill xe_device_mem_access_{get*,put}
ae82bc19fd23 drm/xe: Ensure all the inner access are using the _noresume variant
d7d419763c43 drm/xe: Convert mem_access_if_ongoing to direct xe_pm_runtime_get_if_active
293b5bf39c31 drm/xe: Removing extra mem_access protection from runtime pm
2458c280b151 drm/xe: Convert xe_gem_fault to use direct xe_pm_runtime calls
2f417fdfab02 drm/xe: Remove useless mem_access during probe
0b86eaaa8e22 drm/xe: Convert GSC HDCP from mem_access to direct xe_pm_runtime calls
9f099d902c27 drm/xe: Move lockdep protection from mem_access to xe_pm_runtime
665db22ff5a9 drm/i915/display: convert inner wakeref get towards get_if_in_use
5d2884bda5a4 drm/xe: Introduce intel_runtime_pm_get_noresume at compat-i915-headers for display
747b590e2449 drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/index.html

--===============2733089710726420644==
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
<tr><td><b>Series:</b></td><td>series starting with drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130995/">https://patchwork.freedesktop.org/series/130995/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14420 -&gt; Patchwork_130995v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130995v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130995v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/index.html</p>
<h2>Participating hosts (34 -&gt; 35)</h2>
<p>Additional (2): bat-kbl-2 bat-mtlp-8 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130995v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg2-8/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg2-8/igt@gem_close_race@basic-process.html">INCOMPLETE</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-mtlp-6/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-6/igt@gem_close_race@basic-process.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-guc/igt@gem_close_race@basic-threads.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlm-1/igt@gem_ctx_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlm-1/igt@gem_ctx_create@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-atsm-1/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-x1275/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg1-7/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg1-7/igt@kms_busy@basic@modeset.html">ABORT</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adln-1/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-rplp-1/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-2/igt@kms_busy@basic@modeset.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-ivb-3770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-ivb-3770/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-1/igt@kms_busy@basic@modeset.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-arls-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-arls-4/igt@kms_busy@basic@modeset.html">ABORT</a></li>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp2:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-rpls-3/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130995v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9546">i915#9546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-dg2-14/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-dg2-14/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-mtlp-8/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130995v3/bat-adlp-6/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14420 -&gt; Patchwork_130995v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14420: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7754: 5fb3239299b5be2c110aafa483c9e197c53f8bb8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130995v3: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9f070c722c5d drm/xe: Kill xe_device_mem_access_{get*,put}<br />
ae82bc19fd23 drm/xe: Ensure all the inner access are using the _noresume variant<br />
d7d419763c43 drm/xe: Convert mem_access_if_ongoing to direct xe_pm_runtime_get_if_active<br />
293b5bf39c31 drm/xe: Removing extra mem_access protection from runtime pm<br />
2458c280b151 drm/xe: Convert xe_gem_fault to use direct xe_pm_runtime calls<br />
2f417fdfab02 drm/xe: Remove useless mem_access during probe<br />
0b86eaaa8e22 drm/xe: Convert GSC HDCP from mem_access to direct xe_pm_runtime calls<br />
9f099d902c27 drm/xe: Move lockdep protection from mem_access to xe_pm_runtime<br />
665db22ff5a9 drm/i915/display: convert inner wakeref get towards get_if_in_use<br />
5d2884bda5a4 drm/xe: Introduce intel_runtime_pm_get_noresume at compat-i915-headers for display<br />
747b590e2449 drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers</p>

</body>
</html>

--===============2733089710726420644==--
