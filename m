Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446953AA36E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 20:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1A86E7E6;
	Wed, 16 Jun 2021 18:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBD6D6E7DC;
 Wed, 16 Jun 2021 18:44:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B25B1AA01E;
 Wed, 16 Jun 2021 18:44:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jiapeng Chong" <jiapeng.chong@linux.alibaba.com>
Date: Wed, 16 Jun 2021 18:44:57 -0000
Message-ID: <162386909770.8272.18157506884355180218@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1623823318-6759-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1623823318-6759-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_duplicate_included_intel=5Fregion=5Flmem=2Eh?=
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
Content-Type: multipart/mixed; boundary="===============0823212039=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0823212039==
Content-Type: multipart/alternative;
 boundary="===============3581619399159969926=="

--===============3581619399159969926==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix duplicate included intel_region_lmem.h
URL   : https://patchwork.freedesktop.org/series/91571/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10230 -> Patchwork_20387
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/index.html

Known issues
------------

  Here are the changes found in Patchwork_20387 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] ([i915#1602])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][3] ([i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@dmabuf@all@dma_fence:
    - fi-pnv-d510:        [FAIL][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-pnv-d510/igt@dmabuf@all@dma_fence.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10230 -> Patchwork_20387

  CI-20190529: 20190529
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20387: e7f5505c8345f569d59d359fbd9d276d23c4556f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e7f5505c8345 drm/i915/gt: Fix duplicate included intel_region_lmem.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/index.html

--===============3581619399159969926==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix duplicate included intel_region_lmem.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91571/">https://patchwork.freedesktop.org/series/91571/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10230 -&gt; Patchwork_20387</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20387 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20387/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10230 -&gt; Patchwork_20387</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20387: e7f5505c8345f569d59d359fbd9d276d23c4556f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e7f5505c8345 drm/i915/gt: Fix duplicate included intel_region_lmem.h</p>

</body>
</html>

--===============3581619399159969926==--

--===============0823212039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0823212039==--
