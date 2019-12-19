Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0EE126097
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D2B6EB46;
	Thu, 19 Dec 2019 11:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BD756EB46;
 Thu, 19 Dec 2019 11:13:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03166A0075;
 Thu, 19 Dec 2019 11:13:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 19 Dec 2019 11:13:22 -0000
Message-ID: <157675400297.26202.2942813619299947339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219101900.431520-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20191219101900.431520-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_nest_annotation_from_intel=5Fcontext=5Funpin?=
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

Series: drm/i915: Remove nest annotation from intel_context_unpin
URL   : https://patchwork.freedesktop.org/series/71157/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7602 -> Patchwork_15838
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15838 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15838, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15838:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_create@basic-files:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
    - fi-ivb-3770:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-hsw-peppy/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-hsw-peppy/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-snb-2600:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-snb-2600/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-snb-2600/igt@gem_exec_gttfill@basic.html
    - fi-icl-u3:          [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-icl-u3/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-icl-u3/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          NOTRUN -> [DMESG-WARN][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-snb-2520m:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-snb-2520m/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-skl-6770hq:      NOTRUN -> [DMESG-WARN][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-skl-6770hq/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_evict:
    - fi-kbl-r:           NOTRUN -> [DMESG-WARN][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-r/igt@i915_selftest@live_evict.html
    - fi-icl-y:           [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-icl-y/igt@i915_selftest@live_evict.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-icl-y/igt@i915_selftest@live_evict.html
    - fi-glk-dsi:         [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-glk-dsi/igt@i915_selftest@live_evict.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-glk-dsi/igt@i915_selftest@live_evict.html
    - fi-cfl-guc:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-cfl-guc/igt@i915_selftest@live_evict.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-cfl-guc/igt@i915_selftest@live_evict.html
    - fi-bxt-dsi:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-bxt-dsi/igt@i915_selftest@live_evict.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-bxt-dsi/igt@i915_selftest@live_evict.html

  * igt@i915_selftest@live_hangcheck:
    - fi-pnv-d510:        [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-pnv-d510/igt@i915_selftest@live_hangcheck.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-pnv-d510/igt@i915_selftest@live_hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15838 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][43] -> [TIMEOUT][44] ([i915#816])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-no-display:
    - fi-kbl-x1275:       [PASS][45] -> [DMESG-WARN][46] ([i915#62] / [i915#92])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][47] -> [DMESG-FAIL][48] ([i915#723])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-bsw-nick/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-x1275:       [DMESG-WARN][49] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][51] ([i915#722]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][53] ([fdo#111407]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][55] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][56] ([fdo#107139] / [i915#62] / [i915#92])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][57] ([i915#553] / [i915#725]) -> [DMESG-FAIL][58] ([i915#725])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][59] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][60] ([i915#62] / [i915#92]) +9 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][61] ([i915#62] / [i915#92]) -> [DMESG-WARN][62] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 34)
------------------------------

  Additional (4): fi-skl-6770hq fi-icl-u2 fi-skl-6600u fi-kbl-r 
  Missing    (16): fi-hsw-4770r fi-cml-u2 fi-bdw-samus fi-hsw-4200u fi-skl-guc fi-bdw-gvtdvm fi-bsw-cyan fi-bwr-2160 fi-cfl-8700k fi-ctg-p8600 fi-whl-u fi-gdg-551 fi-blb-e6850 fi-byt-n2820 fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7602 -> Patchwork_15838

  CI-20190529: 20190529
  CI_DRM_7602: 23aa8ababbd628f988e4bd487d8d87a5c8b809a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15838: 14f7dab1419a8259a5fd0904f0166f4a475aaa46 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14f7dab1419a drm/i915: Remove nest annotation from intel_context_unpin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15838/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
