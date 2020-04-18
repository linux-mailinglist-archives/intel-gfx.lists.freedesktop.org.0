Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C21881AEEBC
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 16:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36826EC9A;
	Sat, 18 Apr 2020 14:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A96776EC96;
 Sat, 18 Apr 2020 14:34:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A089A363D;
 Sat, 18 Apr 2020 14:34:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 18 Apr 2020 14:34:10 -0000
Message-ID: <158722045047.420.6948159496627180203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200418071430.6779-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200418071430.6779-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Trace_RPS_event?=
 =?utf-8?q?s?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Trace RPS events
URL   : https://patchwork.freedesktop.org/series/76129/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8323 -> Patchwork_17364
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17364 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17364, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17364:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17364 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([i915#976])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [INCOMPLETE][9] ([i915#489]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-bwr-2160/igt@i915_selftest@live@perf.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6770hq:      [FAIL][11] ([fdo#103375]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8323/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8323 -> Patchwork_17364

  CI-20190529: 20190529
  CI_DRM_8323: 65545bfa1e4f92bb86462bf7226b8a33d13715a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17364: e3d96b70173cae2901d7a8f1f92e11f2a6967495 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3d96b70173c drm/i915/gt: Use the RPM config register to determine clk frequencies
c98700c942c4 drm/i915/gt: Trace RPS events

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17364/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
