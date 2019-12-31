Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 948C112DBD2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 21:35:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE2789AD2;
	Tue, 31 Dec 2019 20:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E065F89ACD;
 Tue, 31 Dec 2019 20:35:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE38BA00E8;
 Tue, 31 Dec 2019 20:35:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 20:35:06 -0000
Message-ID: <157782450681.26887.4918592147980369986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231200356.409475-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231200356.409475-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_remap=5Fio=5Fsg=28=29_to_prefault_discontigu?=
 =?utf-8?q?ous_objects?=
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

Series: drm/i915: Introduce remap_io_sg() to prefault discontiguous objects
URL   : https://patchwork.freedesktop.org/series/71530/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7659 -> Patchwork_15959
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/index.html

Known issues
------------

  Here are the changes found in Patchwork_15959 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_objects:
    - fi-bwr-2160:        [PASS][7] -> [FAIL][8] ([i915#878])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-bwr-2160/igt@i915_selftest@live_objects.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-bwr-2160/igt@i915_selftest@live_objects.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([fdo#111096] / [i915#323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][11] ([i915#671]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 45)
------------------------------

  Additional (4): fi-skl-6770hq fi-skl-lmem fi-ivb-3770 fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7659 -> Patchwork_15959

  CI-20190529: 20190529
  CI_DRM_7659: bc7f03590ed801bb911de587835ff9547ae63fbc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15959: 8917f528d0ded636f401a29e06a63bc174f71a8a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8917f528d0de drm/i915: Introduce remap_io_sg() to prefault discontiguous objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
