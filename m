Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6555113640F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 00:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F9E6E97F;
	Thu,  9 Jan 2020 23:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 048FB6E97C;
 Thu,  9 Jan 2020 23:53:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F40F8A0009;
 Thu,  9 Jan 2020 23:53:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 23:53:41 -0000
Message-ID: <157861402199.4566.4321783252506004729@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109141152.975687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109141152.975687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Validation_rotated_vma_bounds_are_within_the_object?=
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

Series: drm/i915/gt: Validation rotated vma bounds are within the object
URL   : https://patchwork.freedesktop.org/series/71827/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7714 -> Patchwork_16042
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16042 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16042, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16042:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_vma:
    - fi-gdg-551:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-gdg-551/igt@i915_selftest@live_vma.html
    - fi-bsw-nick:        [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-bsw-nick/igt@i915_selftest@live_vma.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-bsw-nick/igt@i915_selftest@live_vma.html
    - fi-skl-lmem:        [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-lmem/igt@i915_selftest@live_vma.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-lmem/igt@i915_selftest@live_vma.html
    - fi-bdw-5557u:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-bdw-5557u/igt@i915_selftest@live_vma.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-bdw-5557u/igt@i915_selftest@live_vma.html
    - fi-snb-2600:        [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-snb-2600/igt@i915_selftest@live_vma.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-snb-2600/igt@i915_selftest@live_vma.html
    - fi-skl-6770hq:      NOTRUN -> [DMESG-WARN][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-6770hq/igt@i915_selftest@live_vma.html
    - fi-icl-u3:          [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-u3/igt@i915_selftest@live_vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-u3/igt@i915_selftest@live_vma.html
    - fi-kbl-soraka:      [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-kbl-soraka/igt@i915_selftest@live_vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-kbl-soraka/igt@i915_selftest@live_vma.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-6700k2/igt@i915_selftest@live_vma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-6700k2/igt@i915_selftest@live_vma.html
    - fi-hsw-4770:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-hsw-4770/igt@i915_selftest@live_vma.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-hsw-4770/igt@i915_selftest@live_vma.html
    - fi-byt-j1900:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-byt-j1900/igt@i915_selftest@live_vma.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-byt-j1900/igt@i915_selftest@live_vma.html
    - fi-blb-e6850:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-blb-e6850/igt@i915_selftest@live_vma.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-blb-e6850/igt@i915_selftest@live_vma.html
    - fi-elk-e7500:       [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-elk-e7500/igt@i915_selftest@live_vma.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-elk-e7500/igt@i915_selftest@live_vma.html
    - fi-ilk-650:         [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-ilk-650/igt@i915_selftest@live_vma.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-ilk-650/igt@i915_selftest@live_vma.html
    - fi-cml-u2:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-cml-u2/igt@i915_selftest@live_vma.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-cml-u2/igt@i915_selftest@live_vma.html
    - fi-icl-y:           [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-y/igt@i915_selftest@live_vma.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-y/igt@i915_selftest@live_vma.html
    - fi-ivb-3770:        [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-ivb-3770/igt@i915_selftest@live_vma.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-ivb-3770/igt@i915_selftest@live_vma.html
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-bsw-n3050/igt@i915_selftest@live_vma.html
    - fi-cfl-guc:         [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-cfl-guc/igt@i915_selftest@live_vma.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-cfl-guc/igt@i915_selftest@live_vma.html
    - fi-skl-guc:         [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-guc/igt@i915_selftest@live_vma.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-guc/igt@i915_selftest@live_vma.html
    - fi-pnv-d510:        [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-pnv-d510/igt@i915_selftest@live_vma.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-pnv-d510/igt@i915_selftest@live_vma.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-bsw-kefka/igt@i915_selftest@live_vma.html
    - fi-kbl-x1275:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-kbl-x1275/igt@i915_selftest@live_vma.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-kbl-x1275/igt@i915_selftest@live_vma.html
    - fi-icl-dsi:         [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-dsi/igt@i915_selftest@live_vma.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-dsi/igt@i915_selftest@live_vma.html
    - fi-apl-guc:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-apl-guc/igt@i915_selftest@live_vma.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-apl-guc/igt@i915_selftest@live_vma.html
    - fi-glk-dsi:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-glk-dsi/igt@i915_selftest@live_vma.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-glk-dsi/igt@i915_selftest@live_vma.html
    - fi-icl-u2:          [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-u2/igt@i915_selftest@live_vma.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-u2/igt@i915_selftest@live_vma.html
    - fi-cfl-8700k:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-cfl-8700k/igt@i915_selftest@live_vma.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-cfl-8700k/igt@i915_selftest@live_vma.html
    - fi-kbl-r:           [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-kbl-r/igt@i915_selftest@live_vma.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-kbl-r/igt@i915_selftest@live_vma.html
    - fi-byt-n2820:       [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-byt-n2820/igt@i915_selftest@live_vma.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-byt-n2820/igt@i915_selftest@live_vma.html
    - fi-kbl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-kbl-guc/igt@i915_selftest@live_vma.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-kbl-guc/igt@i915_selftest@live_vma.html
    - fi-icl-guc:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-guc/igt@i915_selftest@live_vma.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-guc/igt@i915_selftest@live_vma.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_vma:
    - {fi-tgl-u}:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-tgl-u/igt@i915_selftest@live_vma.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-tgl-u/igt@i915_selftest@live_vma.html

  
Known issues
------------

  Here are the changes found in Patchwork_16042 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][63] -> [INCOMPLETE][64] ([fdo#103927])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [PASS][65] -> [DMESG-WARN][66] ([i915#889])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][67] -> [DMESG-FAIL][68] ([i915#770])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [FAIL][69] ([fdo#103375]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [FAIL][71] ([fdo#111550]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][73] ([i915#725]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][75] ([i915#424]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [DMESG-FAIL][77] ([i915#623]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][79] ([i915#722]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][81] ([fdo#103375]) -> [DMESG-WARN][82] ([IGT#4] / [i915#263])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 39)
------------------------------

  Additional (5): fi-bsw-n3050 fi-skl-6770hq fi-gdg-551 fi-bsw-kefka fi-skl-6600u 
  Missing    (12): fi-hsw-4770r fi-ehl-1 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-whl-u fi-tgl-y fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16042

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16042: cd35fb1ef5a1de344a9a544883c5f16e3b7630fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cd35fb1ef5a1 drm/i915/gt: Validation rotated vma bounds are within the object

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16042/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
