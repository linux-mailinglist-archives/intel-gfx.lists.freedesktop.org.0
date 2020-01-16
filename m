Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 764D513FB9A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 22:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84E26E471;
	Thu, 16 Jan 2020 21:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 818F06E471;
 Thu, 16 Jan 2020 21:34:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77B2EA011C;
 Thu, 16 Jan 2020 21:34:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brian Welty" <brian.welty@intel.com>
Date: Thu, 16 Jan 2020 21:34:10 -0000
Message-ID: <157921045046.12912.11368318384807765258@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116192047.22303-1-brian.welty@intel.com>
In-Reply-To: <20200116192047.22303-1-brian.welty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_use_of_drm=5Fgem=5Fobject=5Frelease?=
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

Series: drm/i915: Make use of drm_gem_object_release
URL   : https://patchwork.freedesktop.org/series/72134/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758 -> Patchwork_16136
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16136:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16136 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][2] -> [DMESG-WARN][3] ([i915#889])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][4] -> [DMESG-WARN][5] ([i915#889])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][6] -> [INCOMPLETE][7] ([i915#151])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][10] -> [FAIL][11] ([i915#217])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-icl-dsi:         [PASS][12] -> [DMESG-WARN][13] ([i915#109])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-icl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-icl-dsi:         [DMESG-WARN][14] ([i915#109]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-icl-dsi/igt@gem_exec_create@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-icl-dsi/igt@gem_exec_create@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][16] ([i915#178]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][18] ([fdo#111096] / [i915#323]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][20] ([i915#553] / [i915#725]) -> [DMESG-FAIL][21] ([i915#725])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (47 -> 43)
------------------------------

  Additional (5): fi-kbl-soraka fi-byt-j1900 fi-tgl-y fi-kbl-7560u fi-byt-n2820 
  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-bsw-cyan fi-bsw-kefka 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16136

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16136: 241f69b76a8c59321e8af790c07a06a850c816aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16136/build_32bit.log

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

241f69b76a8c drm/i915: Make use of drm_gem_object_release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16136/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
