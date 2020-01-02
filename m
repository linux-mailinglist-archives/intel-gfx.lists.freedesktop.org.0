Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9425012EB44
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 22:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987446E14A;
	Thu,  2 Jan 2020 21:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3908A6E149;
 Thu,  2 Jan 2020 21:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 286A4A00C7;
 Thu,  2 Jan 2020 21:22:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 21:22:05 -0000
Message-ID: <157800012513.8912.16916583648636561538@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Support_discontiguous_lmem_object_maps_=28rev3=29?=
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

Series: drm/i915/gem: Support discontiguous lmem object maps (rev3)
URL   : https://patchwork.freedesktop.org/series/71557/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7667 -> Patchwork_15979
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/index.html

Known issues
------------

  Here are the changes found in Patchwork_15979 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#563])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][7] ([i915#889]) -> [PASS][8] +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [DMESG-FAIL][9] ([i915#889]) -> [PASS][10] +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_workarounds:
    - fi-bwr-2160:        [FAIL][11] ([i915#878]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bwr-2160/igt@i915_selftest@live_workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/fi-bwr-2160/igt@i915_selftest@live_workarounds.html

  
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 38)
------------------------------

  Additional (4): fi-skl-6770hq fi-blb-e6850 fi-bdw-5557u fi-kbl-7500u 
  Missing    (12): fi-kbl-soraka fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-bsw-kefka fi-skl-lmem fi-byt-clapper fi-bsw-nick fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15979

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15979: cb66594b48515552683cfc66c91c24fe340d646e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cb66594b4851 drm/i915/gem: Support discontiguous lmem object maps

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15979/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
