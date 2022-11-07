Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C012961F20D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 12:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4F110E174;
	Mon,  7 Nov 2022 11:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55DEB10E149;
 Mon,  7 Nov 2022 11:40:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E2DBA7E03;
 Mon,  7 Nov 2022 11:40:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6898396081514165672=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Mon, 07 Nov 2022 11:40:53 -0000
Message-ID: <166782125328.17761.2415821948803583362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107085210.17221-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221107085210.17221-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev9=29?=
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

--===============6898396081514165672==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev9)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12348 -> Patchwork_105879v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/index.html

Participating hosts (39 -> 27)
------------------------------

  Missing    (12): fi-rkl-11600 fi-bdw-samus bat-dg2-8 bat-dg2-9 bat-adlp-6 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_105879v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][1] -> [SKIP][2] ([fdo#109271]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bdw-gvtdvm:      [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][6] ([i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][7] ([i915#4785]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785


Build changes
-------------

  * Linux: CI_DRM_12348 -> Patchwork_105879v9

  CI-20190529: 20190529
  CI_DRM_12348: 274249f2d91b2b43ee26d9363b0f7426c6445ba2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v9: 274249f2d91b2b43ee26d9363b0f7426c6445ba2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3605637f03fd drm/i915/vm_bind: Async vm_unbind support
a4b64d07b0e3 drm/i915/vm_bind: Render VM_BIND documentation
0d9260049f18 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
e9aaac78570a drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
924c73f931e8 drm/i915/vm_bind: userptr dma-resv changes
3317504ec1d7 drm/i915/vm_bind: Handle persistent vmas in execbuf3
534980c7c27f drm/i915/vm_bind: Expose i915_request_await_bind()
bb666016bc49 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
2eabb3dd9832 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
ff9a6e7dd60b drm/i915/vm_bind: Use common execbuf functions in execbuf path
e348075657f5 drm/i915/vm_bind: Abstract out common execbuf functions
9a9fa330ab38 drm/i915/vm_bind: Add out fence support
14c5398b589f drm/i915/vm_bind: Support persistent vma activeness tracking
4b59949c1f82 drm/i915/vm_bind: Add support to handle object evictions
f3c79a27595c drm/i915/vm_bind: Support for VM private BOs
c0e9b4a1c59c drm/i915/vm_bind: Implement bind and unbind of object
4bf53f2ce1a2 drm/i915/vm_bind: Add support to create persistent vma
9e6f21ed8715 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
788e89f09d86 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
7276f31bfd1d drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/index.html

--===============6898396081514165672==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12348 -&gt; Patchwork_105879v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/index.html</p>
<h2>Participating hosts (39 -&gt; 27)</h2>
<p>Missing    (12): fi-rkl-11600 fi-bdw-samus bat-dg2-8 bat-dg2-9 bat-adlp-6 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12348/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v9/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12348 -&gt; Patchwork_105879v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12348: 274249f2d91b2b43ee26d9363b0f7426c6445ba2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v9: 274249f2d91b2b43ee26d9363b0f7426c6445ba2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3605637f03fd drm/i915/vm_bind: Async vm_unbind support<br />
a4b64d07b0e3 drm/i915/vm_bind: Render VM_BIND documentation<br />
0d9260049f18 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
e9aaac78570a drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts<br />
924c73f931e8 drm/i915/vm_bind: userptr dma-resv changes<br />
3317504ec1d7 drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
534980c7c27f drm/i915/vm_bind: Expose i915_request_await_bind()<br />
bb666016bc49 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
2eabb3dd9832 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
ff9a6e7dd60b drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
e348075657f5 drm/i915/vm_bind: Abstract out common execbuf functions<br />
9a9fa330ab38 drm/i915/vm_bind: Add out fence support<br />
14c5398b589f drm/i915/vm_bind: Support persistent vma activeness tracking<br />
4b59949c1f82 drm/i915/vm_bind: Add support to handle object evictions<br />
f3c79a27595c drm/i915/vm_bind: Support for VM private BOs<br />
c0e9b4a1c59c drm/i915/vm_bind: Implement bind and unbind of object<br />
4bf53f2ce1a2 drm/i915/vm_bind: Add support to create persistent vma<br />
9e6f21ed8715 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
788e89f09d86 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
7276f31bfd1d drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============6898396081514165672==--
