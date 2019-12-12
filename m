Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE87911C83E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 09:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E5F6ECAF;
	Thu, 12 Dec 2019 08:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0C726ECAC;
 Thu, 12 Dec 2019 08:31:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D900BA01BB;
 Thu, 12 Dec 2019 08:31:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 08:31:43 -0000
Message-ID: <157613950388.32007.16062544662476336829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212072737.884335-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212072737.884335-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/uc=3A_Ignore_maybe-un?=
 =?utf-8?q?used_debug-only_i915_local?=
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

Series: series starting with [CI,1/2] drm/i915/uc: Ignore maybe-unused debug-only i915 local
URL   : https://patchwork.freedesktop.org/series/70800/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7548 -> Patchwork_15708
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/index.html

Known issues
------------

  Here are the changes found in Patchwork_15708 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2] ([i915#623])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][3] ([fdo#111593]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-each:
    - {fi-tgl-guc}:       [INCOMPLETE][5] ([i915#707]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-tgl-guc/igt@gem_sync@basic-each.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-tgl-guc/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][7] ([i915#722]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [INCOMPLETE][9] ([i915#694]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-7500u:       [DMESG-FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [DMESG-FAIL][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [DMESG-FAIL][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [DMESG-FAIL][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8700k:       [DMESG-FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-r:           [DMESG-FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [DMESG-FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [DMESG-FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       [DMESG-FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-lmem:        [DMESG-FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [DMESG-FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][43] ([fdo#111407]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][45] ([i915#563]) -> [DMESG-FAIL][46] ([i915#770])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][47] ([i915#62] / [i915#92]) -> [DMESG-WARN][48] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][49] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][50] ([i915#62] / [i915#92]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7548/fi-kbl-x1275/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/fi-kbl-x1275/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7548 -> Patchwork_15708

  CI-20190529: 20190529
  CI_DRM_7548: 406e570d4e8be08530c7a7cad1e593d5347d1577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15708: 6f7d167a53ce832dfc5decab188615bf685b2b46 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6f7d167a53ce drm/i915/gt: Only ignore rc6 parking for PCU on byt/bsw
e8de3f351d94 drm/i915/uc: Ignore maybe-unused debug-only i915 local

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15708/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
