Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8243813D7D8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 11:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6FA6EC8F;
	Thu, 16 Jan 2020 10:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D3656EC8F;
 Thu, 16 Jan 2020 10:23:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA8BCA0138;
 Thu, 16 Jan 2020 10:23:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 16 Jan 2020 10:23:52 -0000
Message-ID: <157917023293.12914.14737610376573447898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116092214.2342-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200116092214.2342-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev16=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev16)
URL   : https://patchwork.freedesktop.org/series/70059/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753 -> Patchwork_16126
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/index.html

Known issues
------------

  Here are the changes found in Patchwork_16126 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-glk-dsi:         [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#58] / [k.org#198133])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([CI#80] / [i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - {fi-ehl-1}:         [INCOMPLETE][9] ([i915#937]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-ehl-1/igt@gem_ctx_param@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-ehl-1/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [DMESG-WARN][11] ([i915#889]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [DMESG-WARN][13] ([i915#889]) -> [PASS][14] +23 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [DMESG-FAIL][17] ([i915#889]) -> [PASS][18] +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [DMESG-FAIL][19] ([i915#889]) -> [PASS][20] +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [DMESG-WARN][21] ([i915#889]) -> [PASS][22] +23 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 42)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (10): fi-kbl-soraka fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16126

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16126: 9c89def6f528200b44d37476c7d54701f8c209a8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16126/build_32bit.log

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

9c89def6f528 drm/i915: Correctly map DBUF slices to pipes
4857cdf3fa9d drm/i915: Introduce parameterized DBUF_CTL
b159ba620e73 drm/i915: Manipulate DBuf slices properly
87734648425d drm/i915: Move dbuf slice update to proper place
5d39fc5ecdf0 drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16126/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
