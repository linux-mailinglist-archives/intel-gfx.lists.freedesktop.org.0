Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868303AA4DE
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 22:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F0C89F38;
	Wed, 16 Jun 2021 20:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C2EF89F38;
 Wed, 16 Jun 2021 20:00:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CE49A8830;
 Wed, 16 Jun 2021 20:00:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 16 Jun 2021 20:00:16 -0000
Message-ID: <162387361622.8273.11404385478693374009@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
In-Reply-To: <20210616004213.1705079-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRXhw?=
 =?utf-8?q?licity_steer_l3bank_multicast_reads_when_necessary_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0947252840=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0947252840==
Content-Type: multipart/alternative;
 boundary="===============4995644409340043720=="

--===============4995644409340043720==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Explicity steer l3bank multicast reads when necessary (rev4)
URL   : https://patchwork.freedesktop.org/series/91485/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10230 -> Patchwork_20391
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20391:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_engines:
    - {fi-ehl-2}:         [DMESG-FAIL][1] ([i915#1222]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-ehl-2/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-ehl-2/igt@i915_selftest@live@gt_engines.html
    - {fi-jsl-1}:         [DMESG-FAIL][3] ([i915#1222]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-jsl-1/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-jsl-1/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_20391 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@requests:
    - fi-cml-s:           [PASS][6] -> [DMESG-FAIL][7] ([i915#3432])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-cml-s/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-cml-s/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-icl-y:           NOTRUN -> [FAIL][8] ([i915#1569])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@dmabuf@all@dma_fence:
    - fi-pnv-d510:        [FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-pnv-d510/igt@dmabuf@all@dma_fence.html

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [DMESG-WARN][11] ([i915#1222]) -> [PASS][12] +37 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-ehl-2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-ehl-2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-jsl-1}:         [DMESG-WARN][13] ([i915#1222]) -> [PASS][14] +37 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][15] ([i915#1814] / [i915#3363]) -> [FAIL][16] ([i915#1569] / [i915#3363] / [k.org#202973])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-icl-u2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3432]: https://gitlab.freedesktop.org/drm/intel/issues/3432
  [k.org#202973]: https://bugzilla.kernel.org/show_bug.cgi?id=202973


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10230 -> Patchwork_20391

  CI-20190529: 20190529
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20391: cbcc83352cd3f1af57b8b0bef30daf714ecbbe7c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cbcc83352cd3 drm/i915: Add support for explicit L3BANK steering
b8028962cf44 drm/i915: Add GT support for multiple types of multicast steering
4c22a61b7efa drm/i915: extract steered reg access to common function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html

--===============4995644409340043720==
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
<tr><td><b>Series:</b></td><td>Explicity steer l3bank multicast reads when necessary (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91485/">https://patchwork.freedesktop.org/series/91485/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10230 -&gt; Patchwork_20391</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20391:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-ehl-2/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-ehl-2/igt@i915_selftest@live@gt_engines.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-jsl-1/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-jsl-1/igt@i915_selftest@live@gt_engines.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20391 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-cml-s/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-cml-s/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3432">i915#3432</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-ehl-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-ehl-2/igt@i915_module_load@reload.html">PASS</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> +37 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10230/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20391/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202973">k.org#202973</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10230 -&gt; Patchwork_20391</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10230: 03937139a4149d1cb76e7677e5da15bc414d56dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20391: cbcc83352cd3f1af57b8b0bef30daf714ecbbe7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cbcc83352cd3 drm/i915: Add support for explicit L3BANK steering<br />
b8028962cf44 drm/i915: Add GT support for multiple types of multicast steering<br />
4c22a61b7efa drm/i915: extract steered reg access to common function</p>

</body>
</html>

--===============4995644409340043720==--

--===============0947252840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0947252840==--
