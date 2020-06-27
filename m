Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014420C053
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 10:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BAEE6E21C;
	Sat, 27 Jun 2020 08:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 764906E1B8;
 Sat, 27 Jun 2020 08:38:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EC0DA47EB;
 Sat, 27 Jun 2020 08:38:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 27 Jun 2020 08:38:55 -0000
Message-ID: <159324713542.5397.11129147213699612290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW92?=
 =?utf-8?q?e_some_device_capabilities_under_intel=5Fgt?=
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

Series: Move some device capabilities under intel_gt
URL   : https://patchwork.freedesktop.org/series/78829/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8668 -> Patchwork_18029
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18029 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18029, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18029:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-cml-s/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-icl-y/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-whl-u:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-whl-u/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-whl-u/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-ehl-1/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_18029 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][31] -> [DMESG-WARN][32] ([i915#1982])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-byt-j1900/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][35] -> [INCOMPLETE][36] ([i915#58] / [k.org#198133])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][37] -> [INCOMPLETE][38] ([i915#794])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][39] -> [INCOMPLETE][40] ([i915#794])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][41] -> [INCOMPLETE][42] ([i915#794])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][43] -> [INCOMPLETE][44] ([i915#794])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][45] -> [INCOMPLETE][46] ([i915#1436])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][47] -> [DMESG-WARN][48] ([i915#62] / [i915#92] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][49] -> [DMESG-WARN][50] ([i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [INCOMPLETE][51] ([i915#1250] / [i915#1436]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][53] ([i915#1888]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bxt-dsi/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bxt-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [DMESG-WARN][57] ([i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - {fi-kbl-7560u}:     [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][63] ([i915#62] / [i915#92]) -> [DMESG-WARN][64] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][65] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][66] ([i915#62] / [i915#92]) +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8668/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8668 -> Patchwork_18029

  CI-20190529: 20190529
  CI_DRM_8668: ebcb5923cc316fea9d46629cce83960511da889e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18029: f739bfbef07e9f83a169c892888fc16de307f0db @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f739bfbef07e drm/i915/sseu: Move sseu_info under gt_info
5ba87fdd277d drm/i915/sseu: Move sseu detection and dump to intel_sseu
09b520c7dacc drm/i915: Introduce gt_init_mmio
f77f0e80766d drm/i915: Move the engine mask to intel_gt_info
72189c790177 drm/i915: Move engine-related mmio init to engines_init_mmio
cb6b1a857f72 drm/i915: Use the gt in HAS_ENGINE
999ecfc5fc75 drm/i915: Convert device_info to uncore/de_read

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18029/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
