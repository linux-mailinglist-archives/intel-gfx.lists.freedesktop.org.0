Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E40D135A08
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 14:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCD46E40A;
	Thu,  9 Jan 2020 13:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B036E6E402;
 Thu,  9 Jan 2020 13:27:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EBDFA00C7;
 Thu,  9 Jan 2020 13:27:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 13:27:11 -0000
Message-ID: <157857643162.4563.10473944421154528736@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109085142.871563-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109085142.871563-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Pin_the_context_as_we_work_on_it_=28rev2=29?=
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

Series: drm/i915: Pin the context as we work on it (rev2)
URL   : https://patchwork.freedesktop.org/series/71700/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7706 -> Patchwork_16034
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/index.html

Known issues
------------

  Here are the changes found in Patchwork_16034 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-wait-default:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#949]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html

  * igt@gem_sync@basic-store-each:
    - fi-tgl-y:           [INCOMPLETE][5] ([i915#435] / [i915#472]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-tgl-y/igt@gem_sync@basic-store-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-tgl-y/igt@gem_sync@basic-store-each.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][7] ([fdo#103927]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@prime_vgem@basic-write:
    - fi-icl-dsi:         [DMESG-WARN][9] ([i915#109]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-icl-dsi/igt@prime_vgem@basic-write.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-icl-dsi/igt@prime_vgem@basic-write.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#553]) -> [DMESG-FAIL][12] ([i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-hsw-4770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [DMESG-FAIL][13] ([i915#725]) -> [DMESG-FAIL][14] ([i915#553] / [i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#949]: https://gitlab.freedesktop.org/drm/intel/issues/949


Participating hosts (44 -> 48)
------------------------------

  Additional (9): fi-kbl-soraka fi-skl-6770hq fi-kbl-7500u fi-ivb-3770 fi-skl-lmem fi-kbl-7560u fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7706 -> Patchwork_16034

  CI-20190529: 20190529
  CI_DRM_7706: 3d36ffaa59259e46de9dde125d18d228d764609f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16034: 88e0594b330288b0a14730ae34077b090ccc276d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

88e0594b3302 drm/i915: Pin the context as we work on it

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
