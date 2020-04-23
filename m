Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8249A1B647C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 21:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB84789DE1;
	Thu, 23 Apr 2020 19:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 409FA89DE1;
 Thu, 23 Apr 2020 19:32:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38F9DA0088;
 Thu, 23 Apr 2020 19:32:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 23 Apr 2020 19:32:13 -0000
Message-ID: <158767033322.26751.2747038044807742915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Add_engine_scratch_regi?=
 =?utf-8?q?ster_to_live=5Flrc=5Ffixed?=
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

Series: series starting with [1/6] drm/i915: Add engine scratch register to live_lrc_fixed
URL   : https://patchwork.freedesktop.org/series/76406/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8354 -> Patchwork_17445
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17445 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17445, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17445:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-cml-u2:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-u2/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-cml-u2/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-lmem:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-lmem/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-skl-lmem/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-n3050:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-cfl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-soraka:      [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-soraka/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-soraka/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-kefka:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-bsw-kefka/igt@i915_selftest@live@gt_lrc.html
    - fi-cml-s:           [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cml-s/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-cml-s/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-x1275:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
    - fi-glk-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-glk-dsi/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-r:           [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-r/igt@i915_selftest@live@gt_lrc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-r/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-8809g:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-8809g/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-guc/igt@i915_selftest@live@gt_lrc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-y:           [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
    - fi-kbl-7500u:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-7500u/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-nick:        [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
    - fi-cfl-8109u:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-cfl-8109u/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-6600u:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6600u/igt@i915_selftest@live@gt_lrc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-skl-6600u/igt@i915_selftest@live@gt_lrc.html
    - fi-bdw-5557u:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-bdw-5557u/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-guc:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-skl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-whl-u:           [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-whl-u/igt@i915_selftest@live@gt_lrc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-whl-u/igt@i915_selftest@live@gt_lrc.html
    - fi-apl-guc:         [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-apl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-skl-6700k2:      [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-skl-6700k2/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-u2:          [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
    - fi-cfl-8700k:       [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-cfl-8700k/igt@i915_selftest@live@gt_lrc.html
    - fi-bxt-dsi:         [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-bxt-dsi/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-ehl-1}:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_17445 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][55] ([fdo#109271]) -> [FAIL][56] ([i915#62] / [i915#95])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8354 -> Patchwork_17445

  CI-20190529: 20190529
  CI_DRM_8354: 6ec6eeeda39e1733777f9115ba813a992a47b5fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17445: 4c1c50cfa325d7d211e34c94707a34ebbb62bec5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c1c50cfa325 drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
ffc915459ec7 drm/i915: Add live selftests for indirect ctx batchbuffers
60f8ab766dee drm/i915: Add per ctx batchbuffer wa for timestamp
af7593329e65 drm/i915: Make define for lrc state offset
a124f376897f drm/i915: Add context batchbuffers to live_lrc_fixed
56bad9b0154e drm/i915: Add engine scratch register to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17445/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
