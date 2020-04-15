Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3511A8FE8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 02:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14ED96E7DD;
	Wed, 15 Apr 2020 00:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 863E46E7DD;
 Wed, 15 Apr 2020 00:50:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72DA4A3C0D;
 Wed, 15 Apr 2020 00:50:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sultan Alsawaf" <sultan@kerneltoast.com>
Date: Wed, 15 Apr 2020 00:50:06 -0000
Message-ID: <158691180643.21015.17239138933935839529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404024156.GA10382@sultan-box.localdomain>
In-Reply-To: <20200404024156.GA10382@sultan-box.localdomain>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Synchronize_active_and_retire_callbacks?=
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

Series: drm/i915: Synchronize active and retire callbacks
URL   : https://patchwork.freedesktop.org/series/75924/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298 -> Patchwork_17297
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17297 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17297, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17297:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-whl-u/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-whl-u/igt@gem_close_race@basic-threads.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
    - fi-kbl-r:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-r/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-r/igt@gem_close_race@basic-threads.html
    - fi-kbl-8809g:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-8809g/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-8809g/igt@gem_close_race@basic-threads.html
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-cfl-guc/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-cfl-guc/igt@gem_close_race@basic-threads.html
    - fi-icl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-icl-guc/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-icl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - fi-tgl-y:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-tgl-y/igt@gem_exec_create@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-tgl-y/igt@gem_exec_create@basic.html
    - fi-cfl-8109u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-cfl-8109u/igt@gem_exec_create@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-cfl-8109u/igt@gem_exec_create@basic.html
    - fi-icl-y:           [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-icl-y/igt@gem_exec_create@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-icl-y/igt@gem_exec_create@basic.html
    - fi-bdw-5557u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bdw-5557u/igt@gem_exec_create@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bdw-5557u/igt@gem_exec_create@basic.html
    - fi-bsw-nick:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bsw-nick/igt@gem_exec_create@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bsw-nick/igt@gem_exec_create@basic.html
    - fi-kbl-guc:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-guc/igt@gem_exec_create@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-guc/igt@gem_exec_create@basic.html
    - fi-icl-dsi:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-icl-dsi/igt@gem_exec_create@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-icl-dsi/igt@gem_exec_create@basic.html
    - fi-skl-6600u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-skl-6600u/igt@gem_exec_create@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-skl-6600u/igt@gem_exec_create@basic.html
    - fi-icl-u2:          [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-icl-u2/igt@gem_exec_create@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-icl-u2/igt@gem_exec_create@basic.html
    - fi-cml-u2:          [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-cml-u2/igt@gem_exec_create@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-cml-u2/igt@gem_exec_create@basic.html
    - fi-apl-guc:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-apl-guc/igt@gem_exec_create@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-apl-guc/igt@gem_exec_create@basic.html
    - fi-bxt-dsi:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bxt-dsi/igt@gem_exec_create@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bxt-dsi/igt@gem_exec_create@basic.html
    - fi-skl-lmem:        [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-skl-lmem/igt@gem_exec_create@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-skl-lmem/igt@gem_exec_create@basic.html
    - fi-skl-6700k2:      [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-skl-6700k2/igt@gem_exec_create@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-skl-6700k2/igt@gem_exec_create@basic.html
    - fi-kbl-soraka:      [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-soraka/igt@gem_exec_create@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-soraka/igt@gem_exec_create@basic.html
    - fi-cml-s:           [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-cml-s/igt@gem_exec_create@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-cml-s/igt@gem_exec_create@basic.html
    - fi-bsw-n3050:       [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bsw-n3050/igt@gem_exec_create@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bsw-n3050/igt@gem_exec_create@basic.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bdw-5557u/igt@runner@aborted.html
    - fi-icl-guc:         NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-icl-guc/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-cfl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy@all}:
    - fi-bsw-kefka:       [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-bsw-kefka/igt@gem_busy@busy@all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-bsw-kefka/igt@gem_busy@busy@all.html
    - {fi-tgl-u}:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-tgl-u/igt@gem_busy@busy@all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-tgl-u/igt@gem_busy@busy@all.html
    - fi-skl-guc:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-skl-guc/igt@gem_busy@busy@all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-skl-guc/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-threads:
    - {fi-ehl-1}:         [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-ehl-1/igt@gem_close_race@basic-threads.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-ehl-1/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-dsi}:       [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-tgl-dsi/igt@gem_exec_create@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-tgl-dsi/igt@gem_exec_create@basic.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17297 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-kbl-x1275:       [PASS][65] -> [INCOMPLETE][66] ([CI#80])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-kbl-x1275/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - fi-glk-dsi:         [PASS][67] -> [INCOMPLETE][68] ([i915#58] / [k.org#198133])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-glk-dsi/igt@gem_exec_create@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/fi-glk-dsi/igt@gem_exec_create@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17297

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17297: b0e2d2d0b0c3d0f92caaa375ca254e2906fbb94e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b0e2d2d0b0c3 drm/i915: Synchronize active and retire callbacks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17297/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
