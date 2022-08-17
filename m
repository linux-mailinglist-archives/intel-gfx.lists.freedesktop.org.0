Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 708C2597331
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 17:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E5998A09;
	Wed, 17 Aug 2022 15:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0430E96AE0;
 Wed, 17 Aug 2022 15:42:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1785AA917;
 Wed, 17 Aug 2022 15:42:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0747930021280522257=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 17 Aug 2022 15:42:24 -0000
Message-ID: <166075094498.11664.5281271249951053466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
In-Reply-To: <20220817150941.25447-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgREdG?=
 =?utf-8?q?X_mmap_with_rpm?=
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

--===============0747930021280522257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DGFX mmap with rpm
URL   : https://patchwork.freedesktop.org/series/107400/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11993 -> Patchwork_107400v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107400v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107400v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/index.html

Participating hosts (31 -> 34)
------------------------------

  Additional (3): fi-icl-u2 fi-tgl-dsi bat-adlp-4 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107400v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - bat-dg1-6:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-6/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-dg1-6/igt@gem_busy@busy@all.html
    - bat-dg1-5:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-5/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-dg1-5/igt@gem_busy@busy@all.html

  * igt@i915_module_load@load:
    - fi-icl-u2:          NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-icl-u2/igt@i915_module_load@load.html
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-adlp-4/igt@i915_module_load@load.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_107400v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
    - fi-pnv-d510:        [PASS][8] -> [FAIL][9] ([i915#2122])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-adlp-4/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][12] ([i915#4528]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1245]: https://gitlab.freedesktop.org/drm/intel/issues/1245
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596


Build changes
-------------

  * Linux: CI_DRM_11993 -> Patchwork_107400v1

  CI-20190529: 20190529
  CI_DRM_11993: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6629: d24e986fb3b2ab6d755498d27828bc85931d12ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107400v1: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

08e0d07fba36 drm/i915/dgfx: Runtime resume the dgpu on user fault
319f12d0972f drm/i915/dgfx: Release mmap on rpm suspend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/index.html

--===============0747930021280522257==
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
<tr><td><b>Series:</b></td><td>DGFX mmap with rpm</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107400/">https://patchwork.freedesktop.org/series/107400/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11993 -&gt; Patchwork_107400v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107400v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107400v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/index.html</p>
<h2>Participating hosts (31 -&gt; 34)</h2>
<p>Additional (3): fi-icl-u2 fi-tgl-dsi bat-adlp-4 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107400v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-6/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-dg1-6/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/bat-dg1-5/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-dg1-5/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-icl-u2/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-adlp-4/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107400v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11993/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11993 -&gt; Patchwork_107400v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11993: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6629: d24e986fb3b2ab6d755498d27828bc85931d12ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107400v1: 2dfc67084761ba9b6259873bd574548dc4827296 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>08e0d07fba36 drm/i915/dgfx: Runtime resume the dgpu on user fault<br />
319f12d0972f drm/i915/dgfx: Release mmap on rpm suspend</p>

</body>
</html>

--===============0747930021280522257==--
