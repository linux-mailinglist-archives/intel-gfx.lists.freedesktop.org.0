Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 315D6143932
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 10:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69916E20B;
	Tue, 21 Jan 2020 09:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DACAD6E20B;
 Tue, 21 Jan 2020 09:13:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2CB3A011C;
 Tue, 21 Jan 2020 09:13:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 21 Jan 2020 09:13:06 -0000
Message-ID: <157959798676.11478.11113831822550787635@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120122103.26886-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200120122103.26886-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev20=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev20)
URL   : https://patchwork.freedesktop.org/series/70059/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7781 -> Patchwork_16174
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16174:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-ehl-1/igt@gem_exec_parallel@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16174 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gt_engines:
    - fi-skl-lmem:        [PASS][4] -> [INCOMPLETE][5] ([i915#971])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-skl-lmem/igt@i915_selftest@live_gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-skl-lmem/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_uncore:
    - fi-skl-lmem:        [PASS][6] -> [DMESG-FAIL][7] ([i915#889])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-skl-lmem/igt@i915_selftest@live_uncore.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-skl-lmem/igt@i915_selftest@live_uncore.html

  * igt@i915_selftest@live_workarounds:
    - fi-skl-lmem:        [PASS][8] -> [DMESG-WARN][9] ([i915#889]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-skl-lmem/igt@i915_selftest@live_workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-skl-lmem/igt@i915_selftest@live_workarounds.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [INCOMPLETE][10] ([i915#937]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][12] ([i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][14] ([fdo#112271]) -> [INCOMPLETE][15] ([i915#45])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#971]: https://gitlab.freedesktop.org/drm/intel/issues/971


Participating hosts (50 -> 40)
------------------------------

  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-byt-clapper fi-bsw-nick fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16174

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16174: 553ba35fe574cc3b10b3fc35b9cfed78478bb38f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

553ba35fe574 drm/i915: Correctly map DBUF slices to pipes
bffb7bb18a34 drm/i915: Manipulate DBuf slices properly
3f955aa5a554 drm/i915: Introduce parameterized DBUF_CTL
5e3da7956ba6 drm/i915: Move dbuf slice update to proper place
4b13ffbbc2da drm/i915: Remove skl_ddl_allocation struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
