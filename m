Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32BD13D4A2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 07:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7F56EBF8;
	Thu, 16 Jan 2020 06:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 952C86EBF6;
 Thu, 16 Jan 2020 06:50:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84887A0134;
 Thu, 16 Jan 2020 06:50:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Kujau" <lists@nerdbynature.de>
Date: Thu, 16 Jan 2020 06:50:35 -0000
Message-ID: <157915743552.12912.16660694218938945901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
In-Reply-To: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_bugs=2Efreedesktop=2Eorg_is_no_longer_accepting_bugs?=
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

Series: drm: bugs.freedesktop.org is no longer accepting bugs
URL   : https://patchwork.freedesktop.org/series/72098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753 -> Patchwork_16125
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/index.html

Known issues
------------

  Here are the changes found in Patchwork_16125 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][3] -> [SKIP][4] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - {fi-ehl-1}:         [INCOMPLETE][5] ([i915#937]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ehl-1/igt@gem_ctx_param@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-ehl-1/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][7] ([i915#889]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][9] ([i915#889]) -> [PASS][10] +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6770hq:      [FAIL][11] ([i915#178]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][13] ([i915#889]) -> [PASS][14] +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [DMESG-FAIL][15] ([i915#889]) -> [PASS][16] +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [DMESG-WARN][17] ([i915#889]) -> [PASS][18] +23 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (51 -> 41)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (11): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-whl-u fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16125

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16125: ed770364cac3127d6fbeb244a93049bcc62399fb @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16125/build_32bit.log

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

ed770364cac3 drm: bugs.freedesktop.org is no longer accepting bugs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
