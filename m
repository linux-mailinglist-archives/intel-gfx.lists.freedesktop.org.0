Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D161F2612AF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F876E1D3;
	Tue,  8 Sep 2020 14:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3526C6E1D3;
 Tue,  8 Sep 2020 14:28:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E4DCA66C9;
 Tue,  8 Sep 2020 14:28:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 08 Sep 2020 14:28:01 -0000
Message-ID: <159957528115.21759.11540743647133386182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Kill_unused_savePCH=5FP?=
 =?utf-8?q?ORT=5FHOTPLUG?=
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
Content-Type: multipart/mixed; boundary="===============1987530252=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1987530252==
Content-Type: multipart/alternative;
 boundary="===============3278326425124721907=="

--===============3278326425124721907==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Kill unused savePCH_PORT_HOTPLUG
URL   : https://patchwork.freedesktop.org/series/81461/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8982 -> Patchwork_18453
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18453 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18453, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18453:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-byt-j1900:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-byt-j1900/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-byt-j1900/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bdw-5557u/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18453 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-apl-guc:         [PASS][14] -> [INCOMPLETE][15] ([i915#1635])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@gem_exec_gttfill@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-apl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-snb-2600:        [PASS][16] -> [INCOMPLETE][17] ([i915#82])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-bdw-5557u:       [INCOMPLETE][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [INCOMPLETE][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [INCOMPLETE][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [INCOMPLETE][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-gdg-551:         [INCOMPLETE][26] ([i915#172]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [INCOMPLETE][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][30] ([i915#1186]) -> [FAIL][31] ([i915#2398])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][32] ([i915#1635] / [i915#2398] / [i915#337]) -> [FAIL][33] ([i915#1186] / [i915#1635])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][34] ([i915#2398]) -> [FAIL][35] ([i915#1186])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][36] ([i915#1186]) -> [FAIL][37] ([i915#1186] / [i915#1784])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-guc/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][38] ([i915#1186]) -> [FAIL][39] ([i915#2398])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8982 -> Patchwork_18453

  CI-20190529: 20190529
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18453: ea3b51a4f4f7d5594b0257fb67e3476e555d795f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ea3b51a4f4f7 drm/i915: Nuke CACHE_MODE_0 save/restore
8e6fd2ddab55 drm/i915: Nuke MI_ARB_STATE save/restore
68e370475a3d drm/i915: Nuke the magic FBC_CONTROL save/restore
98fd15d8179f drm/i915: Kill unused savePCH_PORT_HOTPLUG

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/index.html

--===============3278326425124721907==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Kill unused savePCH_PORT_HOTPLUG</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81461/">https://patchwork.freedesktop.org/series/81461/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8982 -&gt; Patchwork_18453</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18453 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18453, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18453:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-byt-j1900/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-byt-j1900/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bdw-5557u/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-byt-j1900/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18453 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-apl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ilk-650/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-ilk-650/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18453/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8982 -&gt; Patchwork_18453</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18453: ea3b51a4f4f7d5594b0257fb67e3476e555d795f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ea3b51a4f4f7 drm/i915: Nuke CACHE_MODE_0 save/restore<br />
8e6fd2ddab55 drm/i915: Nuke MI_ARB_STATE save/restore<br />
68e370475a3d drm/i915: Nuke the magic FBC_CONTROL save/restore<br />
98fd15d8179f drm/i915: Kill unused savePCH_PORT_HOTPLUG</p>

</body>
</html>

--===============3278326425124721907==--

--===============1987530252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1987530252==--
