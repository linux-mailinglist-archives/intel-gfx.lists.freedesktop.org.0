Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A580017CBF5
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 05:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74126EDE2;
	Sat,  7 Mar 2020 04:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D42786EDE2;
 Sat,  7 Mar 2020 04:52:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDBC8A011C;
 Sat,  7 Mar 2020 04:52:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Sat, 07 Mar 2020 04:52:58 -0000
Message-ID: <158355677881.20975.17155830069645769156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200307034238.4752-1-aditya.swarup@intel.com>
In-Reply-To: <20200307034238.4752-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_definitions_for_VRR_registers_and_bits?=
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

Series: drm/i915/tgl: Add definitions for VRR registers and bits
URL   : https://patchwork.freedesktop.org/series/74410/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8088 -> Patchwork_16872
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16872 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16872, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16872:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-bdw-5557u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16872 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][4] -> [FAIL][5] ([CI#94])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][6] -> [SKIP][7] ([fdo#109271]) +24 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([CI#94] / [i915#402]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@vgem_basic@setversion.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [DMESG-FAIL][10] ([i915#1314]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-tgl-y:           [DMESG-WARN][12] ([CI#94] / [i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][14] ([fdo#109635] / [i915#217]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][16] ([fdo#111096] / [i915#323]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 44)
------------------------------

  Additional (2): fi-bwr-2160 fi-tgl-dsi 
  Missing    (4): fi-kbl-soraka fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16872

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16872: 265678018213c6eb2b9ae14572909b83627b1bbb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

265678018213 drm/i915/tgl: Add definitions for VRR registers and bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16872/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
