Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E54C6AC73
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 18:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3A510E509;
	Tue, 18 Nov 2025 17:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D6210E505;
 Tue, 18 Nov 2025 17:00:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6174218013397961561=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Use_symmetric?=
 =?utf-8?q?_free_for_vma_resources_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zilin Guan" <zilin@seu.edu.cn>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Nov 2025 17:00:40 -0000
Message-ID: <176348524071.6923.7080830633982085117@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251118140118.220339-1-andi.shyti@linux.intel.com>
In-Reply-To: <20251118140118.220339-1-andi.shyti@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6174218013397961561==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use symmetric free for vma resources (rev2)
URL   : https://patchwork.freedesktop.org/series/157667/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17565 -> Patchwork_157667v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/index.html

Participating hosts (46 -> 44)
------------------------------

  Missing    (2): fi-snb-2520m bat-adlp-6 

Known issues
------------

  Here are the changes found in Patchwork_157667v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - bat-twl-1:          NOTRUN -> [SKIP][1] ([i915#15249])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][2] -> [DMESG-FAIL][3] ([i915#12061]) +1 other test dmesg-fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-8/igt@i915_selftest@live.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][4] -> [DMESG-FAIL][5] ([i915#12061]) +1 other test dmesg-fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-twl-1:          [ABORT][6] ([i915#14365]) -> [PASS][7] +1 other test pass
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-1/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][8] ([i915#12061]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][10] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][11] ([i915#12061] / [i915#14204])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][12] ([i915#13929]) -> [DMESG-FAIL][13] ([i915#14204])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live@mman.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#15249]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249


Build changes
-------------

  * Linux: CI_DRM_17565 -> Patchwork_157667v2

  CI-20190529: 20190529
  CI_DRM_17565: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8631: 8631
  Patchwork_157667v2: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/index.html

--===============6174218013397961561==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use symmetric free for vma resources (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157667/">https://patchwork.freedesktop.org/series/157667/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17565 -&gt; Patchwork_157667v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/index.html</p>
<h2>Participating hosts (46 -&gt; 44)</h2>
<p>Missing    (2): fi-snb-2520m bat-adlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157667v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-twl-1/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157667v2/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17565 -&gt; Patchwork_157667v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17565: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8631: 8631<br />
  Patchwork_157667v2: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6174218013397961561==--
