Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0C8381475
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 02:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668026E826;
	Sat, 15 May 2021 00:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2626F6E321;
 Sat, 15 May 2021 00:11:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1619DA47E2;
 Sat, 15 May 2021 00:11:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Sat, 15 May 2021 00:11:45 -0000
Message-ID: <162103750505.17968.278292925907347481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514232247.144542-1-jose.souza@intel.com>
In-Reply-To: <20210514232247.144542-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915/display=3A_Fix_fastse?=
 =?utf-8?q?ts_involving_PSR?=
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
Content-Type: multipart/mixed; boundary="===============0488478209=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0488478209==
Content-Type: multipart/alternative;
 boundary="===============9098840554908757492=="

--===============9098840554908757492==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/4] drm/i915/display: Fix fastsets involving PSR
URL   : https://patchwork.freedesktop.org/series/90184/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10085 -> Patchwork_20130
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20130 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20130, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20130:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-elk-e7500:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20130 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-kefka:       [PASS][2] -> [FAIL][3] ([i915#3457])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-bsw-nick:        [PASS][4] -> [FAIL][5] ([i915#3457])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][6] -> [FAIL][7] ([i915#3457]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-bwr-2160:        [PASS][8] -> [FAIL][9] ([i915#53])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-ilk-650:         [PASS][10] -> [FAIL][11] ([i915#53])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [FAIL][12] ([i915#3457]) -> [PASS][13] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-bsw-n3050:       [FAIL][14] ([i915#3457]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][16] ([i915#3457]) -> [PASS][17] +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [FAIL][18] ([i915#3177] / [i915#3457]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_wait@busy@all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_wait@busy@all.html
    - fi-bsw-kefka:       [FAIL][20] ([i915#3177] / [i915#3457]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_wait@busy@all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_wait@busy@all.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-bsw-kefka:       [FAIL][22] ([i915#53]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-ilk-650:         [FAIL][24] ([i915#53]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][26] ([i915#3472]) -> [FAIL][27] ([i915#3457] / [i915#3472])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-cml-s:           [DMESG-WARN][28] ([i915#1982] / [i915#3457]) -> [DMESG-WARN][29] ([i915#3457])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cml-s/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-cml-s/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-FAIL][30] ([i915#1982] / [i915#3457]) -> [DMESG-WARN][31] ([i915#1982] / [i915#3457])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-pnv-d510:        [DMESG-FAIL][32] ([i915#3457]) -> [DMESG-WARN][33] ([i915#3457])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][34] -> [FAIL][35] ([i915#1602] / [i915#2029])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bdw-5557u/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53


Participating hosts (33 -> 30)
------------------------------

  Missing    (3): fi-rkl-11500t fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10085 -> Patchwork_20130

  CI-20190529: 20190529
  CI_DRM_10085: d8f31093420f3d54afebdd3d2a11c14acd17c973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20130: bc53eeffc17b8f3dedded041cee3859d1f3ab8bd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bc53eeffc17b drm/i915/display: Drop FIXME about turn off infoframes
6c94b1f31bee drm/i915/display: Nuke has_infoframe
9b3671205d77 drm/i915/display: Allow fastsets when DP_SDP_VSC infoframe do not match with PSR enabled
f2ee45fe2883 drm/i915/display: Fix fastsets involving PSR

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/index.html

--===============9098840554908757492==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/4] drm/i915/display: Fix fastsets involving PSR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90184/">https://patchwork.freedesktop.org/series/90184/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10085 -&gt; Patchwork_20130</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20130 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20130, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20130:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20130 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@gem_wait@busy@all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20130/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 30)</h2>
<p>Missing    (3): fi-rkl-11500t fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10085 -&gt; Patchwork_20130</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10085: d8f31093420f3d54afebdd3d2a11c14acd17c973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20130: bc53eeffc17b8f3dedded041cee3859d1f3ab8bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bc53eeffc17b drm/i915/display: Drop FIXME about turn off infoframes<br />
6c94b1f31bee drm/i915/display: Nuke has_infoframe<br />
9b3671205d77 drm/i915/display: Allow fastsets when DP_SDP_VSC infoframe do not match with PSR enabled<br />
f2ee45fe2883 drm/i915/display: Fix fastsets involving PSR</p>

</body>
</html>

--===============9098840554908757492==--

--===============0488478209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0488478209==--
