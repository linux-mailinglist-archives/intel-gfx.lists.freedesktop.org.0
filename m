Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C065178BB58
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 01:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B08C10E36B;
	Mon, 28 Aug 2023 23:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DBBB10E36B;
 Mon, 28 Aug 2023 23:09:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35CC9A00E8;
 Mon, 28 Aug 2023 23:09:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6155875433977373494=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Mon, 28 Aug 2023 23:09:38 -0000
Message-ID: <169326417818.20016.11765345306938601954@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230828220756.119766-1-gustavo.sousa@intel.com>
In-Reply-To: <20230828220756.119766-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVGVz?=
 =?utf-8?q?t_MTL_DMC_v2=2E16_=28rev2=29?=
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

--===============6155875433977373494==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Test MTL DMC v2.16 (rev2)
URL   : https://patchwork.freedesktop.org/series/122986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13572 -> Patchwork_122986v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122986v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122986v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-kbl-soraka bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122986v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_122986v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-2:         [PASS][3] -> [ABORT][4] ([i915#7978] / [i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#6645])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][6] ([i915#7982]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [SKIP][8] ([i915#1072]) -> [ABORT][9] ([i915#8469] / [i915#8668])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13572 -> Patchwork_122986v2

  CI-20190529: 20190529
  CI_DRM_13572: f2dfaec0582a995d5e74e5b1896dd6772f5ca9e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7454: 7454
  Patchwork_122986v2: f2dfaec0582a995d5e74e5b1896dd6772f5ca9e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

af581650f082 Test MTL DMC v2.16

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/index.html

--===============6155875433977373494==
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
<tr><td><b>Series:</b></td><td>Test MTL DMC v2.16 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122986/">https://patchwork.freedesktop.org/series/122986/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13572 -&gt; Patchwork_122986v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122986v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122986v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-kbl-soraka bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122986v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122986v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13572/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122986v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13572 -&gt; Patchwork_122986v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13572: f2dfaec0582a995d5e74e5b1896dd6772f5ca9e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7454: 7454<br />
  Patchwork_122986v2: f2dfaec0582a995d5e74e5b1896dd6772f5ca9e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>af581650f082 Test MTL DMC v2.16</p>

</body>
</html>

--===============6155875433977373494==--
