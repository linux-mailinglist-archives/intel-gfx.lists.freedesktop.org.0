Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E659B13B3C8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 21:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C006E51C;
	Tue, 14 Jan 2020 20:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47C6D6E51C;
 Tue, 14 Jan 2020 20:44:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FEE5A0118;
 Tue, 14 Jan 2020 20:44:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Tue, 14 Jan 2020 20:44:30 -0000
Message-ID: <157903467024.24907.6263571196621147970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109223727.5630-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200109223727.5630-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1409825376_to_tgl_=28rev5=29?=
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

Series: drm/i915/tgl: Add Wa_1409825376 to tgl (rev5)
URL   : https://patchwork.freedesktop.org/series/71853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7742 -> Patchwork_16098
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16098/index.html

Known issues
------------

  Here are the changes found in Patchwork_16098 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111407])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7742/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16098/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][3] ([i915#725]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7742/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16098/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][5] ([i915#725]) -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7742/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16098/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (43 -> 45)
------------------------------

  Additional (9): fi-kbl-soraka fi-hsw-4770r fi-byt-j1900 fi-skl-6770hq fi-cfl-8109u fi-icl-u3 fi-bsw-kefka fi-blb-e6850 fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-tgl-y fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7742 -> Patchwork_16098

  CI-20190529: 20190529
  CI_DRM_7742: 1de2fced80f42bb4d9e1e26cd05c868c0d54311e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16098: 86652e2b96ef36b9ccdd23f3c7a6a28647f2cf9f @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16098/build_32bit.log

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

86652e2b96ef drm/i915/tgl: Add Wa_1409825376 to tgl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16098/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
