Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D7D78D65C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 15:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB5D10E524;
	Wed, 30 Aug 2023 13:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4747710E524;
 Wed, 30 Aug 2023 13:55:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B698AADDA;
 Wed, 30 Aug 2023 13:55:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3333010956272621918=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Wed, 30 Aug 2023 13:55:09 -0000
Message-ID: <169340370917.15234.15547623021980243929@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230830121524.15101-1-gustavo.sousa@intel.com>
In-Reply-To: <20230830121524.15101-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/cx0=3A_Check_and_increase_msgbus_timeout_threshold_=28rev?=
 =?utf-8?q?2=29?=
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

--===============3333010956272621918==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/cx0: Check and increase msgbus timeout threshold (rev2)
URL   : https://patchwork.freedesktop.org/series/122982/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13576 -> Patchwork_122982v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122982v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122982v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122982v2:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests@sanitycheck:
    - fi-glk-j4005:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html

  * igt@gem_exec_fence@basic-busy:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_exec_fence@basic-busy.html

  
Known issues
------------

  Here are the changes found in Patchwork_122982v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-glk-j4005:       [PASS][4] -> [DMESG-FAIL][5] ([i915#8189])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@prime_vgem@basic-fence-read:
    - fi-apl-guc:         [PASS][10] -> [ABORT][11] ([i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-apl-guc/igt@prime_vgem@basic-fence-read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-apl-guc/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][12] ([i915#7699]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [ABORT][14] ([i915#9243]) -> [ABORT][15] ([i915#8469] / [i915#8668] / [i915#9243])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879
  [i915#9243]: https://gitlab.freedesktop.org/drm/intel/issues/9243


Build changes
-------------

  * Linux: CI_DRM_13576 -> Patchwork_122982v2

  CI-20190529: 20190529
  CI_DRM_13576: a2ab5849e2b22eac1d232b028c9d2814ddc1a743 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7459: 7459
  Patchwork_122982v2: a2ab5849e2b22eac1d232b028c9d2814ddc1a743 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1771a646ecf4 drm/i915/cx0: Check and increase msgbus timeout threshold

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/index.html

--===============3333010956272621918==
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
<tr><td><b>Series:</b></td><td>drm/i915/cx0: Check and increase msgbus timeout threshold (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122982/">https://patchwork.freedesktop.org/series/122982/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13576 -&gt; Patchwork_122982v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122982v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122982v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122982v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_exec_fence@basic-busy.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122982v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/fi-apl-guc/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/fi-apl-guc/igt@prime_vgem@basic-fence-read.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13576/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9243">i915#9243</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9243">i915#9243</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13576 -&gt; Patchwork_122982v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13576: a2ab5849e2b22eac1d232b028c9d2814ddc1a743 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7459: 7459<br />
  Patchwork_122982v2: a2ab5849e2b22eac1d232b028c9d2814ddc1a743 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1771a646ecf4 drm/i915/cx0: Check and increase msgbus timeout threshold</p>

</body>
</html>

--===============3333010956272621918==--
