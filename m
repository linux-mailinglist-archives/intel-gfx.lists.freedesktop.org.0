Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7D811C537
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 06:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0DA6EC58;
	Thu, 12 Dec 2019 05:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0775D6EC57;
 Thu, 12 Dec 2019 05:20:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F36D2A0138;
 Thu, 12 Dec 2019 05:20:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 05:20:27 -0000
Message-ID: <157612802796.32009.3724227842977913563@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212000727.672044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212000727.672044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Only_ignore_rc6_parking_for_PCU_on_byt/bsw?=
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

Series: drm/i915/gt: Only ignore rc6 parking for PCU on byt/bsw
URL   : https://patchwork.freedesktop.org/series/70795/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7546 -> Patchwork_15705
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15705 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15705, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15705:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_workarounds:
    - fi-icl-u3:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-icl-u3/igt@i915_selftest@live_workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-icl-u3/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_15705 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-byt-n2820/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6] ([i915#694])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-WARN][8] ([i915#44])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [DMESG-WARN][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [DMESG-WARN][11] ([i915#592]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-bsw-nick:        [DMESG-FAIL][15] ([i915#723]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-7500u:       [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-soraka:      [DMESG-FAIL][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-soraka/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-soraka/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [DMESG-FAIL][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [DMESG-FAIL][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [DMESG-FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [DMESG-FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [DMESG-FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [DMESG-FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8700k:       [DMESG-FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-r:           [DMESG-FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [DMESG-FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [DMESG-FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       [DMESG-FAIL][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [DMESG-FAIL][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][49] ([i915#62] / [i915#92]) -> [DMESG-WARN][50] ([i915#62] / [i915#92] / [i915#95]) +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][51] ([fdo#109271]) -> [FAIL][52] ([i915#579])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][53] ([i915#725]) -> [DMESG-FAIL][54] ([i915#770])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][55] ([fdo#111096] / [i915#323]) -> [FAIL][56] ([fdo#111407])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][57] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][58] ([i915#62] / [i915#92]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7546/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7546 -> Patchwork_15705

  CI-20190529: 20190529
  CI_DRM_7546: 4570ed0515a09d2783f88258da12335edf5baebb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15705: 3d8e61acf1210dec66a9c157d9baab3853751629 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d8e61acf121 drm/i915/gt: Only ignore rc6 parking for PCU on byt/bsw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15705/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
