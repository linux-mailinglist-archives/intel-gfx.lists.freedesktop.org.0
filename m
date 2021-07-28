Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333A03D9328
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 18:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BA66E868;
	Wed, 28 Jul 2021 16:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B31106E868;
 Wed, 28 Jul 2021 16:25:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AADB5A66C9;
 Wed, 28 Jul 2021 16:25:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 28 Jul 2021 16:25:38 -0000
Message-ID: <162748953866.22805.15166415671174722960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728141249.357067-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210728141249.357067-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_Transparent_Hugepages_when_IOMMU_is_enabled?=
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
Content-Type: multipart/mixed; boundary="===============0144031252=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0144031252==
Content-Type: multipart/alternative;
 boundary="===============3999614121887758134=="

--===============3999614121887758134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use Transparent Hugepages when IOMMU is enabled
URL   : https://patchwork.freedesktop.org/series/93122/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10411 -> Patchwork_20724
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20724 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20724, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20724:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hugepages:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-u2/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-u2/igt@i915_selftest@live@hugepages.html
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-icl-y/igt@i915_selftest@live@hugepages.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-icl-y/igt@i915_selftest@live@hugepages.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-ivb-3770/igt@i915_selftest@live@hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-ivb-3770/igt@i915_selftest@live@hugepages.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - fi-tgl-1115g4:      [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hugepages:
    - {fi-ehl-2}:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-ehl-2/igt@i915_selftest@live@hugepages.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-ehl-2/igt@i915_selftest@live@hugepages.html
    - {fi-jsl-1}:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-jsl-1/igt@i915_selftest@live@hugepages.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-jsl-1/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_20724 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][15] -> [DMESG-FAIL][16] ([i915#2927])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#1436])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][18] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2426] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][19] ([i915#1888]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10411 -> Patchwork_20724

  CI-20190529: 20190529
  CI_DRM_10411: 2c25ff42a7175b652d93ac3555d4ae13456beb4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20724: 1e72a7f598239d1265a99ab616be7f4fe4773bd0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1e72a7f59823 drm/i915: Use Transparent Hugepages when IOMMU is enabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/index.html

--===============3999614121887758134==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use Transparent Hugepages when IOMMU is enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93122/">https://patchwork.freedesktop.org/series/93122/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10411 -&gt; Patchwork_20724</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20724 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20724, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20724:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-u2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-u2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-icl-y/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-icl-y/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-ivb-3770/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-ivb-3770/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-1115g4/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-ehl-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-ehl-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-jsl-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-jsl-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20724 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10411/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20724/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10411 -&gt; Patchwork_20724</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10411: 2c25ff42a7175b652d93ac3555d4ae13456beb4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20724: 1e72a7f598239d1265a99ab616be7f4fe4773bd0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1e72a7f59823 drm/i915: Use Transparent Hugepages when IOMMU is enabled</p>

</body>
</html>

--===============3999614121887758134==--

--===============0144031252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0144031252==--
