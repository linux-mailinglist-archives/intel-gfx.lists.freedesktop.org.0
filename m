Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FE86E5923
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 08:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E7910E68D;
	Tue, 18 Apr 2023 06:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8429210E68B;
 Tue, 18 Apr 2023 06:10:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C033AADE7;
 Tue, 18 Apr 2023 06:10:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7291650150548473252=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 18 Apr 2023 06:10:18 -0000
Message-ID: <168179821850.17885.10268638506134001840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418052221.593983-1-jouni.hogander@intel.com>
In-Reply-To: <20230418052221.593983-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_dma_fences_in_dirtyfb_ioctl?=
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

--===============7291650150548473252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle dma fences in dirtyfb ioctl
URL   : https://patchwork.freedesktop.org/series/116620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13023 -> Patchwork_116620v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116620v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#8308])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][3] -> [DMESG-FAIL][4] ([i915#4258])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][5] -> [ABORT][6] ([i915#7913] / [i915#7982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-2/igt@i915_selftest@live@requests.html
    - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#7911] / [i915#7982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13023 -> Patchwork_116620v1

  CI-20190529: 20190529
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116620v1: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1734e1708c75 drm/i915: Handle dma fences in dirtyfb callback
ee6bcd38dcb5 drm/i915: Add new frontbuffer tracking interface to queue flush

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/index.html

--===============7291650150548473252==
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
<tr><td><b>Series:</b></td><td>Handle dma fences in dirtyfb ioctl</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116620/">https://patchwork.freedesktop.org/series/116620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13023 -&gt; Patchwork_116620v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116620v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13023 -&gt; Patchwork_116620v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116620v1: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1734e1708c75 drm/i915: Handle dma fences in dirtyfb callback<br />
ee6bcd38dcb5 drm/i915: Add new frontbuffer tracking interface to queue flush</p>

</body>
</html>

--===============7291650150548473252==--
