Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F92119B667
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E109089A77;
	Wed,  1 Apr 2020 19:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E094089067;
 Wed,  1 Apr 2020 19:31:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9FDCA0099;
 Wed,  1 Apr 2020 19:31:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 19:31:15 -0000
Message-ID: <158576947588.25628.9057470012004973455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401185834.20595-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401185834.20595-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Try_allocating_va_from_free_space_=28rev2=29?=
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

Series: drm/i915/gem: Try allocating va from free space (rev2)
URL   : https://patchwork.freedesktop.org/series/74748/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8233 -> Patchwork_17170
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17170 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17170, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17170:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bsw-nick/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bsw-nick/igt@gem_busy@busy-all.html
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bdw-5557u/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bdw-5557u/igt@gem_busy@busy-all.html
    - fi-kbl-8809g:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-8809g/igt@gem_busy@busy-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-8809g/igt@gem_busy@busy-all.html
    - fi-icl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-icl-guc/igt@gem_busy@busy-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-r:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-r/igt@gem_busy@busy-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-r/igt@gem_busy@busy-all.html
    - fi-icl-dsi:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-icl-dsi/igt@gem_busy@busy-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-dsi/igt@gem_busy@busy-all.html
    - fi-kbl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-guc/igt@gem_busy@busy-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-guc/igt@gem_busy@busy-all.html
    - fi-kbl-7500u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-7500u/igt@gem_busy@busy-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-7500u/igt@gem_busy@busy-all.html
    - fi-kbl-x1275:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@gem_busy@busy-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-x1275/igt@gem_busy@busy-all.html
    - fi-icl-u2:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-icl-u2/igt@gem_busy@busy-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-u2/igt@gem_busy@busy-all.html
    - fi-skl-6600u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-skl-6600u/igt@gem_busy@busy-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-skl-6600u/igt@gem_busy@busy-all.html
    - fi-cfl-8700k:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cfl-8700k/igt@gem_busy@busy-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-8700k/igt@gem_busy@busy-all.html
    - fi-icl-y:           [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-icl-y/igt@gem_busy@busy-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-y/igt@gem_busy@busy-all.html
    - fi-apl-guc:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-apl-guc/igt@gem_busy@busy-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-apl-guc/igt@gem_busy@busy-all.html
    - fi-ivb-3770:        [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-ivb-3770/igt@gem_busy@busy-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-ivb-3770/igt@gem_busy@busy-all.html
    - fi-cml-s:           [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cml-s/igt@gem_busy@busy-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cml-s/igt@gem_busy@busy-all.html
    - fi-skl-6700k2:      [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-skl-6700k2/igt@gem_busy@busy-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-skl-6700k2/igt@gem_busy@busy-all.html
    - fi-skl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-skl-guc/igt@gem_busy@busy-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-skl-guc/igt@gem_busy@busy-all.html
    - fi-cfl-guc:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cfl-guc/igt@gem_busy@busy-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-guc/igt@gem_busy@busy-all.html
    - fi-cml-u2:          [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cml-u2/igt@gem_busy@busy-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cml-u2/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bxt-dsi/igt@gem_busy@busy-all.html
    - fi-cfl-8109u:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-cfl-8109u/igt@gem_busy@busy-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-8109u/igt@gem_busy@busy-all.html
    - fi-skl-lmem:        [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-skl-lmem/igt@gem_busy@busy-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-skl-lmem/igt@gem_busy@busy-all.html
    - fi-kbl-soraka:      [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-soraka/igt@gem_busy@busy-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-soraka/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-process:
    - fi-bwr-2160:        [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bwr-2160/igt@gem_close_race@basic-process.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bwr-2160/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@reload:
    - fi-bsw-n3050:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bsw-n3050/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bsw-kefka/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][55]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-x1275/igt@runner@aborted.html
    - fi-icl-dsi:         NOTRUN -> [FAIL][56]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-dsi/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][59]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-u2/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-8809g/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][61]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][62]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bdw-5557u/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][70]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][73]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-ehl-1}:         [PASS][74] -> [INCOMPLETE][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-ehl-1/igt@gem_busy@busy-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-ehl-1/igt@gem_busy@busy-all.html
    - {fi-tgl-dsi}:       [PASS][76] -> [INCOMPLETE][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-tgl-dsi/igt@gem_busy@busy-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-tgl-dsi/igt@gem_busy@busy-all.html
    - {fi-tgl-u}:         [PASS][78] -> [INCOMPLETE][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-tgl-u/igt@gem_busy@busy-all.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-tgl-u/igt@gem_busy@busy-all.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][80]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][81]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][82]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17170 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [PASS][83] -> [DMESG-WARN][84] ([i915#62] / [i915#92])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@gem_busy@busy-all:
    - fi-glk-dsi:         [PASS][85] -> [INCOMPLETE][86] ([i915#58] / [k.org#198133])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-glk-dsi/igt@gem_busy@busy-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-glk-dsi/igt@gem_busy@busy-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 43)
------------------------------

  Additional (3): fi-hsw-peppy fi-bdw-gvtdvm fi-gdg-551 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8233 -> Patchwork_17170

  CI-20190529: 20190529
  CI_DRM_8233: 0862243a5514a9da625520bd4f554f8348077594 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5553: 60475d9b41c58b7d256e83c7d53eaf7c2f1f8ecc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17170: f645456d24f76538e229cbf2e0f511e72765a235 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f645456d24f7 drm/i915/gem: Try allocating va from free space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
