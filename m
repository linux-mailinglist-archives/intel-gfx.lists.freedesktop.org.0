Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE3216B0C3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 21:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF6E6E95C;
	Mon, 24 Feb 2020 20:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 789626E957;
 Mon, 24 Feb 2020 20:07:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 614CDA47E4;
 Mon, 24 Feb 2020 20:07:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 20:07:01 -0000
Message-ID: <158257482136.28361.7006773490588058754@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224155601.4125280-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224155601.4125280-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Cleanup_shadow_batch_after_I915=5FEXEC=5FSECURE?=
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

Series: drm/i915/gem: Cleanup shadow batch after I915_EXEC_SECURE
URL   : https://patchwork.freedesktop.org/series/73857/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7999 -> Patchwork_16692
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/index.html

Known issues
------------

  Here are the changes found in Patchwork_16692 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2] ([i915#694] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] ([CI#94])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_hangcheck:
    - fi-skl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#108744])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-skl-guc/igt@i915_selftest@live_hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-skl-guc/igt@i915_selftest@live_hangcheck.html

  * igt@kms_addfb_basic@addfb25-y-tiled:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-tgl-y/igt@kms_addfb_basic@addfb25-y-tiled.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][9] -> [FAIL][10] ([i915#217] / [i915#976])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@kms_addfb_basic@addfb25-yf-tiled:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-tgl-y/igt@kms_addfb_basic@addfb25-yf-tiled.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][17] ([i915#45]) -> [TIMEOUT][18] ([fdo#112271] / [i915#1084] / [i915#816])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7999 -> Patchwork_16692

  CI-20190529: 20190529
  CI_DRM_7999: e853e3d470d1bb4ac87042094b99adbdbaa87944 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16692: afccf9a3632c60cfee91fdf498010dbcb75b08d3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

afccf9a3632c drm/i915/gem: Cleanup shadow batch after I915_EXEC_SECURE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
