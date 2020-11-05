Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74BE2A8324
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B0E6EDBE;
	Thu,  5 Nov 2020 16:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4AD6ED87;
 Thu,  5 Nov 2020 16:11:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F3D9A47DB;
 Thu,  5 Nov 2020 16:11:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Nov 2020 16:11:19 -0000
Message-ID: <160459267909.14956.2952590917227723561@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105150542.11801-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201105150542.11801-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_free=5Fwork_for_GEM_contexts?=
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
Content-Type: multipart/mixed; boundary="===============0437327552=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0437327552==
Content-Type: multipart/alternative;
 boundary="===============8573100234337359537=="

--===============8573100234337359537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Drop free_work for GEM contexts
URL   : https://patchwork.freedesktop.org/series/83537/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9269 -> Patchwork_18860
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18860 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18860, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18860:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ilk-650/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ilk-650/igt@gem_busy@busy@all.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-pnv-d510/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-pnv-d510/igt@gem_busy@busy@all.html
    - fi-gdg-551:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-gdg-551/igt@gem_busy@busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-gdg-551/igt@gem_busy@busy@all.html
    - fi-snb-2520m:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-snb-2520m/igt@gem_busy@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-snb-2520m/igt@gem_busy@busy@all.html
    - fi-bwr-2160:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bwr-2160/igt@gem_busy@busy@all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bwr-2160/igt@gem_busy@busy@all.html
    - fi-hsw-4770:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-hsw-4770/igt@gem_busy@busy@all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-hsw-4770/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-guc/igt@gem_busy@busy@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-guc/igt@gem_busy@busy@all.html
    - fi-snb-2600:        [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-snb-2600/igt@gem_busy@busy@all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-snb-2600/igt@gem_busy@busy@all.html
    - fi-ivb-3770:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ivb-3770/igt@gem_busy@busy@all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ivb-3770/igt@gem_busy@busy@all.html
    - fi-byt-j1900:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-byt-j1900/igt@gem_busy@busy@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-byt-j1900/igt@gem_busy@busy@all.html
    - fi-elk-e7500:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-elk-e7500/igt@gem_busy@busy@all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-elk-e7500/igt@gem_busy@busy@all.html
    - fi-skl-6700k2:      [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-6700k2/igt@gem_busy@busy@all.html
    - fi-tgl-u2:          [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-u2/igt@gem_busy@busy@all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-u2/igt@gem_busy@busy@all.html
    - fi-blb-e6850:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-blb-e6850/igt@gem_busy@busy@all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-blb-e6850/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-6600u:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-6600u/igt@gem_close_race@basic-threads.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-6600u/igt@gem_close_race@basic-threads.html
    - fi-skl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-guc/igt@gem_close_race@basic-threads.html
    - fi-bdw-5557u:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bdw-5557u/igt@gem_close_race@basic-threads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bdw-5557u/igt@gem_close_race@basic-threads.html
    - fi-icl-y:           [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-icl-y/igt@gem_close_race@basic-threads.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-icl-y/igt@gem_close_race@basic-threads.html
    - fi-bdw-gvtdvm:      [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bdw-gvtdvm/igt@gem_close_race@basic-threads.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bdw-gvtdvm/igt@gem_close_race@basic-threads.html
    - fi-bsw-nick:        [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-nick/igt@gem_close_race@basic-threads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-nick/igt@gem_close_race@basic-threads.html
    - fi-kbl-7500u:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
    - fi-cfl-8109u:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
    - fi-kbl-r:           [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-r/igt@gem_close_race@basic-threads.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-r/igt@gem_close_race@basic-threads.html
    - fi-bsw-kefka:       [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-kefka/igt@gem_close_race@basic-threads.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-kefka/igt@gem_close_race@basic-threads.html
    - fi-glk-dsi:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-glk-dsi/igt@gem_close_race@basic-threads.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-glk-dsi/igt@gem_close_race@basic-threads.html
    - fi-tgl-y:           [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-y/igt@gem_close_race@basic-threads.html
    - fi-kbl-soraka:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-soraka/igt@gem_close_race@basic-threads.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-soraka/igt@gem_close_race@basic-threads.html
    - fi-cfl-guc:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-guc/igt@gem_close_race@basic-threads.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-guc/igt@gem_close_race@basic-threads.html
    - fi-kbl-x1275:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
    - fi-cml-s:           [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cml-s/igt@gem_close_race@basic-threads.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cml-s/igt@gem_close_race@basic-threads.html
    - fi-skl-lmem:        [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-lmem/igt@gem_close_race@basic-threads.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-lmem/igt@gem_close_race@basic-threads.html
    - fi-bsw-n3050:       [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-n3050/igt@gem_close_race@basic-threads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-n3050/igt@gem_close_race@basic-threads.html
    - fi-icl-u2:          [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-icl-u2/igt@gem_close_race@basic-threads.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-icl-u2/igt@gem_close_race@basic-threads.html
    - fi-cml-u2:          [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cml-u2/igt@gem_close_race@basic-threads.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cml-u2/igt@gem_close_race@basic-threads.html
    - fi-cfl-8700k:       [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-8700k/igt@gem_close_race@basic-threads.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-8700k/igt@gem_close_race@basic-threads.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_close_race@basic-threads:
    - {fi-ehl-1}:         [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ehl-1/igt@gem_close_race@basic-threads.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ehl-1/igt@gem_close_race@basic-threads.html
    - {fi-tgl-dsi}:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-dsi/igt@gem_close_race@basic-threads.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-dsi/igt@gem_close_race@basic-threads.html
    - {fi-kbl-7560u}:     [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-7560u/igt@gem_close_race@basic-threads.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-7560u/igt@gem_close_race@basic-threads.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9269 and Patchwork_18860:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18860 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][77] -> [DMESG-WARN][78] ([i915#1635] / [i915#62])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_close_race@basic-process:
    - fi-tgl-y:           [PASS][79] -> [DMESG-WARN][80] ([i915#402])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-y/igt@gem_close_race@basic-process.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-y/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-apl-guc:         [PASS][81] -> [DMESG-WARN][82] ([i915#1635])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-apl-guc/igt@gem_close_race@basic-threads.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-apl-guc/igt@gem_close_race@basic-threads.html
    - fi-bxt-dsi:         [PASS][83] -> [DMESG-WARN][84] ([i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bxt-dsi/igt@gem_close_race@basic-threads.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bxt-dsi/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9269 -> Patchwork_18860

  CI-20190529: 20190529
  CI_DRM_9269: 27ee0946b657de27f0d6d25264c8a8f335795b95 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18860: 1d27e3aff4a313dc64b72cb82fe1010e3fa7ad53 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1d27e3aff4a3 drm/i915/gem: Drop free_work for GEM contexts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/index.html

--===============8573100234337359537==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/gem: Drop free_work for GEM contexts</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83537/">https://patchwork.freedesktop.org/series/83537/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9269 -&gt; Patchwork_18860</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18860 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18860, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18860:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ilk-650/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-pnv-d510/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-pnv-d510/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-gdg-551/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-gdg-551/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-snb-2520m/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-snb-2520m/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bwr-2160/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bwr-2160/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-hsw-4770/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-hsw-4770/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-guc/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-snb-2600/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-snb-2600/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ivb-3770/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ivb-3770/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-byt-j1900/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-byt-j1900/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-elk-e7500/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-elk-e7500/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-6700k2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-6700k2/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-u2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-u2/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-blb-e6850/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-blb-e6850/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-6600u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-6600u/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-guc/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bdw-5557u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bdw-5557u/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-icl-y/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-icl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bdw-gvtdvm/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bdw-gvtdvm/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-nick/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-nick/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-8109u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-8109u/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-r/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-r/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-kefka/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-kefka/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-glk-dsi/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-glk-dsi/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-soraka/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-soraka/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-guc/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-x1275/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-x1275/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cml-s/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cml-s/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-skl-lmem/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-skl-lmem/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bsw-n3050/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bsw-n3050/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-icl-u2/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-icl-u2/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cml-u2/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cml-u2/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-ehl-1/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-ehl-1/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-dsi/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-dsi/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-kbl-7560u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-kbl-7560u/igt@gem_close_race@basic-threads.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9269 and Patchwork_18860:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18860 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-tgl-y/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-tgl-y/igt@gem_close_race@basic-process.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-apl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-apl-guc/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9269/fi-bxt-dsi/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18860/fi-bxt-dsi/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9269 -&gt; Patchwork_18860</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9269: 27ee0946b657de27f0d6d25264c8a8f335795b95 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18860: 1d27e3aff4a313dc64b72cb82fe1010e3fa7ad53 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1d27e3aff4a3 drm/i915/gem: Drop free_work for GEM contexts</p>

</body>
</html>

--===============8573100234337359537==--

--===============0437327552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0437327552==--
