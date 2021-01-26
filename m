Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F10304D3E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 00:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC7A6E48D;
	Tue, 26 Jan 2021 23:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12DAD6E17F;
 Tue, 26 Jan 2021 23:07:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C80DA9932;
 Tue, 26 Jan 2021 23:07:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brian Welty" <brian.welty@intel.com>
Date: Tue, 26 Jan 2021 23:07:55 -0000
Message-ID: <161170247501.9811.2646377393166175470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126214626.16260-1-brian.welty@intel.com>
In-Reply-To: <20210126214626.16260-1-brian.welty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgY2dy?=
 =?utf-8?q?oup_support_for_GPU_devices_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1767325214=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1767325214==
Content-Type: multipart/alternative;
 boundary="===============5895288856525042863=="

--===============5895288856525042863==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: cgroup support for GPU devices (rev3)
URL   : https://patchwork.freedesktop.org/series/60163/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9685 -> Patchwork_19509
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/index.html

Known issues
------------

  Here are the changes found in Patchwork_19509 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [PASS][2] -> [DMESG-WARN][3] ([i915#2605])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-kbl-7500u/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][4] -> [INCOMPLETE][5] ([i915#2940])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][6] -> [INCOMPLETE][7] ([i915#2940])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][8] ([i915#1436])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][9] ([i915#1436] / [i915#2722])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-nick/igt@runner@aborted.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([i915#402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-tgl-y/igt@vgem_basic@create.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-tgl-y/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [DMESG-FAIL][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  * igt@vgem_basic@debugfs:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#402]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-tgl-y/igt@vgem_basic@debugfs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-tgl-y/igt@vgem_basic@debugfs.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9685 -> Patchwork_19509

  CI-20190529: 20190529
  CI_DRM_9685: e183766462e67962d64faca5108dc6b55f6bc88b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19509: 0ac6778052b806ba6b7108f845dcc4c1f9efca05 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_19509/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_region.o
In file included from ./include/drm/drm_mm.h:49,
                 from ./drivers/gpu/drm/i915/intel_memory_region.h:13,
                 from drivers/gpu/drm/i915/gem/i915_gem_region.c:6:
drivers/gpu/drm/i915/gem/i915_gem_region.c: In function ‘i915_gem_object_get_pages_buddy’:
drivers/gpu/drm/i915/gem/i915_gem_region.c:59:13: error: format ‘%lld’ expects argument of type ‘long long int’, but argument 3 has type ‘resource_size_t’ {aka ‘unsigned int’} [-Werror=format=]
   DRM_DEBUG("DRMCG: charge_mem failed for %lld\n", charged);
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~
./include/drm/drm_print.h:504:25: note: in definition of macro ‘DRM_DEBUG’
  __drm_dbg(DRM_UT_CORE, fmt, ##__VA_ARGS__)
                         ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:279: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_region.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_region.o] Error 1
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:496: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1805: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

0ac6778052b8 drm/i915: Use memory cgroup for enforcing device memory limit
c0111c874b1b drm/gem: Associate GEM objects with drm cgroup
5caedcbc9758 drmcg: Add initial support for tracking gpu time usage
b329ab22109e drmcg: Add memory.total file
05bdd5baeaa6 drmcg: Add support for device memory accounting via page counter
4b9f63dc8ead drmcg: Add skeleton seq_show and write for drmcg files
af6b9dbb7aba drm, cgroup: Initialize drmcg properties
db1f7fae1900 drm, cgroup: Bind drm and cgroup subsystem
bd39716cbb25 cgroup: Introduce cgroup for drm subsystem

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/index.html

--===============5895288856525042863==
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
<tr><td><b>Series:</b></td><td>cgroup support for GPU devices (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/60163/">https://patchwork.freedesktop.org/series/60163/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9685 -&gt; Patchwork_19509</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19509 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@debugfs:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-tgl-y/igt@vgem_basic@debugfs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-tgl-y/igt@vgem_basic@debugfs.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9685 -&gt; Patchwork_19509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9685: e183766462e67962d64faca5108dc6b55f6bc88b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5973: 7ae3d0d68e6bf4c5e404c87b570773d1b3173d47 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19509: 0ac6778052b806ba6b7108f845dcc4c1f9efca05 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_19509/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_region.o<br />
In file included from ./include/drm/drm_mm.h:49,<br />
                 from ./drivers/gpu/drm/i915/intel_memory_region.h:13,<br />
                 from drivers/gpu/drm/i915/gem/i915_gem_region.c:6:<br />
drivers/gpu/drm/i915/gem/i915_gem_region.c: In function ‘i915_gem_object_get_pages_buddy’:<br />
drivers/gpu/drm/i915/gem/i915_gem_region.c:59:13: error: format ‘%lld’ expects argument of type ‘long long int’, but argument 3 has type ‘resource_size_t’ {aka ‘unsigned int’} [-Werror=format=]<br />
   DRM_DEBUG("DRMCG: charge_mem failed for %lld\n", charged);<br />
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~<br />
./include/drm/drm_print.h:504:25: note: in definition of macro ‘DRM_DEBUG’<br />
<strong>drm_dbg(DRM_UT_CORE, fmt, ##__VA_ARGS</strong>)<br />
                         ^~~<br />
cc1: all warnings being treated as errors<br />
scripts/Makefile.build:279: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_region.o' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-bsw-nick/igt@i915_selftest@live@execlists.html">4</a>: <strong><em> [drivers/gpu/drm/i915/gem/i915_gem_region.o] Error 1<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-kbl-7500u/igt@i915_module_load@reload.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9685/fi-kbl-7500u/igt@i915_module_load@reload.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19509/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1805: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>0ac6778052b8 drm/i915: Use memory cgroup for enforcing device memory limit<br />
c0111c874b1b drm/gem: Associate GEM objects with drm cgroup<br />
5caedcbc9758 drmcg: Add initial support for tracking gpu time usage<br />
b329ab22109e drmcg: Add memory.total file<br />
05bdd5baeaa6 drmcg: Add support for device memory accounting via page counter<br />
4b9f63dc8ead drmcg: Add skeleton seq_show and write for drmcg files<br />
af6b9dbb7aba drm, cgroup: Initialize drmcg properties<br />
db1f7fae1900 drm, cgroup: Bind drm and cgroup subsystem<br />
bd39716cbb25 cgroup: Introduce cgroup for drm subsystem</p>

</body>
</html>

--===============5895288856525042863==--

--===============1767325214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1767325214==--
