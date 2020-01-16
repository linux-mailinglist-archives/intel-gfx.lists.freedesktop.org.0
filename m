Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D4E13D95E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 12:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AC06ECC2;
	Thu, 16 Jan 2020 11:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDCE26ECC2;
 Thu, 16 Jan 2020 11:56:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4A77A47E0;
 Thu, 16 Jan 2020 11:56:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 16 Jan 2020 11:56:04 -0000
Message-ID: <157917576480.12914.15667847785319513899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/sdvo=3A_Reduce_the_size_of?=
 =?utf-8?q?_the_on_stack_buffers_=28rev2=29?=
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

Series: series starting with [1/9] drm/i915/sdvo: Reduce the size of the on stack buffers (rev2)
URL   : https://patchwork.freedesktop.org/series/71775/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753 -> Patchwork_16127
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16127:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16127 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-FAIL][3] ([i915#656])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - {fi-ehl-1}:         [INCOMPLETE][4] ([i915#937]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ehl-1/igt@gem_ctx_param@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-ehl-1/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][6] ([i915#889]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][8] ([i915#889]) -> [PASS][9] +23 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][10] ([i915#725]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][12] ([i915#889]) -> [PASS][13] +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [DMESG-FAIL][14] ([i915#889]) -> [PASS][15] +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [DMESG-WARN][16] ([i915#889]) -> [PASS][17] +23 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (51 -> 43)
------------------------------

  Additional (2): fi-kbl-7560u fi-tgl-y 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-bsw-kefka fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16127

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16127: 8b2fc5fad88e713339de2caceea9cbfaa6e6ca6c @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16127/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

8b2fc5fad88e drm/i915/dvo: Make .get_modes() return the number of modes
18742fe20146 drm/i915/sdvo: Make .get_modes() return the number of modes
2e9ee2b681b8 drm/i915/sdvo: Make SDVO deal with HDMI pixel repeat
d0350c5ec179 drm/i915: Reject DRM_MODE_FLAG_DBLCLK with DVI sinks
2ec2b60bb239 drm/i915/sdvo: Implement limited color range for SDVO HDMI properly
347977599923 drm/i915/sdvo: Fix SDVO colorimetry bit defines
db7012bcf038 drm/i915/sdvo: Consolidate SDVO HDMI force_dvi handling
63fd40d1cd3d drm/i915: Consolidate HDMI force_dvi handling
d629200d3735 drm/i915/sdvo: Reduce the size of the on stack buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
