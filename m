Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEFB2AFB8C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 23:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463296E0C2;
	Wed, 11 Nov 2020 22:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E8716E0C2;
 Wed, 11 Nov 2020 22:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07543A363B;
 Wed, 11 Nov 2020 22:46:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 11 Nov 2020 22:46:56 -0000
Message-ID: <160513481699.4720.12084150273597529361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201111000819.29809-1-manasi.d.navare@intel.com>
In-Reply-To: <20201111000819.29809-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv9=2C1/7=5D_drm/i915/dp=3A_Some_reshufflin?=
 =?utf-8?q?g_in_mode=5Fvalid_as_prep_for_bigjoiner_modes_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0438902647=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0438902647==
Content-Type: multipart/alternative;
 boundary="===============2061228771952653060=="

--===============2061228771952653060==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v9,1/7] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes (rev2)
URL   : https://patchwork.freedesktop.org/series/83716/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9312 -> Patchwork_18890
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18890 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18890, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18890:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - fi-icl-y:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-y/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-y/boot.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-8109u/boot.html
    - fi-cfl-8700k:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-8700k/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-8700k/boot.html
    - {fi-ehl-1}:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-ehl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-ehl-1/boot.html
    - fi-skl-6700k2:      [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-6700k2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-guc/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-guc/boot.html
    - fi-skl-lmem:        [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-lmem/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-glk-dsi/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-glk-dsi/boot.html
    - fi-kbl-7500u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-kbl-7500u/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-guc/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-guc/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9312 and Patchwork_18890:

### New CI tests (1) ###

  * boot:
    - Statuses : 12 fail(s) 28 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18890 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot (NEW):
    - fi-apl-guc:         [PASS][21] -> [FAIL][22] ([i915#1635] / [i915#348])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-apl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-apl-guc/boot.html
    - fi-bxt-dsi:         [PASS][23] -> [FAIL][24] ([i915#1635])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-bxt-dsi/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-bxt-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (44 -> 40)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (5): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9312 -> Patchwork_18890

  CI-20190529: 20190529
  CI_DRM_9312: 88b74d59a27aa168f7cd2dec199c33ee71fe8bb0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5847: 8cffaebec5228a5042cc6928ac582a0589e2de3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18890: 74290180d2662a6d0f7c70eacb1c34e950f2a45e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

74290180d266 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
53b9f20a5e2a drm/i915/dp: Add from_crtc_state to copy color blobs
e40ad8303a92 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
5e5e3dbf3ce4 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
86d2442cbabe drm/i915/dp: Add a wrapper function around get_pipe_config
3322a554f588 drm/i915: Move encoder->get_config to a new function
bceebc3f06d1 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/index.html

--===============2061228771952653060==
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
<tr><td><b>Series:</b></td><td>series starting with [v9,1/7] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83716/">https://patchwork.freedesktop.org/series/83716/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9312 -&gt; Patchwork_18890</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18890 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18890, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18890:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot (NEW):</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-y/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-ehl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-ehl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-6700k2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-lmem/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-lmem/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-skl-guc/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9312 and Patchwork_18890:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 12 fail(s) 28 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18890 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot (NEW):</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/348">i915#348</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-bxt-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9312/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18890/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (5): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9312 -&gt; Patchwork_18890</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9312: 88b74d59a27aa168f7cd2dec199c33ee71fe8bb0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5847: 8cffaebec5228a5042cc6928ac582a0589e2de3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18890: 74290180d2662a6d0f7c70eacb1c34e950f2a45e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>74290180d266 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
53b9f20a5e2a drm/i915/dp: Add from_crtc_state to copy color blobs<br />
e40ad8303a92 drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
5e5e3dbf3ce4 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split<br />
86d2442cbabe drm/i915/dp: Add a wrapper function around get_pipe_config<br />
3322a554f588 drm/i915: Move encoder-&gt;get_config to a new function<br />
bceebc3f06d1 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes</p>

</body>
</html>

--===============2061228771952653060==--

--===============0438902647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0438902647==--
