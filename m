Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7F06E5A8E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 09:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2180210E69C;
	Tue, 18 Apr 2023 07:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3261310E69C;
 Tue, 18 Apr 2023 07:35:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 299DCAADE7;
 Tue, 18 Apr 2023 07:35:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3191246845368201477=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wayne Lin" <wayne.lin@amd.com>
Date: Tue, 18 Apr 2023 07:35:53 -0000
Message-ID: <168180335313.17888.6491312048158171859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418060905.4078976-1-Wayne.Lin@amd.com>
In-Reply-To: <20230418060905.4078976-1-Wayne.Lin@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Clear_MSG=5FRDY_flag_before_sending_new_message?=
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

--===============3191246845368201477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Clear MSG_RDY flag before sending new message
URL   : https://patchwork.freedesktop.org/series/116623/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13023 -> Patchwork_116623v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116623v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116623v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116623v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-cfl-8700k:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_116623v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][3] -> [DMESG-FAIL][4] ([i915#4258])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#7911] / [i915#7982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][7] -> [ABORT][8] ([i915#4983] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_13023 -> Patchwork_116623v1

  CI-20190529: 20190529
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116623v1: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9c6a56132f18 drm/dp_mst: Clear MSG_RDY flag before sending new message

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/index.html

--===============3191246845368201477==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Clear MSG_RDY flag before sending new message</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116623/">https://patchwork.freedesktop.org/series/116623/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13023 -&gt; Patchwork_116623v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116623v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116623v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116623v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116623v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116623v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13023 -&gt; Patchwork_116623v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116623v1: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9c6a56132f18 drm/dp_mst: Clear MSG_RDY flag before sending new message</p>

</body>
</html>

--===============3191246845368201477==--
