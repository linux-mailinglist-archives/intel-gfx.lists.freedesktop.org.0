Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2F9136D19
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 13:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3033B6E9EF;
	Fri, 10 Jan 2020 12:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5822D6E9E4;
 Fri, 10 Jan 2020 12:32:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EB9FA00FD;
 Fri, 10 Jan 2020 12:32:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 12:32:58 -0000
Message-ID: <157865957829.30836.12778951851870126466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Skip_trying_to_unbin?=
 =?utf-8?q?d_in_restore=5Fggtt=5Fmappings?=
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

Series: series starting with [1/3] drm/i915/gt: Skip trying to unbind in restore_ggtt_mappings
URL   : https://patchwork.freedesktop.org/series/71876/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7716 -> Patchwork_16049
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/index.html

Known issues
------------

  Here are the changes found in Patchwork_16049 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-store-each:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([CI#80] / [i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-tgl-y/igt@gem_sync@basic-store-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-tgl-y/igt@gem_sync@basic-store-each.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][5] -> [DMESG-WARN][6] ([i915#889])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [PASS][7] -> [INCOMPLETE][8] ([i915#879])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10] ([i915#148])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6770hq:      [PASS][11] -> [FAIL][12] ([i915#178])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][13] -> [FAIL][14] ([fdo#111407])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][15] ([i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [DMESG-FAIL][17] ([i915#723]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-n3050:       [DMESG-FAIL][19] ([i915#541]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-bsw-n3050/igt@i915_selftest@live_gt_heartbeat.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-bsw-n3050/igt@i915_selftest@live_gt_heartbeat.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][21] ([i915#553] / [i915#725]) -> [DMESG-FAIL][22] ([i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7716/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-bxt-dsi 
  Missing    (8): fi-ehl-1 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-kbl-7560u fi-byt-n2820 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7716 -> Patchwork_16049

  CI-20190529: 20190529
  CI_DRM_7716: b532d43e8d71b07d1cd0619915b1d4039002b5b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5359: 28451bcec2245dcc1fd0eb1d4c76335b2b4f97a5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16049: 5af13e22647252b327519d15f5d8bc2f5e5de087 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5af13e226472 drm/i915/gt: Mark ring->vma as active while pinned
6aec71d5890d drm/i915/gt: Mark context->state vma as active while pinned
ca8079c2039a drm/i915/gt: Skip trying to unbind in restore_ggtt_mappings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16049/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
