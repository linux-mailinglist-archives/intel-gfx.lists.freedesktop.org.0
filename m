Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042021B5FB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 15:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3546EC3C;
	Fri, 10 Jul 2020 13:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A54A96EC3C;
 Fri, 10 Jul 2020 13:12:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DD1FA66C9;
 Fri, 10 Jul 2020 13:12:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 10 Jul 2020 13:12:20 -0000
Message-ID: <159438674061.20500.16107305150870525331@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710115757.290984-1-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgREcx?=
 =?utf-8?q?_LMEM_enabling?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: DG1 LMEM enabling
URL   : https://patchwork.freedesktop.org/series/79339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8726 -> Patchwork_18131
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/index.html

Known issues
------------

  Here are the changes found in Patchwork_18131 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][1] -> [DMESG-WARN][2] ([i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-WARN][4] ([i915#62] / [i915#92] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][5] ([i915#1888]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][7] ([i915#1932] / [i915#2045]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/fi-kbl-x1275/igt@kms_flip@basic-plain-flip@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1932]: https://gitlab.freedesktop.org/drm/intel/issues/1932
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 35)
------------------------------

  Additional (2): fi-tgl-y fi-elk-e7500 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8726 -> Patchwork_18131

  CI-20190529: 20190529
  CI_DRM_8726: 723780498c9dd2f58b80e6b9daeaa5cd08ec8e7a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18131: 88b8c65b7fbfebc4e2adf798203f27e0ce8bd7a6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

88b8c65b7fbf drm/i915/lmem: allocate HWSP in lmem
9d929688551d drm/i915: defer pd lmem block put to worker
3e441301c8d3 drm/i915/dg1: Reserve first 1MB of local memory
78474d0ee907 drm/i915: Reintroduce mem->reserved
dd7bf2daf3dc drm/i915/dsb: Enable lmem for dsb
be601b687707 drm/i915/lmem: reset the lmem buffer created by fbdev
8d4bc254af2b drm/i915/lmem: Bypass aperture when lmem is available
a6d6e930f411 drm/i915: Create stolen memory region from local memory
6ee119d1496f drm/i915/guc: put all guc objects in lmem when available
be0fce4a6e1c drm/i915/lmem: support optional CPU clearing for special internal use
efea29d82bbd drm/i915: finish memory region support for stolen objects.
9b32500e03cf drm/i915: add i915_gem_object_is_devmem() function
1755a4e32c7f drm/i915: Fix object page offset within a region
ca44b6c4d514 drm/i915: setup GPU device lmem region
32e939403a2d drm/i915: Provide a way to disable PCIe relaxed write ordering
047b9d87f202 drm/i915: move engine scratch to LMEM
f4982e6c0259 drm/i915: allocate context from LMEM
c54410159094 drm/i915: support GGTT LMEM entries
643474aa3150 drm/i915: PPGTT support
d41c52d4ed7a drm/i915: Distinction of memory regions
d8a3239ffeaa drm/i915: drop fake LMEM
4416c2f7894c drm/i915: setup the LMEM region
f9f300099d61 drm/i915/dg1: Introduce dmabuf mmap to LMEM
25e66f7d0a5c drm/i915/lmem: allocate cmd ring in lmem
cc6a052c411f drm/i915/uapi: introduce drm_i915_gem_create_ext
83900007bf29 drm/i915/query: Expose memory regions through the query uAPI
c654f1e3f508 drm/i915: introduce kernel blitter_context
6904f6ee9a66 drm/i915/lmem: support pwrite
7fcb3d5adb3d drm/i915/lmem: support pread
39d507e18b2c drm/i915/dgfx: define llc and snooping behaviour
d1d490a37e6f drm/i915/lmem: Do not check r->sgt.pfn for NULL
db311ea9f880 drm/i915/lmem: Limit block size to 4G
720371af8fd0 drm/i915/dg1: DG1 does not support DC6
db688caa6c0b drm/i915/dg1: Add initial DG1 workarounds
719467b3a5b9 drm/i915/rkl: Add initial workarounds
b6563ffa776b drm/i915/dg1: Load DMC
c9404617ff28 drm/i915/dg1: enable PORT C/D aka D/E
ee5e03aaf90c drm/i915/dg1: map/unmap pll clocks
9d91bbcfc48b drm/i915/dg1: provide port/phy mapping for vbt
f79c4ce6415d drm/i915/dg1: Update voltage swing tables for DP
649e6352cfc5 drm/i915/dg1: Update comp master/slave relationships for PHYs
d4760bd1b4aa drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
f998462b8eb2 drm/i915/dg1: Enable first 2 ports for DG1
d520ab1c2265 drm/i915/dg1: gmbus pin mapping
0b9012fb78d1 drm/i915/dg1: invert HPD pins
226726870402 drm/i915/dg1: add hpd interrupt handling
fef23496c454 drm/i915/dg1: Enable DPLL for DG1
d2b6d0fc64cf drm/i915/dg1: Add and setup DPLLs for DG1
5467518226bd drm/i915/dg1: Add DPLL macros for DG1
c73835ce2769 drm/i915/dg1: Wait for pcode/uncore handshake at startup
283845ab8957 drm/i915/dg1: Increase mmio size to 4MB
f3e3af28e6da drm/i915/dg1: Add DG1 power wells
c3be96ec4e2f drm/i915/dg1: Define MOCS table for DG1
f89f5df391fa drm/i915/dg1: Initialize RAWCLK properly
e6fb62a95618 drm/i915/dg1: Add fake PCH
29620df1a5ff drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
a8faa6244187 drm/i915/dg1: add support for the master unit interrupt
aa3febafd54f drm/i915/dg1: Add DG1 PCI IDs
07333dfd467a drm/i915/dg1: add initial DG-1 definitions
64e885563508 drm/i915: Add has_master_unit_irq flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
