Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2976152582
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 05:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5FC6F474;
	Wed,  5 Feb 2020 04:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D12136F473;
 Wed,  5 Feb 2020 04:09:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C16C0A00C7;
 Wed,  5 Feb 2020 04:09:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 05 Feb 2020 04:09:04 -0000
Message-ID: <158087574476.17318.5431451332245750654@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200204154803.25403-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_the_docs_for_intel=5Fset=5Fcdclk=5Fpost=5Fplane=5F?=
 =?utf-8?q?update=28=29?=
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

Series: drm/i915: Fix the docs for intel_set_cdclk_post_plane_update()
URL   : https://patchwork.freedesktop.org/series/72981/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7867 -> Patchwork_16420
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/index.html

Known issues
------------

  Here are the changes found in Patchwork_16420 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][7] ([i915#45]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (42 -> 39)
------------------------------

  Additional (6): fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-snb-2600 fi-skl-6600u fi-kbl-r 
  Missing    (9): fi-hsw-4200u fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-ilk-650 fi-ctg-p8600 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16420

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16420: c55e250c7ef14c34953e421bc01ca519808857a9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c55e250c7ef1 drm/i915: Fix the docs for intel_set_cdclk_post_plane_update()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16420/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
