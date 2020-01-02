Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4913E12F1A2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 00:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60B089E2C;
	Thu,  2 Jan 2020 23:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F59D89D84;
 Thu,  2 Jan 2020 23:10:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 067D9A00FD;
 Thu,  2 Jan 2020 23:10:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 23:10:29 -0000
Message-ID: <157800662900.8913.14423514794277204248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102215659.1609942-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102215659.1609942-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_ongoing_retires_during_wait=5Ffor=5Fidle?=
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

Series: drm/i915/gt: Flush ongoing retires during wait_for_idle
URL   : https://patchwork.freedesktop.org/series/71575/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7668 -> Patchwork_15980
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/index.html

Known issues
------------

  Here are the changes found in Patchwork_15980 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4] ([i915#505])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][5] -> [INCOMPLETE][6] ([fdo#103927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][7] -> [DMESG-FAIL][8] ([i915#553] / [i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-WARN][12] ([i915#889]) +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-dsi:         [PASS][13] -> [DMESG-WARN][14] ([i915#109])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][15] ([i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_active:
    - fi-kbl-r:           [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-r/igt@i915_selftest@live_active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-kbl-r/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem:
    - fi-bdw-5557u:       [FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-bdw-5557u/igt@i915_selftest@live_gem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-bdw-5557u/igt@i915_selftest@live_gem.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][21] ([fdo#109635]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [DMESG-FAIL][24] ([i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (48 -> 43)
------------------------------

  Additional (5): fi-skl-guc fi-bwr-2160 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 
  Missing    (10): fi-ilk-m540 fi-tgl-u fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-ctg-p8600 fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7668 -> Patchwork_15980

  CI-20190529: 20190529
  CI_DRM_7668: e63e1b81764ac9d3edbf178821a6cbbc8d7eab9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15980: d965fea13a5b20d735e3245227a3cd1928c9eca7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d965fea13a5b drm/i915/gt: Flush ongoing retires during wait_for_idle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15980/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
