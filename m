Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C0D49D650
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 00:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35CB910EDEE;
	Wed, 26 Jan 2022 23:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1100710EDEE;
 Wed, 26 Jan 2022 23:42:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D49AA00A0;
 Wed, 26 Jan 2022 23:42:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8106313069992796097=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 26 Jan 2022 23:42:57 -0000
Message-ID: <164324057702.25401.3078660069100368630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_ADS_access_to_use_dma=5Fbuf=5Fmap?=
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

--===============8106313069992796097==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915/guc: Refactor ADS access to use dma_buf_map
URL   : https://patchwork.freedesktop.org/series/99378/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11147 -> Patchwork_22116
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/index.html

Participating hosts (48 -> 31)
------------------------------

  Missing    (17): fi-kbl-soraka fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-icl-u2 fi-bsw-cyan fi-apl-guc fi-snb-2520m fi-ctg-p8600 fi-kbl-x1275 fi-kbl-8809g fi-elk-e7500 fi-bsw-kefka fi-bsw-nick fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22116 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][2] ([i915#4547])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][3] ([i915#2403] / [i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-pnv-d510/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][4] ([i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][5] ([i915#1886]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][7] ([i915#4494] / [i915#4957]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][9] ([i915#3921]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11147 -> Patchwork_22116

  CI-20190529: 20190529
  CI_DRM_11147: ad57bf1ff13e1c4462f947398fbfb861f1b2e345 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6335: 2b30115edd692b60d16cb10375730a87f51f0e37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22116: 2788e054f9ce2eff704b9c331c3881bf035ee68f @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_22116/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o
In file included from ./include/drm/drm_mm.h:51,
                 from ./drivers/gpu/drm/i915/i915_vma.h:31,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:13,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:20,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                 from ./drivers/gpu/drm/i915/gt/intel_gt_types.h:18,
                 from ./drivers/gpu/drm/i915/gt/intel_gt.h:10,
                 from drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:9:
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c: In function ‘guc_mmio_reg_state_create’:
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:369:38: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘u32’ {aka ‘unsigned int’} [-Werror=format=]
  drm_dbg(&guc_to_gt(guc)->i915->drm, "Used %lu KB for temporary ADS regset\n",
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   (temp_set.storage_max * sizeof(struct guc_mmio_reg)) >> 10);
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                        ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

2788e054f9ce drm/i915/guc: Remove plain ads_blob pointer
5e92c399bbf6 drm/i915/guc: Convert __guc_ads_init to dma_buf_map
dbd1faca50e7 drm/i915/guc: Convert guc_mmio_reg_state_init to dma_buf_map
f6a9b1574461 drm/i915/guc: Use a single pass to calculate regset
a3cbf5b2fd0b drm/i915/guc: Prepare for error propagation
1f7b57620e07 drm/i915/guc: Convert capture list to dma_buf_map
1df5683fe05f drm/i915/guc: Convert mapping table to dma_buf_map
824e76096416 drm/i915/guc: Replace check for golden context size
04d2c4cf7a69 drm/i915/guc: Convert golden context prep to dma_buf_map
a69351212152 drm/i915/guc: Convert guc_ads_private_data_reset to dma_buf_map
2231431579a3 dma-buf-map: Add wrapper over memset
5100676b5102 drm/i915/guc: Convert engine record to dma_buf_map
f6c5dcbe95f6 drm/i915/guc: Convert policies update to dma_buf_map
7be0be3302b4 drm/i915/guc: Convert golden context init to dma_buf_map
85b2d92083f4 drm/i915/guc: Add read/write helpers for ADS blob
99e46a0dde3e drm/i915/guc: Keep dma_buf_map of ads_blob around
2d41494bd5b1 drm/i915/gt: Add helper for shmem copy to dma_buf_map
3e1d98022b1e dma-buf-map: Add helper to initialize second map
65454816ee9c dma-buf-map: Add read/write helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/index.html

--===============8106313069992796097==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refactor ADS access to use dma_buf_map</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99378/">https://patchwork.freedesktop.org/series/99378/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11147 -&gt; Patchwork_22116</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/index.html</p>
<h2>Participating hosts (48 -&gt; 31)</h2>
<p>Missing    (17): fi-kbl-soraka fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-icl-u2 fi-bsw-cyan fi-apl-guc fi-snb-2520m fi-ctg-p8600 fi-kbl-x1275 fi-kbl-8809g fi-elk-e7500 fi-bsw-kefka fi-bsw-nick fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22116 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11147/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11147 -&gt; Patchwork_22116</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11147: ad57bf1ff13e1c4462f947398fbfb861f1b2e345 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6335: 2b30115edd692b60d16cb10375730a87f51f0e37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22116: 2788e054f9ce2eff704b9c331c3881bf035ee68f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_22116/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o<br />
In file included from ./include/drm/drm_mm.h:51,<br />
                 from ./drivers/gpu/drm/i915/i915_vma.h:31,<br />
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:13,<br />
                 from ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:20,<br />
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,<br />
                 from ./drivers/gpu/drm/i915/gt/intel_gt_types.h:18,<br />
                 from ./drivers/gpu/drm/i915/gt/intel_gt.h:10,<br />
                 from drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:9:<br />
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c: In function ‘guc_mmio_reg_state_create’:<br />
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:369:38: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘u32’ {aka ‘unsigned int’} [-Werror=format=]<br />
  drm_dbg(&amp;guc_to_gt(guc)-&gt;i915-&gt;drm, "Used %lu KB for temporary ADS regset\n",<br />
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
   (temp_set.storage_max * sizeof(struct guc_mmio_reg)) &gt;&gt; 10);<br />
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’<br />
  drm_dev_dbg((drm) ? (drm)-&gt;dev : NULL, DRM_UT_DRIVER, fmt, ##<strong>VA_ARGS</strong>)<br />
                                                        ^~~<br />
cc1: all warnings being treated as errors<br />
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@runner@aborted.html">4</a>: <strong><em> [drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o] Error 1<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-pnv-d510/igt@runner@aborted.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1831: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>2788e054f9ce drm/i915/guc: Remove plain ads_blob pointer<br />
5e92c399bbf6 drm/i915/guc: Convert __guc_ads_init to dma_buf_map<br />
dbd1faca50e7 drm/i915/guc: Convert guc_mmio_reg_state_init to dma_buf_map<br />
f6a9b1574461 drm/i915/guc: Use a single pass to calculate regset<br />
a3cbf5b2fd0b drm/i915/guc: Prepare for error propagation<br />
1f7b57620e07 drm/i915/guc: Convert capture list to dma_buf_map<br />
1df5683fe05f drm/i915/guc: Convert mapping table to dma_buf_map<br />
824e76096416 drm/i915/guc: Replace check for golden context size<br />
04d2c4cf7a69 drm/i915/guc: Convert golden context prep to dma_buf_map<br />
a69351212152 drm/i915/guc: Convert guc_ads_private_data_reset to dma_buf_map<br />
2231431579a3 dma-buf-map: Add wrapper over memset<br />
5100676b5102 drm/i915/guc: Convert engine record to dma_buf_map<br />
f6c5dcbe95f6 drm/i915/guc: Convert policies update to dma_buf_map<br />
7be0be3302b4 drm/i915/guc: Convert golden context init to dma_buf_map<br />
85b2d92083f4 drm/i915/guc: Add read/write helpers for ADS blob<br />
99e46a0dde3e drm/i915/guc: Keep dma_buf_map of ads_blob around<br />
2d41494bd5b1 drm/i915/gt: Add helper for shmem copy to dma_buf_map<br />
3e1d98022b1e dma-buf-map: Add helper to initialize second map<br />
65454816ee9c dma-buf-map: Add read/write helpers</p>

</body>
</html>

--===============8106313069992796097==--
