Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D20623C9B5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 12:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AE26E0E3;
	Wed,  5 Aug 2020 10:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6627B6E527;
 Wed,  5 Aug 2020 10:02:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6062DA47E6;
 Wed,  5 Aug 2020 10:02:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 05 Aug 2020 10:02:10 -0000
Message-ID: <159662173039.4770.2565007558617182441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200805083751.31226-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200805083751.31226-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Prevent_immediate_reuse_of_the_last_context_tag?=
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
Content-Type: multipart/mixed; boundary="===============1850065489=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1850065489==
Content-Type: multipart/alternative;
 boundary="===============8012836337666418481=="

--===============8012836337666418481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Prevent immediate reuse of the last context tag
URL   : https://patchwork.freedesktop.org/series/80277/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8844 -> Patchwork_18308
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18308 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18308, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18308:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {fi-kbl-7560u}:     [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18308 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][6] -> [DMESG-WARN][7] ([i915#62] / [i915#92] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-guc:         [INCOMPLETE][10] ([i915#794]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][12] ([i915#2045]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][14] ([i915#1982]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [DMESG-WARN][16] ([i915#2203]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [DMESG-FAIL][18] ([i915#2203]) -> [DMESG-WARN][19] ([i915#2203])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92]) -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8844 -> Patchwork_18308

  CI-20190529: 20190529
  CI_DRM_8844: 078ec38d6385937203c8e431671bd99453223bd2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5758: bb34603947667cb44ed9ff0db8dccbb9d3f42357 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18308: ac0f01189cfc2dbb998b2adf08a797ef46b0546b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ac0f01189cfc drm/i915/gt: Prevent immediate reuse of the last context tag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/index.html

--===============8012836337666418481==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Prevent immediate reuse of the last context tag</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80277/">https://patchwork.freedesktop.org/series/80277/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8844 -&gt; Patchwork_18308</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18308 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18308, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18308:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18308 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8844/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18308/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8844 -&gt; Patchwork_18308</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8844: 078ec38d6385937203c8e431671bd99453223bd2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5758: bb34603947667cb44ed9ff0db8dccbb9d3f42357 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18308: ac0f01189cfc2dbb998b2adf08a797ef46b0546b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ac0f01189cfc drm/i915/gt: Prevent immediate reuse of the last context tag</p>

</body>
</html>

--===============8012836337666418481==--

--===============1850065489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1850065489==--
