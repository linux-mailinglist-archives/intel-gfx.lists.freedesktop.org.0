Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8C5154FB5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 01:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD6C6E50C;
	Fri,  7 Feb 2020 00:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62C6E6E509;
 Fri,  7 Feb 2020 00:23:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 583DCA0078;
 Fri,  7 Feb 2020 00:23:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 00:23:41 -0000
Message-ID: <158103502133.8754.16470777855619905234@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206220827.2677474-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206220827.2677474-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Tweak_gen7_xcs_?=
 =?utf-8?q?flushing?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Tweak gen7 xcs flushing
URL   : https://patchwork.freedesktop.org/series/73121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7880 -> Patchwork_16473
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/index.html

Known issues
------------

  Here are the changes found in Patchwork_16473 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-whl-u:           [DMESG-FAIL][3] ([i915#666]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-whl-u/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/fi-whl-u/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7880/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (44 -> 43)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-ilk-650 fi-gdg-551 fi-skl-lmem fi-blb-e6850 fi-kbl-r 
  Missing    (8): fi-tgl-dsi fi-byt-squawks fi-ctg-p8600 fi-cfl-8109u fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7880 -> Patchwork_16473

  CI-20190529: 20190529
  CI_DRM_7880: 9f35354710b3db58d16acf74d9ef7bb43b31ac7a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16473: 907863599230cd121c3f1e33acaf98637f14e346 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

907863599230 drm/i915/gt: Stop invalidating the PD cachelines for gen7
7de7b7dc76da drm/i915/gt: Split the gen7 rcs flush into phases
501f355fffe4 drm/i915/gt: Tweak gen7 xcs flushing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16473/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
