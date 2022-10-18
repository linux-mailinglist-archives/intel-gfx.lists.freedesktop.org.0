Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A908060266F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D95E10E9F4;
	Tue, 18 Oct 2022 08:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9427610E9F4;
 Tue, 18 Oct 2022 08:06:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C711AA0ED;
 Tue, 18 Oct 2022 08:06:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2639532307113360023=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 18 Oct 2022 08:06:55 -0000
Message-ID: <166608041554.20424.4515633025655586725@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev7=29?=
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

--===============2639532307113360023==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev7)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12254 -> Patchwork_105879v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html

Participating hosts (45 -> 45)
------------------------------

  Additional (2): fi-hsw-4770 bat-dg1-5 
  Missing    (2): fi-bdw-samus fi-kbl-guc 

Known issues
------------

  Here are the changes found in Patchwork_105879v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#3012])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][4] ([i915#7221])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1072]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#4312] / [i915#5594])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][9] ([i915#7220])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/bat-dg1-5/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#7220]: https://gitlab.freedesktop.org/drm/intel/issues/7220
  [i915#7221]: https://gitlab.freedesktop.org/drm/intel/issues/7221
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12254 -> Patchwork_105879v7

  CI-20190529: 20190529
  CI_DRM_12254: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v7: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

48b240871f2d drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
a07e041f8653 drm/i915/vm_bind: userptr dma-resv changes
e4ad670ef890 drm/i915/vm_bind: Handle persistent vmas in execbuf3
cfcbb1e5fe74 drm/i915/vm_bind: Expose i915_request_await_bind()
379ab291f690 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
68859d7ad749 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
1a3fc9620771 drm/i915/vm_bind: Use common execbuf functions in execbuf path
9b9c5d7176c3 drm/i915/vm_bind: Abstract out common execbuf functions
801e74a7928f drm/i915/vm_bind: Add out fence support
7bcb4aa91dbb drm/i915/vm_bind: Support persistent vma activeness tracking
dcff4ae9f609 drm/i915/vm_bind: Add support to handle object evictions
37716a795a22 drm/i915/vm_bind: Support for VM private BOs
aeaf3c8189f0 drm/i915/vm_bind: Implement bind and unbind of object
8d2d38a3c483 drm/i915/vm_bind: Add support to create persistent vma
6421e3233284 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
81a9071de244 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
b6c9fcf55f30 drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html

--===============2639532307113360023==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12254 -&gt; Patchwork_105879v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html</p>
<h2>Participating hosts (45 -&gt; 45)</h2>
<p>Additional (2): fi-hsw-4770 bat-dg1-5 <br />
  Missing    (2): fi-bdw-samus fi-kbl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7221">i915#7221</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7220">i915#7220</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12254 -&gt; Patchwork_105879v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12254: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v7: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>48b240871f2d drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
a07e041f8653 drm/i915/vm_bind: userptr dma-resv changes<br />
e4ad670ef890 drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
cfcbb1e5fe74 drm/i915/vm_bind: Expose i915_request_await_bind()<br />
379ab291f690 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
68859d7ad749 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
1a3fc9620771 drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
9b9c5d7176c3 drm/i915/vm_bind: Abstract out common execbuf functions<br />
801e74a7928f drm/i915/vm_bind: Add out fence support<br />
7bcb4aa91dbb drm/i915/vm_bind: Support persistent vma activeness tracking<br />
dcff4ae9f609 drm/i915/vm_bind: Add support to handle object evictions<br />
37716a795a22 drm/i915/vm_bind: Support for VM private BOs<br />
aeaf3c8189f0 drm/i915/vm_bind: Implement bind and unbind of object<br />
8d2d38a3c483 drm/i915/vm_bind: Add support to create persistent vma<br />
6421e3233284 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
81a9071de244 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
b6c9fcf55f30 drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============2639532307113360023==--
