Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAD1143483
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 00:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD106EB63;
	Mon, 20 Jan 2020 23:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 210356EAA4;
 Mon, 20 Jan 2020 23:42:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18F7DA01BB;
 Mon, 20 Jan 2020 23:42:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 23:42:23 -0000
Message-ID: <157956374307.680.16034476848651705773@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Acquire_ce-=3Eactive?=
 =?utf-8?q?_before_ce-=3Epin=5Fcount/ce-=3Epin=5Fmutex?=
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

Series: series starting with [1/5] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72269/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7779 -> Patchwork_16172
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/index.html

Known issues
------------

  Here are the changes found in Patchwork_16172 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2] ([i915#424])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [PASS][3] -> [DMESG-FAIL][4] ([i915#722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][5] ([i915#505] / [i915#671]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][7] ([fdo#109271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][9] ([i915#889]) -> [PASS][10] +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [DMESG-FAIL][11] ([i915#889]) -> [PASS][12] +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7779/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (42 -> 40)
------------------------------

  Additional (5): fi-tgl-u fi-byt-j1900 fi-kbl-7500u fi-ivb-3770 fi-skl-6600u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-snb-2520m fi-byt-n2820 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7779 -> Patchwork_16172

  CI-20190529: 20190529
  CI_DRM_7779: 9481f0a0238efb8a7f001e4cdc16388fc097a7e4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5373: 224e565df36693ab8ae8f58eb6ae42600c2464e2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16172: 0614af4d0caa263584b0d1f877c0618998f678e9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0614af4d0caa drm/i915/display: Squelch kerneldoc complaints
570974a6f083 drm/i915/gem: Convert vm idr to xarray
1ac032874ab5 drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list
4fc48a860edc drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
6cbb3c0bda69 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16172/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
