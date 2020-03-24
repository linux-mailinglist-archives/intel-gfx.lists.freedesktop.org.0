Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C8191765
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 18:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7496E4FE;
	Tue, 24 Mar 2020 17:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFF786E4FE;
 Tue, 24 Mar 2020 17:17:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA8F1A00E6;
 Tue, 24 Mar 2020 17:17:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 24 Mar 2020 17:17:41 -0000
Message-ID: <158507026180.5748.7902383936577418202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/21=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22?=
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

Series: series starting with [01/21] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75026/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8183 -> Patchwork_17071
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17071 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17071, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17071:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-kbl-8809g/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/fi-kbl-8809g/igt@i915_selftest@live@mman.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_17071 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      [FAIL][5] ([i915#483]) -> [FAIL][6] ([i915#1485])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-bdw-gvtdvm/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][7] ([i915#1209]) -> [FAIL][8] ([i915#1485] / [i915#656])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/fi-kbl-8809g/igt@runner@aborted.html

  
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (45 -> 21)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17071 prevented too many machines from booting.

  Additional (3): fi-skl-lmem fi-blb-e6850 fi-kbl-7560u 
  Missing    (27): fi-kbl-soraka fi-apl-guc fi-icl-y fi-byt-n2820 fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-tgl-u fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-ctg-p8600 fi-skl-6700k2 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8183 -> Patchwork_17071

  CI-20190529: 20190529
  CI_DRM_8183: 795894daf2cc32246af94541733e08649d082470 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17071: a5e02329d0040a10925452a69cf897add229abbd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a5e02329d004 drm/i915: Ensure we hold the pin mutex
7fd3474aa28d drm/i915: Add ww locking to pin_to_display_plane
358d15462c52 drm/i915: Add ww locking to vm_fault_gtt
f9866d69096e drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion
cf9d9e219967 drm/i915: Use ww pinning for intel_context_create_request()
889d75300ec6 drm/i915/selftests: Fix locking inversion in lrc selftest.
b4725537cd4f drm/i915: Dirty hack to fix selftests locking inversion
595a91872a32 drm/i915: Convert i915_perf to ww locking as well
07f6b9485c85 drm/i915: Kill last user of intel_context_create_request outside of selftests
bcd26305ed48 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
2668b4a08252 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
dc2ed22efdf0 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
4b9677a0176f drm/i915: Pin engine before pinning all objects, v3.
5f90a8dff8ac drm/i915: Nuke arguments to eb_pin_engine
bef2d503c37d drm/i915: Add ww context handling to context_barrier_task
3c3457d2bdc4 drm/i915: Use ww locking in intel_renderstate.
e2de950dd57e drm/i915: Use per object locking in execbuf, v6.
3f8cd593de21 drm/i915: Parse command buffer earlier in eb_relocate(slow)
ed3b18330ea7 drm/i915: Remove locking from i915_gem_object_prepare_read/write
f79d00fff047 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
f298bf3f0b01 Revert "drm/i915/gem: Drop relocation slowpath"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17071/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
