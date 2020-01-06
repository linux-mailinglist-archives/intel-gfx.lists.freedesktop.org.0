Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E6130E30
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 08:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A5C89E65;
	Mon,  6 Jan 2020 07:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7DF389DA8;
 Mon,  6 Jan 2020 07:50:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE26CA011A;
 Mon,  6 Jan 2020 07:50:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Mon, 06 Jan 2020 07:50:38 -0000
Message-ID: <157829703874.24767.6448622637704937398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106070152.GA13299@embeddedor>
In-Reply-To: <20200106070152.GA13299@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Fix_inconsistent_IS=5FERR_and_PTR=5FERR?=
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

Series: drm/i915/display: Fix inconsistent IS_ERR and PTR_ERR
URL   : https://patchwork.freedesktop.org/series/71642/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7680 -> Patchwork_15997
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/index.html

Known issues
------------

  Here are the changes found in Patchwork_15997 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2] ([i915#671])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] ([i915#723])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][7] ([i915#765]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-icl-y/igt@i915_selftest@live_active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#553] / [i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][13] ([i915#671]) -> [DMESG-WARN][14] ([i915#889])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][15] ([i915#553] / [i915#725]) -> [DMESG-FAIL][16] ([i915#725])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (43 -> 41)
------------------------------

  Additional (6): fi-bdw-gvtdvm fi-glk-dsi fi-ilk-650 fi-cfl-8109u fi-kbl-8809g fi-skl-6600u 
  Missing    (8): fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15997

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15997: 217fb4660750a9954ed87c200ac50537e43ff0c9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

217fb4660750 drm/i915/display: Fix inconsistent IS_ERR and PTR_ERR

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15997/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
