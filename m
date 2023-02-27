Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7026A4D63
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 22:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E3810E4A6;
	Mon, 27 Feb 2023 21:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 797FE10E448;
 Mon, 27 Feb 2023 21:39:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 713CEA02F0;
 Mon, 27 Feb 2023 21:39:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5492781722831527345=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 27 Feb 2023 21:39:14 -0000
Message-ID: <167753395443.26341.8891490803332854548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227210818.1731172-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230227210818.1731172-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_error_propagation_amongst_requests?=
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

--===============5492781722831527345==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix error propagation amongst requests
URL   : https://patchwork.freedesktop.org/series/114444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12787 -> Patchwork_114444v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114444v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114444v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): bat-adls-5 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114444v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - bat-adls-5:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/bat-adls-5/igt@gem_exec_fence@basic-busy@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-kbl-x1275:       [DMESG-WARN][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_114444v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adls-5:         NOTRUN -> [SKIP][4] ([i915#7456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/bat-adls-5/igt@debugfs_test@basic-hwmon.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-kbl-x1275:       [ABORT][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html

  
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * Linux: CI_DRM_12787 -> Patchwork_114444v1

  CI-20190529: 20190529
  CI_DRM_12787: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114444v1: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4de414be1dc4 drm/i915/gt: Make sure that errors are propagated through request chains
5c5771ccc385 drm/i915: Throttle for ringspace prior to taking the timeline mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/index.html

--===============5492781722831527345==
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
<tr><td><b>Series:</b></td><td>Fix error propagation amongst requests</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114444/">https://patchwork.freedesktop.org/series/114444/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12787 -&gt; Patchwork_114444v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114444v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114444v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): bat-adls-5 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114444v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vecs0:<ul>
<li>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/bat-adls-5/igt@gem_exec_fence@basic-busy@vecs0.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vecs0:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114444v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@basic-hwmon:<ul>
<li>bat-adls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/bat-adls-5/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vcs0:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114444v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12787 -&gt; Patchwork_114444v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12787: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114444v1: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4de414be1dc4 drm/i915/gt: Make sure that errors are propagated through request chains<br />
5c5771ccc385 drm/i915: Throttle for ringspace prior to taking the timeline mutex</p>

</body>
</html>

--===============5492781722831527345==--
