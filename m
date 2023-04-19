Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA816E7613
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 11:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3148A10E8F7;
	Wed, 19 Apr 2023 09:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8053610E8F7;
 Wed, 19 Apr 2023 09:17:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CA65AADD2;
 Wed, 19 Apr 2023 09:17:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5434345492430476900=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Wed, 19 Apr 2023 09:17:05 -0000
Message-ID: <168189582550.10530.7428437427363794582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
In-Reply-To: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_multi-gt_instead_of_to=5Fgt=28=29_=28rev2=29?=
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

--===============5434345492430476900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Consider multi-gt instead of to_gt() (rev2)
URL   : https://patchwork.freedesktop.org/series/116677/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13027 -> Patchwork_116677v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116677v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][2] -> [DMESG-WARN][3] ([i915#7699])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][4] ([i915#6367] / [i915#7996])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - bat-adlp-6:         [PASS][5] -> [DMESG-FAIL][6] ([i915#6367] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-adlp-6/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-glk-j4005:       NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][8] ([i915#3546]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-glk-j4005:       [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-glk-j4005:       [DMESG-FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][13] ([i915#7911] / [i915#7982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-rpls-1/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][15] ([i915#7932]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_13027 -> Patchwork_116677v2

  CI-20190529: 20190529
  CI_DRM_13027: 9e1eb302fc69b5d8dc662f1ce7ed8684e87c5751 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7259: 3d3a7f1c041d3f8d84d7457abf96adef0ea071cb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116677v2: 9e1eb302fc69b5d8dc662f1ce7ed8684e87c5751 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3bb5426e95fd drm/i915/selftests: Consider multi-gt instead of to_gt()
38153f366690 drm/i915/gem: Consider multi-gt instead of to_gt()
8a49dfdd37a5 drm/i915/gt: Consider multi-gt instead of to_gt()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/index.html

--===============5434345492430476900==
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
<tr><td><b>Series:</b></td><td>Consider multi-gt instead of to_gt() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116677/">https://patchwork.freedesktop.org/series/116677/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13027 -&gt; Patchwork_116677v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116677v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13027/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116677v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13027 -&gt; Patchwork_116677v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13027: 9e1eb302fc69b5d8dc662f1ce7ed8684e87c5751 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7259: 3d3a7f1c041d3f8d84d7457abf96adef0ea071cb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116677v2: 9e1eb302fc69b5d8dc662f1ce7ed8684e87c5751 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3bb5426e95fd drm/i915/selftests: Consider multi-gt instead of to_gt()<br />
38153f366690 drm/i915/gem: Consider multi-gt instead of to_gt()<br />
8a49dfdd37a5 drm/i915/gt: Consider multi-gt instead of to_gt()</p>

</body>
</html>

--===============5434345492430476900==--
