Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 395C013D318
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 05:20:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1F86EBCB;
	Thu, 16 Jan 2020 04:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2978E6EBCB;
 Thu, 16 Jan 2020 04:20:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16939A011A;
 Thu, 16 Jan 2020 04:20:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 16 Jan 2020 04:20:48 -0000
Message-ID: <157914844806.12913.8219815972050846714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110134913.24325-1-anshuman.gupta@intel.com>
In-Reply-To: <20200110134913.24325-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_update_HDCP_CP_property_as_per_port_authenticatio?=
 =?utf-8?q?n_state_=28rev2=29?=
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

Series: drm/i915/hdcp: update HDCP CP property as per port authentication state (rev2)
URL   : https://patchwork.freedesktop.org/series/71887/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753 -> Patchwork_16122
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/index.html

Known issues
------------

  Here are the changes found in Patchwork_16122 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-7500u:       [PASS][7] -> [SKIP][8] ([fdo#109271]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#289])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111096] / [i915#323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - {fi-ehl-1}:         [INCOMPLETE][13] ([i915#937]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ehl-1/igt@gem_ctx_param@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-ehl-1/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][15] ([i915#889]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][17] ([i915#889]) -> [PASS][18] +23 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6770hq:      [FAIL][19] ([i915#178]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][21] ([i915#889]) -> [PASS][22] +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [DMESG-FAIL][23] ([i915#889]) -> [PASS][24] +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [DMESG-WARN][25] ([i915#889]) -> [PASS][26] +23 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (51 -> 42)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (10): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-bsw-kefka fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16122

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16122: 1bf275c8bb490d00b495bc2ee2837311163efcee @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16122/build_32bit.log

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

1bf275c8bb49 drm/i915/hdcp: update HDCP CP property as per port authentication state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
