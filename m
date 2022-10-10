Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34F15F9AAD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 10:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A8A10E45E;
	Mon, 10 Oct 2022 08:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEEDF10E45E;
 Mon, 10 Oct 2022 08:08:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2BADAADD2;
 Mon, 10 Oct 2022 08:08:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3542145175068212480=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Mon, 10 Oct 2022 08:08:57 -0000
Message-ID: <166538933766.29672.799602763518703873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221010065826.32037-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221010065826.32037-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev6=29?=
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

--===============3542145175068212480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev6)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12227 -> Patchwork_105879v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-ctg-p8600 fi-hsw-4200u 

Known issues
------------

  Here are the changes found in Patchwork_105879v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2] ([i915#146] / [i915#6712])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-11}:       [FAIL][3] ([i915#7029]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-dg2-11/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - {bat-dg2-11}:       [DMESG-WARN][5] ([i915#7031]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-dg2-11/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-dg2-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [DMESG-WARN][7] ([i915#5537]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][9] ([i915#5334]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-tgl-mst}:       [DMESG-FAIL][11] ([i915#3987]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-tgl-mst/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-tgl-mst/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][13] ([i915#4983] / [i915#5828]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-rpls-2/igt@i915_selftest@live@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077


Build changes
-------------

  * Linux: CI_DRM_12227 -> Patchwork_105879v6

  CI-20190529: 20190529
  CI_DRM_12227: 74e2443e7681e4d442b45f551ddf12d09a6f00c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7003: 1ea9ec5e7295fbc1cb784be4692971fd342bea53 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v6: 74e2443e7681e4d442b45f551ddf12d09a6f00c3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4efb144611e4 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
851c902de6d0 drm/i915/vm_bind: userptr dma-resv changes
0ee87420f626 drm/i915/vm_bind: Handle persistent vmas in execbuf3
17b15f27c7e9 drm/i915/vm_bind: Expose i915_request_await_bind()
21f5874de3d1 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
7b4354e33199 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
f577b15355e0 drm/i915/vm_bind: Use common execbuf functions in execbuf path
6de45a134738 drm/i915/vm_bind: Abstract out common execbuf functions
e1bae092fbba drm/i915/vm_bind: Add out fence support
5c018260690e drm/i915/vm_bind: Support persistent vma activeness tracking
8a240c07c331 drm/i915/vm_bind: Add support to handle object evictions
1c89a863eca2 drm/i915/vm_bind: Support for VM private BOs
5b0c332e368e drm/i915/vm_bind: Implement bind and unbind of object
e9ff02bf4b3d drm/i915/vm_bind: Add support to create persistent vma
22cecab72289 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
92ce92150202 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
3070c4562b54 drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/index.html

--===============3542145175068212480==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12227 -&gt; Patchwork_105879v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-ctg-p8600 fi-hsw-4200u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-dg2-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7031">i915#7031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-dg2-11/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/fi-tgl-mst/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/fi-tgl-mst/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12227/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5828">i915#5828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v6/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12227 -&gt; Patchwork_105879v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12227: 74e2443e7681e4d442b45f551ddf12d09a6f00c3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7003: 1ea9ec5e7295fbc1cb784be4692971fd342bea53 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v6: 74e2443e7681e4d442b45f551ddf12d09a6f00c3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4efb144611e4 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
851c902de6d0 drm/i915/vm_bind: userptr dma-resv changes<br />
0ee87420f626 drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
17b15f27c7e9 drm/i915/vm_bind: Expose i915_request_await_bind()<br />
21f5874de3d1 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
7b4354e33199 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
f577b15355e0 drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
6de45a134738 drm/i915/vm_bind: Abstract out common execbuf functions<br />
e1bae092fbba drm/i915/vm_bind: Add out fence support<br />
5c018260690e drm/i915/vm_bind: Support persistent vma activeness tracking<br />
8a240c07c331 drm/i915/vm_bind: Add support to handle object evictions<br />
1c89a863eca2 drm/i915/vm_bind: Support for VM private BOs<br />
5b0c332e368e drm/i915/vm_bind: Implement bind and unbind of object<br />
e9ff02bf4b3d drm/i915/vm_bind: Add support to create persistent vma<br />
22cecab72289 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
92ce92150202 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
3070c4562b54 drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============3542145175068212480==--
