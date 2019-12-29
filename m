Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A05F12CB23
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 23:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F2C89C2C;
	Sun, 29 Dec 2019 22:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32EEF89C27;
 Sun, 29 Dec 2019 22:27:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 231F0A010F;
 Sun, 29 Dec 2019 22:27:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 29 Dec 2019 22:27:53 -0000
Message-ID: <157765847311.6885.13714168682909726844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Ensure_that_all_new_?=
 =?utf-8?q?contexts_clear_STOP=5FRING_=28rev2=29?=
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

Series: series starting with [1/7] drm/i915/gt: Ensure that all new contexts clear STOP_RING (rev2)
URL   : https://patchwork.freedesktop.org/series/71479/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7651 -> Patchwork_15942
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/index.html

Known issues
------------

  Here are the changes found in Patchwork_15942 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][3] ([fdo#103927]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92]) -> [DMESG-WARN][6] ([i915#62] / [i915#92] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][7] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][8] ([i915#62] / [i915#92]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 39)
------------------------------

  Additional (6): fi-hsw-4770r fi-skl-6770hq fi-hsw-4770 fi-gdg-551 fi-ivb-3770 fi-bsw-nick 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7651 -> Patchwork_15942

  CI-20190529: 20190529
  CI_DRM_7651: dcd9b47d596ff82b9768f1ecba436ef03073c211 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15942: e47cda8727118862688e61985babd003b1387f80 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e47cda872711 drm/i915/gt: Always poison the kernel_context image before unparking
293d58955692 drm/i915/gt: Discard stale context state from across idling
cd23eee663a4 drm/i915/gt: Ignore stale context state upon resume
f1cdc0f7b6bb drm/i915/gt: Do not restore invalid RS state
efcd77a4c67a drm/i915/gt: Avoid using the GPU before initialisation
72f189453008 drm/i915/gt: Avoid using tag 0 for the very first submission
766c751f111b drm/i915/gt: Ensure that all new contexts clear STOP_RING

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
