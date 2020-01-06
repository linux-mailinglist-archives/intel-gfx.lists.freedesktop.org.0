Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAD21310DF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 11:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A436E258;
	Mon,  6 Jan 2020 10:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 441086E255;
 Mon,  6 Jan 2020 10:55:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43EA7A0003;
 Mon,  6 Jan 2020 10:55:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 10:55:43 -0000
Message-ID: <157830814324.24766.11506378703545040725@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/i915/selftests=3A_Fixup_sparse_?=
 =?utf-8?q?=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [1/8] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71648/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7680 -> Patchwork_15999
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/index.html

Known issues
------------

  Here are the changes found in Patchwork_15999 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][1] ([i915#816]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][3] ([i915#765]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-icl-y/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#553] / [i915#725]) -> [DMESG-FAIL][10] ([i915#770])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (43 -> 40)
------------------------------

  Additional (6): fi-bdw-gvtdvm fi-glk-dsi fi-ilk-650 fi-cfl-8109u fi-kbl-8809g fi-skl-6600u 
  Missing    (9): fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-bsw-kefka fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15999

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15999: ce3a2924e90c45cf9cca6d2b80e29f4bdbf4ed98 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce3a2924e90c drm/i915/gt: Use memset_p to clear the ports
7ef130338af2 drm/i915/gt: Drop mutex serialisation between context pin/unpin
a5dd173981d4 drm/i915: Only retire requests when eviction is allowed to blocked
66b1f7932954 drm/i915: Replace vma parking with a clock aging algorithm
4b68dfe31714 drm/i915: Merge i915_request.flags with i915_request.fence.flags
6fc7325bd127 drm/i915/gt: Convert the final GEM_TRACE to GT_TRACE and co
dc3de2f2809d drm/i915/selftests: Impose a timeout for request submission
2b51023a3737 drm/i915/selftests: Fixup sparse __user annotation on local var

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15999/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
