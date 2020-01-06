Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7524A1312AE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 14:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A50389DBD;
	Mon,  6 Jan 2020 13:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD94789D67;
 Mon,  6 Jan 2020 13:17:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A55BCA0134;
 Mon,  6 Jan 2020 13:17:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 13:17:10 -0000
Message-ID: <157831663065.24769.4001027475092815342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Always_reset_the_tim?=
 =?utf-8?q?eslice_after_a_context_switch?=
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

Series: series starting with [1/2] drm/i915/gt: Always reset the timeslice after a context switch
URL   : https://patchwork.freedesktop.org/series/71655/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7683 -> Patchwork_16001
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16001:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-u}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-tgl-u/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-tgl-u/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16001 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#889]) +23 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [PASS][5] -> [DMESG-FAIL][6] ([i915#889]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][9] ([i915#816]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [INCOMPLETE][11] ([i915#671]) -> [DMESG-WARN][12] ([i915#88])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#553] / [i915#725]) -> [DMESG-FAIL][14] ([i915#553])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (50 -> 38)
------------------------------

  Missing    (12): fi-bdw-5557u fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7683 -> Patchwork_16001

  CI-20190529: 20190529
  CI_DRM_7683: 2355e597e6ecddc17319d0231f229223209f6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16001: c115ecfdb990708fbe9f7830b4aff82311821b9b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c115ecfdb990 drm/i915/gt: Yield the timeslice if waiting on a semaphore
ec9d87ed4f82 drm/i915/gt: Always reset the timeslice after a context switch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16001/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
