Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A38184D191
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 19:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C9610E781;
	Wed,  7 Feb 2024 18:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C495F10E709;
 Wed,  7 Feb 2024 18:46:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2849314814004366991=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/buddy=3A_Fix_alloc=5Fra?=
 =?utf-8?q?nge=28=29_error_handling_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Feb 2024 18:46:44 -0000
Message-ID: <170733160480.1087557.10899132723223270025@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240207174456.341121-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20240207174456.341121-1-Arunpravin.PaneerSelvam@amd.com>
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

--===============2849314814004366991==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/buddy: Fix alloc_range() error handling code
URL   : https://patchwork.freedesktop.org/series/129637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14239 -> Patchwork_129637v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (2): fi-bsw-n3050 bat-arls-3 
  Missing    (3): bat-arls-2 fi-snb-2520m bat-adls-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129637v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@ring_submission:
    - {bat-arls-3}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/bat-arls-3/igt@i915_selftest@live@ring_submission.html

  
Known issues
------------

  Here are the changes found in Patchwork_129637v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-apl-guc:         [FAIL][2] ([i915#8293]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-apl-guc/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][5] ([fdo#109271]) +15 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][6] ([fdo#109271]) +13 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [DMESG-WARN][7] ([i915#9730]) -> [PASS][8] +36 other tests pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-kbl-7567u:       [DMESG-WARN][9] ([i915#8585] / [i915#9730]) -> [PASS][10] +39 other tests pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-7567u:       [DMESG-WARN][11] ([i915#8585]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-kbl-7567u:       [DMESG-WARN][13] ([i915#180] / [i915#8585] / [i915#9730]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][15] ([i915#180] / [i915#8585]) -> [PASS][16] +44 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9730]: https://gitlab.freedesktop.org/drm/intel/issues/9730
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14239 -> Patchwork_129637v1

  CI-20190529: 20190529
  CI_DRM_14239: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129637v1: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4321c99a70b1 drm/buddy: Fix alloc_range() error handling code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html

--===============2849314814004366991==
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
<tr><td><b>Series:</b></td><td>drm/buddy: Fix alloc_range() error handling code</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129637/">https://patchwork.freedesktop.org/series/129637/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14239 -&gt; Patchwork_129637v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (2): fi-bsw-n3050 bat-arls-3 <br />
  Missing    (3): bat-arls-2 fi-snb-2520m bat-adls-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129637v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>{bat-arls-3}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/bat-arls-3/igt@i915_selftest@live@ring_submission.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129637v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9730">i915#9730</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +36 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9730">i915#9730</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> +39 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9730">i915#9730</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14239/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129637v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +44 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14239 -&gt; Patchwork_129637v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14239: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129637v1: 473fff9e18e4e77aa4c1f1ae5484a6fb809a89e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4321c99a70b1 drm/buddy: Fix alloc_range() error handling code</p>

</body>
</html>

--===============2849314814004366991==--
