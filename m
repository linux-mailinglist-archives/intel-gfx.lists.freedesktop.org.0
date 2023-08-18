Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC0F7812E0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 20:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E3C10E0E0;
	Fri, 18 Aug 2023 18:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D738D10E0E0;
 Fri, 18 Aug 2023 18:27:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3601A00CC;
 Fri, 18 Aug 2023 18:27:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5854482317300646713=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gil Dekel" <gildekel@chromium.org>
Date: Fri, 18 Aug 2023 18:27:17 -0000
Message-ID: <169238323786.12739.15762386170756899222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230818170156.2194015-1-gildekel@chromium.org>
In-Reply-To: <20230818170156.2194015-1-gildekel@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?ine_a_final_failure_state_when_link_training_fails?=
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

--===============5854482317300646713==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Define a final failure state when link training fails
URL   : https://patchwork.freedesktop.org/series/122644/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13536 -> Patchwork_122644v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122644v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122644v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122644v1:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-adls-5:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adls-5/igt@dmabuf@all-tests@sanitycheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adls-5/igt@dmabuf@all-tests@sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_122644v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-adls-5:         [PASS][3] -> [DMESG-FAIL][4] ([i915#8189])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adls-5/igt@dmabuf@all-tests@dma_fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adls-5/igt@dmabuf@all-tests@dma_fence.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [PASS][5] -> [INCOMPLETE][6] ([i915#8011])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +30 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [DMESG-WARN][8] ([i915#4423]) -> [ABORT][9] ([i915#4423])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adlp-11/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adlp-11/igt@i915_module_load@load.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [SKIP][10] ([i915#1072]) -> [ABORT][11] ([i915#8860])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860


Build changes
-------------

  * Linux: CI_DRM_13536 -> Patchwork_122644v1

  CI-20190529: 20190529
  CI_DRM_13536: 7a825a06c6ee60a6586ddf8b4adb03ea5262bda7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7444: 7444
  Patchwork_122644v1: 7a825a06c6ee60a6586ddf8b4adb03ea5262bda7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8bd8a6a726dd drm/i915/dp_link_training: Emit a link-status=Bad uevent with trigger property
519f5d898529 drm/i915/dp_link_training: Add a final failing state to link training fallback for MST
77a475c4b818 drm/i915/dp_link_training: Add a final failing state to link training fallback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/index.html

--===============5854482317300646713==
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
<tr><td><b>Series:</b></td><td>Define a final failure state when link training fails</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122644/">https://patchwork.freedesktop.org/series/122644/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13536 -&gt; Patchwork_122644v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122644v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122644v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122644v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@dmabuf@all-tests@sanitycheck:<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adls-5/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adls-5/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122644v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adls-5/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adls-5/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13536/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122644v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13536 -&gt; Patchwork_122644v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13536: 7a825a06c6ee60a6586ddf8b4adb03ea5262bda7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7444: 7444<br />
  Patchwork_122644v1: 7a825a06c6ee60a6586ddf8b4adb03ea5262bda7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8bd8a6a726dd drm/i915/dp_link_training: Emit a link-status=Bad uevent with trigger property<br />
519f5d898529 drm/i915/dp_link_training: Add a final failing state to link training fallback for MST<br />
77a475c4b818 drm/i915/dp_link_training: Add a final failing state to link training fallback</p>

</body>
</html>

--===============5854482317300646713==--
