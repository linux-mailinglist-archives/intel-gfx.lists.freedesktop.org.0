Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D6177BEB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 17:29:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1513889233;
	Tue,  3 Mar 2020 16:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF8E488FA6;
 Tue,  3 Mar 2020 16:29:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7283A00EF;
 Tue,  3 Mar 2020 16:29:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 16:29:32 -0000
Message-ID: <158325297272.15378.1226815913613091860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303093157.1153887-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303093157.1153887-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_vma_is-closed_assertion_on_insert?=
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

Series: drm/i915: Drop vma is-closed assertion on insert
URL   : https://patchwork.freedesktop.org/series/74195/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8055 -> Patchwork_16797
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/index.html

Known issues
------------

  Here are the changes found in Patchwork_16797 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-skl-6770hq/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-skl-6770hq/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-s:           [PASS][7] -> [DMESG-FAIL][8] ([i915#877])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([fdo#111407])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8055/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (46 -> 43)
------------------------------

  Additional (5): fi-ehl-1 fi-cfl-8109u fi-elk-e7500 fi-bsw-kefka fi-kbl-7560u 
  Missing    (8): fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8055 -> Patchwork_16797

  CI-20190529: 20190529
  CI_DRM_8055: df5c59f81df63a983b7490968e16c3255adc196b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5484: 91b36b61e76901a2bd09fe93ac7bf7b8a60f258c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16797: a21b9714a1599c0d5315c9410c6d0489b86e3c3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a21b9714a159 drm/i915: Drop vma is-closed assertion on insert

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16797/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
