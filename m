Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DEE77BE26
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 18:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8599B10E0C0;
	Mon, 14 Aug 2023 16:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5218010E087;
 Mon, 14 Aug 2023 16:34:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49A1FAADD2;
 Mon, 14 Aug 2023 16:34:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6475902789694213509=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Mon, 14 Aug 2023 16:34:29 -0000
Message-ID: <169203086929.19471.328303125676042300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230814150215.873941-1-shekhar.chauhan@intel.com>
In-Reply-To: <20230814150215.873941-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Remove_Wa=5F15010599737?=
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

--===============6475902789694213509==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Remove Wa_15010599737
URL   : https://patchwork.freedesktop.org/series/122426/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13516 -> Patchwork_122426v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_122426v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122426v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/index.html

Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-pnv-d510 bat-dg2-14 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122426v1:

### IGT changes ###

#### Warnings ####

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [ABORT][1] ([i915#8469] / [i915#8668]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
Known issues
------------

  Here are the changes found in Patchwork_122426v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [PASS][5] -> [DMESG-WARN][6] ([i915#6367])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-jsl-3:          NOTRUN -> [SKIP][7] ([i915#7828])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#1845] / [i915#5354]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [ABORT][9] ([i915#5122]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [DMESG-WARN][11] ([i915#7852]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@guc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][13] ([i915#7699]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [FAIL][15] ([fdo#103375]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [DMESG-FAIL][17] ([i915#8497]) -> [ABORT][18] ([i915#7982] / [i915#8865])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865


Build changes
-------------

  * Linux: CI_DRM_13516 -> Patchwork_122426v1

  CI-20190529: 20190529
  CI_DRM_13516: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7435: b6eaa6bfdc94c94b34ec80f437c4b6125eb19357 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122426v1: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

10e36c578447 drm/i915/dg2: Remove Wa_15010599737

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/index.html

--===============6475902789694213509==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Remove Wa_15010599737</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122426/">https://patchwork.freedesktop.org/series/122426/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13516 -&gt; Patchwork_122426v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_122426v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122426v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/index.html</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-pnv-d510 bat-dg2-14 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122426v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122426v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122426v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13516 -&gt; Patchwork_122426v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13516: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7435: b6eaa6bfdc94c94b34ec80f437c4b6125eb19357 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122426v1: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>10e36c578447 drm/i915/dg2: Remove Wa_15010599737</p>

</body>
</html>

--===============6475902789694213509==--
