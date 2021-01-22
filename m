Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C569300D03
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F6F6EA47;
	Fri, 22 Jan 2021 19:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08CCC6EA43;
 Fri, 22 Jan 2021 19:57:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9796A9932;
 Fri, 22 Jan 2021 19:57:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 22 Jan 2021 19:57:46 -0000
Message-ID: <161134546692.14038.11905402374435831280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122154547.502685-1-matthew.auld@intel.com>
In-Reply-To: <20210122154547.502685-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/buddy=3A_document_the_unused_header_bits?=
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
Content-Type: multipart/mixed; boundary="===============0735143580=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0735143580==
Content-Type: multipart/alternative;
 boundary="===============8342410204180412531=="

--===============8342410204180412531==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915/buddy: document the unused header bits
URL   : https://patchwork.freedesktop.org/series/86189/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9670 -> Patchwork_19463
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/index.html

Known issues
------------

  Here are the changes found in Patchwork_19463 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@prime_vgem@basic-write.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-tgl-y/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][4] ([i915#142] / [i915#2405]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-tgl-y/igt@vgem_basic@setversion.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9670 -> Patchwork_19463

  CI-20190529: 20190529
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19463: d40bd326c7456786c259d599b0a40c9950747c86 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_19463/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_buddy.o
In file included from ./include/linux/kernel.h:12,
                 from ./include/asm-generic/bug.h:20,
                 from ./arch/x86/include/asm/bug.h:93,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/gfp.h:5,
                 from ./include/linux/slab.h:15,
                 from ./include/linux/kmemleak.h:12,
                 from drivers/gpu/drm/i915/i915_buddy.c:6:
drivers/gpu/drm/i915/selftests/i915_buddy.c: In function ‘igt_buddy_alloc_limit’:
./include/linux/log2.h:194:8: error: left shift count >= width of type [-Werror=shift-count-overflow]
   (1UL << ilog2(n))) :  \
        ^~
drivers/gpu/drm/i915/selftests/i915_buddy.c:761:43: note: in expansion of macro ‘rounddown_pow_of_two’
  if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
                                           ^~~~~~~~~~~~~~~~~~~~
./include/linux/log2.h:194:8: error: left shift count >= width of type [-Werror=shift-count-overflow]
   (1UL << ilog2(n))) :  \
        ^~
./include/linux/printk.h:343:33: note: in expansion of macro ‘rounddown_pow_of_two’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                 ^~~~~~~~~~~
drivers/gpu/drm/i915/selftests/i915_buddy.c:762:3: note: in expansion of macro ‘pr_err’
   pr_err("block size(%llu) != %lu\n",
   ^~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:279: recipe for target 'drivers/gpu/drm/i915/i915_buddy.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_buddy.o] Error 1
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:496: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1805: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

d40bd326c745 drm/i915/buddy: document the unused header bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/index.html

--===============8342410204180412531==
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
<tr><td><b>Series:</b></td><td>drm/i915/buddy: document the unused header bits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86189/">https://patchwork.freedesktop.org/series/86189/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9670 -&gt; Patchwork_19463</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19463 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-tgl-y/igt@prime_vgem@basic-write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9670 -&gt; Patchwork_19463</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19463: d40bd326c7456786c259d599b0a40c9950747c86 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_19463/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/i915_buddy.o<br />
In file included from ./include/linux/kernel.h:12,<br />
                 from ./include/asm-generic/bug.h:20,<br />
                 from ./arch/x86/include/asm/bug.h:93,<br />
                 from ./include/linux/bug.h:5,<br />
                 from ./include/linux/mmdebug.h:5,<br />
                 from ./include/linux/gfp.h:5,<br />
                 from ./include/linux/slab.h:15,<br />
                 from ./include/linux/kmemleak.h:12,<br />
                 from drivers/gpu/drm/i915/i915_buddy.c:6:<br />
drivers/gpu/drm/i915/selftests/i915_buddy.c: In function ‘igt_buddy_alloc_limit’:<br />
./include/linux/log2.h:194:8: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
   (1UL &lt;&lt; ilog2(n))) :  \<br />
        ^~<br />
drivers/gpu/drm/i915/selftests/i915_buddy.c:761:43: note: in expansion of macro ‘rounddown_pow_of_two’<br />
  if (i915_buddy_block_size(&amp;mm, block) != rounddown_pow_of_two(size)) {<br />
                                           ^~~~~~~~~~~~~~~~~~~~<br />
./include/linux/log2.h:194:8: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
   (1UL &lt;&lt; ilog2(n))) :  \<br />
        ^~<br />
./include/linux/printk.h:343:33: note: in expansion of macro ‘rounddown_pow_of_two’<br />
  printk(KERN_ERR pr_fmt(fmt), ##<strong>VA_ARGS</strong>)<br />
                                 ^~~~~~~~~~~<br />
drivers/gpu/drm/i915/selftests/i915_buddy.c:762:3: note: in expansion of macro ‘pr_err’<br />
   pr_err("block size(%llu) != %lu\n",<br />
   ^~~~~~<br />
cc1: all warnings being treated as errors<br />
scripts/Makefile.build:279: recipe for target 'drivers/gpu/drm/i915/i915_buddy.o' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">4</a>: <strong><em> [drivers/gpu/drm/i915/i915_buddy.o] Error 1<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-tgl-y/igt@prime_vgem@basic-write.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@prime_vgem@basic-write.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:496: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19463/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1805: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>d40bd326c745 drm/i915/buddy: document the unused header bits</p>

</body>
</html>

--===============8342410204180412531==--

--===============0735143580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0735143580==--
