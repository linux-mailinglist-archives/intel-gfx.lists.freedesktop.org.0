Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4AE1782F2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 20:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958C36E920;
	Tue,  3 Mar 2020 19:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCA116E8C9;
 Tue,  3 Mar 2020 19:16:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5671A00EF;
 Tue,  3 Mar 2020 19:16:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 19:16:22 -0000
Message-ID: <158326298271.15379.12233506318293816659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303171808.7247-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200303171808.7247-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_LCPLL_on_HSW/BDW_if_the_BIOS_did_not?=
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

Series: drm/i915: Init LCPLL on HSW/BDW if the BIOS did not
URL   : https://patchwork.freedesktop.org/series/74211/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8057 -> Patchwork_16800
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/index.html

Known issues
------------

  Here are the changes found in Patchwork_16800 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#623])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@prime_vgem@basic-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][5] ([CI#94]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-kbl-7560u}:     [FAIL][7] ([i915#998]) -> [PASS][8] +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/fi-kbl-7560u/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@vgem_basic@mmap.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/fi-tgl-y/igt@vgem_basic@mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (43 -> 46)
------------------------------

  Additional (7): fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-kefka fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16800

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16800: 08c4ff472a8f52af446572bb02ae435284760c96 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

08c4ff472a8f drm/i915: Init LCPLL on HSW/BDW if the BIOS did not

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16800/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
