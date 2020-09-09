Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B52262401
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 02:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC27C6E172;
	Wed,  9 Sep 2020 00:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E70136E172;
 Wed,  9 Sep 2020 00:24:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF809A66C9;
 Wed,  9 Sep 2020 00:24:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 09 Sep 2020 00:24:27 -0000
Message-ID: <159961106788.8835.14920110876954754767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200908233955.11311-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200908233955.11311-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0271109501=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0271109501==
Content-Type: multipart/alternative;
 boundary="===============3623120332562983917=="

--===============3623120332562983917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pll: Centralize PLL_ENABLE register lookup (rev3)
URL   : https://patchwork.freedesktop.org/series/81150/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8985 -> Patchwork_18456
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18456 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18456, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18456:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-tgl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-tgl-u2/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-tgl-u2/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_18456 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4] ([i915#2439])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][5] -> [INCOMPLETE][6] ([i915#2439] / [i915#66])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][7] -> [INCOMPLETE][8] ([i915#2439])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-gdg-551:         [PASS][9] -> [INCOMPLETE][10] ([i915#172] / [i915#2440])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [PASS][11] -> [INCOMPLETE][12] ([i915#2440] / [i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][13] -> [INCOMPLETE][14] ([i915#2439])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][15] -> [INCOMPLETE][16] ([i915#2439])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-r:           [INCOMPLETE][17] ([i915#2439]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [INCOMPLETE][19] ([i915#2439]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-pnv-d510:        [INCOMPLETE][21] ([i915#2439] / [i915#299]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][23] ([i915#1186] / [i915#1784] / [i915#2439]) -> [FAIL][24] ([i915#2398] / [i915#2439])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-r/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][25] ([i915#1784] / [i915#2398] / [i915#2439]) -> [FAIL][26] ([i915#1186] / [i915#1784] / [i915#2439])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-7500u/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][27] ([i915#1186] / [i915#1784] / [i915#2439]) -> [FAIL][28] ([i915#1186] / [i915#2439])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-guc/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][29] ([i915#1186] / [i915#2439]) -> [FAIL][30] ([i915#1186] / [i915#2082] / [i915#2439])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-cml-s/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-cml-s/igt@runner@aborted.html

  
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2440]: https://gitlab.freedesktop.org/drm/intel/issues/2440
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (41 -> 36)
------------------------------

  Additional (1): fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8985 -> Patchwork_18456

  CI-20190529: 20190529
  CI_DRM_8985: 21757387063c4f9b48141592dda7982b5eaf974d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18456: 3be3651c4fb73ec965f2942da6af29ca3ba0cb31 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3be3651c4fb7 drm/i915/pll: Centralize PLL_ENABLE register lookup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/index.html

--===============3623120332562983917==
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
<tr><td><b>Series:</b></td><td>drm/i915/pll: Centralize PLL_ENABLE register lookup (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81150/">https://patchwork.freedesktop.org/series/81150/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8985 -&gt; Patchwork_18456</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18456 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18456, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18456:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_ctx_create@basic-files:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-tgl-u2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-tgl-u2/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18456 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-ilk-650/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-ilk-650/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-r/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-r/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8985/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18456/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Additional (1): fi-skl-6600u <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8985 -&gt; Patchwork_18456</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8985: 21757387063c4f9b48141592dda7982b5eaf974d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18456: 3be3651c4fb73ec965f2942da6af29ca3ba0cb31 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3be3651c4fb7 drm/i915/pll: Centralize PLL_ENABLE register lookup</p>

</body>
</html>

--===============3623120332562983917==--

--===============0271109501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0271109501==--
