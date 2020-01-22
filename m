Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BA914545C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 13:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F50B6F4E6;
	Wed, 22 Jan 2020 12:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DBEC6E02C;
 Wed, 22 Jan 2020 12:26:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95BC8A00E9;
 Wed, 22 Jan 2020 12:26:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 12:26:14 -0000
Message-ID: <157969597458.22395.2018289997261002732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122105319.451215-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122105319.451215-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Hold_reference_while_on_pqueue?=
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

Series: drm/i915/execlists: Hold reference while on pqueue
URL   : https://patchwork.freedesktop.org/series/72386/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7789 -> Patchwork_16207
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16207 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16207, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16207:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_reset:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-soraka/igt@i915_selftest@live_reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-soraka/igt@i915_selftest@live_reset.html
    - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-bsw-n3050/igt@i915_selftest@live_reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-bsw-n3050/igt@i915_selftest@live_reset.html
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-bsw-kefka/igt@i915_selftest@live_reset.html
    - fi-bdw-5557u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-bdw-5557u/igt@i915_selftest@live_reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-bdw-5557u/igt@i915_selftest@live_reset.html
    - fi-skl-guc:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-skl-guc/igt@i915_selftest@live_reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-skl-guc/igt@i915_selftest@live_reset.html
    - fi-kbl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-guc/igt@i915_selftest@live_reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-guc/igt@i915_selftest@live_reset.html
    - fi-kbl-x1275:       NOTRUN -> [INCOMPLETE][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-x1275/igt@i915_selftest@live_reset.html
    - fi-kbl-7500u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-7500u/igt@i915_selftest@live_reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-7500u/igt@i915_selftest@live_reset.html
    - fi-kbl-r:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-r/igt@i915_selftest@live_reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-r/igt@i915_selftest@live_reset.html
    - fi-kbl-8809g:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-8809g/igt@i915_selftest@live_reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-8809g/igt@i915_selftest@live_reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_16207 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][21] -> [INCOMPLETE][22] ([i915#140] / [i915#671])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][23] -> [INCOMPLETE][24] ([fdo#103927])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-guc:         [PASS][25] -> [INCOMPLETE][26] ([i915#505] / [i915#671])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-u3:          [PASS][27] -> [INCOMPLETE][28] ([i915#140])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30] ([i915#505])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [PASS][31] -> [INCOMPLETE][32] ([i915#671])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-dsi:         [PASS][33] -> [INCOMPLETE][34] ([i915#140])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_reset:
    - fi-apl-guc:         [PASS][35] -> [INCOMPLETE][36] ([fdo#103927])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-apl-guc/igt@i915_selftest@live_reset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-apl-guc/igt@i915_selftest@live_reset.html
    - fi-cml-u2:          [PASS][37] -> [INCOMPLETE][38] ([i915#283])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-cml-u2/igt@i915_selftest@live_reset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-cml-u2/igt@i915_selftest@live_reset.html
    - fi-glk-dsi:         [PASS][39] -> [INCOMPLETE][40] ([i915#58] / [k.org#198133])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-glk-dsi/igt@i915_selftest@live_reset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-glk-dsi/igt@i915_selftest@live_reset.html
    - fi-icl-y:           [PASS][41] -> [INCOMPLETE][42] ([i915#140])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-y/igt@i915_selftest@live_reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-y/igt@i915_selftest@live_reset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][43] -> [DMESG-WARN][44] ([IGT#4] / [i915#263])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][45] -> [FAIL][46] ([fdo#111407])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][47] ([i915#725]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-u2:          [DMESG-WARN][49] ([i915#289]) -> [INCOMPLETE][50] ([i915#140])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7789/fi-icl-u2/igt@i915_module_load@reload-with-fault-injection.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/fi-icl-u2/igt@i915_module_load@reload-with-fault-injection.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 37)
------------------------------

  Additional (3): fi-bsw-kefka fi-kbl-x1275 fi-gdg-551 
  Missing    (11): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-kbl-7560u fi-byt-clapper fi-bsw-nick fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7789 -> Patchwork_16207

  CI-20190529: 20190529
  CI_DRM_7789: ad538420f468637d707bae774a858da3592d823f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16207: fd4e70d530f6cfcf80cc7394ebcb6294b5215731 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd4e70d530f6 drm/i915/execlists: Hold reference while on pqueue

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16207/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
