Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7C64AC44
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 01:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BB610E2B7;
	Tue, 13 Dec 2022 00:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79FCE10E2B7;
 Tue, 13 Dec 2022 00:23:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 726A9AA0ED;
 Tue, 13 Dec 2022 00:23:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6820099257649373343=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 13 Dec 2022 00:23:11 -0000
Message-ID: <167089099143.25537.14302381994553885644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev12=29?=
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

--===============6820099257649373343==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev12)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12497 -> Patchwork_105879v12
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/index.html

Participating hosts (18 -> 19)
------------------------------

  Additional (1): fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v12:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - fi-rkl-11600:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-ehl-2}:         NOTRUN -> [SKIP][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-icl-u2:          NOTRUN -> [SKIP][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-icl-u2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-adl-ddr5:        NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-adl-ddr5/igt@i915_vm_bind_basic@basic-smem.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - {fi-jsl-1}:         NOTRUN -> [SKIP][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12497 and Patchwork_105879v12:

### New IGT tests (8) ###

  * igt@gem_exec3_basic@basic:
    - Statuses : 16 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic-smem:
    - Statuses : 19 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic:
    - Statuses : 16 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_105879v12 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * {igt@gem_exec3_basic@basic} (NEW):
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][7] ([fdo#109271]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271]) +47 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-pnv-d510/igt@gem_exec3_basic@basic.html

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - fi-kbl-7567u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-kbl-7567u/igt@i915_vm_bind_basic@basic-smem.html
    - fi-snb-2600:        NOTRUN -> [SKIP][10] ([fdo#109271]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-snb-2600/igt@i915_vm_bind_basic@basic-smem.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][11] ([fdo#109271]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-kbl-8809g/igt@i915_vm_bind_basic@basic-smem.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][12] ([fdo#109271]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][13] ([fdo#112080])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][14] ([fdo#109271]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - fi-glk-j4005:       NOTRUN -> [SKIP][16] ([fdo#109271]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-glk-j4005/igt@i915_vm_bind_sanity@basic.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][17] ([fdo#109271]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-hsw-4770/igt@i915_vm_bind_sanity@basic.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][18] ([fdo#109271]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-skl-6700k2/igt@i915_vm_bind_sanity@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][19] ([fdo#109271]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][20] ([fdo#109271]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-ivb-3770/igt@i915_vm_bind_sanity@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][21] ([i915#6298]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12497/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * IGT: IGT_7091 -> IGTPW_8223
  * Linux: CI_DRM_12497 -> Patchwork_105879v12

  CI-20190529: 20190529
  CI_DRM_12497: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8223: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8223/index.html
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v12: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9060d94620ae drm/i915/vm_bind: Support capture of persistent mappings
f82477458de3 drm/i915/vm_bind: Properly build persistent map sg table
d5d3e1d080a1 drm/i915/vm_bind: Async vm_unbind support
9efdf55f07b9 drm/i915/vm_bind: Render VM_BIND documentation
55adb6f1669f drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
f9591de413d1 drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
a68132ad19ae drm/i915/vm_bind: userptr dma-resv changes
da021635700e drm/i915/vm_bind: Handle persistent vmas in execbuf3
dda58e8552fa drm/i915/vm_bind: Expose i915_request_await_bind()
93de7b25bd87 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
c81bbffabc1d drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
abe6e869b7cc drm/i915/vm_bind: Use common execbuf functions in execbuf path
cadfc45f8f6c drm/i915/vm_bind: Abstract out common execbuf functions
152ea60f2980 drm/i915/vm_bind: Add out fence support
8fd7c1800f47 drm/i915/vm_bind: Support persistent vma activeness tracking
6bd1ba0b3a80 drm/i915/vm_bind: Add support to handle object evictions
2ba490f08d99 drm/i915/vm_bind: Support for VM private BOs
8b345bcb80b0 drm/i915/vm_bind: Implement bind and unbind of object
731a2935d9c6 drm/i915/vm_bind: Add support to create persistent vma
3431ef35ffca drm/i915/vm_bind: Support partially mapped vma resource
ebe489184ee0 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
c83b566c45b8 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
c9a1347f2eb8 drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/index.html

--===============6820099257649373343==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12497 -&gt; Patchwork_105879v12</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/index.html</p>
<h2>Participating hosts (18 -&gt; 19)</h2>
<p>Additional (1): fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v12:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-icl-u2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-adl-ddr5/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12497 and Patchwork_105879v12:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@gem_exec3_basic@basic:</p>
<ul>
<li>Statuses : 16 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic-smem:</p>
<ul>
<li>Statuses : 19 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic:</p>
<ul>
<li>Statuses : 16 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v12 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>{igt@gem_exec3_basic@basic} (NEW):</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-pnv-d510/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +47 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-kbl-7567u/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-snb-2600/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-kbl-8809g/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-glk-j4005/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-hsw-4770/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-skl-6700k2/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-ivb-3770/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12497/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v12/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7091 -&gt; IGTPW_8223</li>
<li>Linux: CI_DRM_12497 -&gt; Patchwork_105879v12</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12497: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8223: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8223/index.html<br />
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v12: 6636ff92fd32bda3fed63832bc12bf2a9d7c1c33 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9060d94620ae drm/i915/vm_bind: Support capture of persistent mappings<br />
f82477458de3 drm/i915/vm_bind: Properly build persistent map sg table<br />
d5d3e1d080a1 drm/i915/vm_bind: Async vm_unbind support<br />
9efdf55f07b9 drm/i915/vm_bind: Render VM_BIND documentation<br />
55adb6f1669f drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
f9591de413d1 drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts<br />
a68132ad19ae drm/i915/vm_bind: userptr dma-resv changes<br />
da021635700e drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
dda58e8552fa drm/i915/vm_bind: Expose i915_request_await_bind()<br />
93de7b25bd87 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
c81bbffabc1d drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
abe6e869b7cc drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
cadfc45f8f6c drm/i915/vm_bind: Abstract out common execbuf functions<br />
152ea60f2980 drm/i915/vm_bind: Add out fence support<br />
8fd7c1800f47 drm/i915/vm_bind: Support persistent vma activeness tracking<br />
6bd1ba0b3a80 drm/i915/vm_bind: Add support to handle object evictions<br />
2ba490f08d99 drm/i915/vm_bind: Support for VM private BOs<br />
8b345bcb80b0 drm/i915/vm_bind: Implement bind and unbind of object<br />
731a2935d9c6 drm/i915/vm_bind: Add support to create persistent vma<br />
3431ef35ffca drm/i915/vm_bind: Support partially mapped vma resource<br />
ebe489184ee0 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
c83b566c45b8 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
c9a1347f2eb8 drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============6820099257649373343==--
