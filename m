Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD96CD4C6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 10:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF8A10E504;
	Wed, 29 Mar 2023 08:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 76AB710E504;
 Wed, 29 Mar 2023 08:37:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D9E4A00E6;
 Wed, 29 Mar 2023 08:37:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4806882624836614365=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Wed, 29 Mar 2023 08:37:04 -0000
Message-ID: <168007902440.23905.12773173970136162129@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329073220.3982460-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20230329073220.3982460-1-zhao1.liu@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_kmap=5Fatomic=28=29_with_kmap=5Flocal=5Fpage?=
 =?utf-8?b?KCk=?=
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

--===============4806882624836614365==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Replace kmap_atomic() with kmap_local_page()
URL   : https://patchwork.freedesktop.org/series/115769/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12931 -> Patchwork_115769v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_115769v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-jsl-1:          [PASS][4] -> [INCOMPLETE][5] ([i915#6866])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#7911] / [i915#7982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][9] -> [ABORT][10] ([i915#4983] / [i915#7913])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271]) +16 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][12] ([i915#5354]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][13] -> [FAIL][14] ([i915#7932]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271]) +19 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-skl-guc:         [ABORT][16] ([i915#8189]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-guc/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@i915_module_load@load.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6866]: https://gitlab.freedesktop.org/drm/intel/issues/6866
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189


Build changes
-------------

  * Linux: CI_DRM_12931 -> Patchwork_115769v1

  CI-20190529: 20190529
  CI_DRM_12931: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7223: 2cbfa210fc95d126edf9a60ae6ab4e96cf4fca7f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115769v1: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

84593c4aab99 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
a3896445fd7e drm/i915: Use kmap_local_page() in i915_cmd_parser.c
80657d64dab1 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
543115809263 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
b763f964facf drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
81a8cd576dc2 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
e3fdcab4f639 drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
84a5e524797e drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c
b9d1e6d4b37d drm/i915: Use kmap_local_page() in gem/i915_gem_object.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/index.html

--===============4806882624836614365==
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
<tr><td><b>Series:</b></td><td>drm/i915: Replace kmap_atomic() with kmap_local_page()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115769/">https://patchwork.freedesktop.org/series/115769/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12931 -&gt; Patchwork_115769v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115769v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6866">i915#6866</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12931/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v1/fi-skl-guc/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12931 -&gt; Patchwork_115769v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12931: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7223: 2cbfa210fc95d126edf9a60ae6ab4e96cf4fca7f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115769v1: e1b8055e62c6f94ef94db3e7f125704ac0fab0b5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>84593c4aab99 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c<br />
a3896445fd7e drm/i915: Use kmap_local_page() in i915_cmd_parser.c<br />
80657d64dab1 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c<br />
543115809263 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c<br />
b763f964facf drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c<br />
81a8cd576dc2 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c<br />
e3fdcab4f639 drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c<br />
84a5e524797e drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c<br />
b9d1e6d4b37d drm/i915: Use kmap_local_page() in gem/i915_gem_object.c</p>

</body>
</html>

--===============4806882624836614365==--
