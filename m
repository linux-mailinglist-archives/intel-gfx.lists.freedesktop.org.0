Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9AD1E2402
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 16:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3106E1F6;
	Tue, 26 May 2020 14:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09B9D6E1F6;
 Tue, 26 May 2020 14:22:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0450DA0BC6;
 Tue, 26 May 2020 14:22:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 26 May 2020 14:22:08 -0000
Message-ID: <159050292898.28045.5634040234831577747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526124156.29319-1-jani.nikula@intel.com>
In-Reply-To: <20200526124156.29319-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/params=3A_don=27t_exp?=
 =?utf-8?q?ose_inject=5Fprobe=5Ffailure_in_debugfs?=
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

Series: series starting with [CI,1/4] drm/i915/params: don't expose inject_probe_failure in debugfs
URL   : https://patchwork.freedesktop.org/series/77661/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8539 -> Patchwork_17778
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17778 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17778, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17778:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-8809g/boot.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-icl-y/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-icl-u2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-cfl-8109u/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-skl-6600u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-skl-6600u/boot.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-cfl-8700k/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-cfl-8700k/boot.html
    - fi-icl-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-icl-dsi/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-icl-dsi/boot.html
    - fi-whl-u:           [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-whl-u/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-whl-u/boot.html
    - fi-cml-u2:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-cml-u2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-cml-u2/boot.html
    - fi-skl-6700k2:      [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-skl-6700k2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-cfl-guc/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-soraka/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-soraka/boot.html
    - fi-icl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-icl-guc/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-icl-guc/boot.html
    - fi-cml-s:           [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-cml-s/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-cml-s/boot.html
    - fi-skl-lmem:        [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-skl-lmem/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-glk-dsi/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-glk-dsi/boot.html
    - fi-tgl-y:           [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-tgl-y/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-tgl-y/boot.html
    - fi-kbl-guc:         [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-guc/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-x1275/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-x1275/boot.html
    - fi-kbl-7500u:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-7500u/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-skl-guc/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-kbl-r/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-tgl-dsi/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-tgl-dsi/boot.html
    - {fi-tgl-u}:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-tgl-u/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-tgl-u/boot.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-ehl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-ehl-1/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_17778 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][52] -> [FAIL][53] ([i915#348])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-apl-guc/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-apl-guc/boot.html
    - fi-bxt-dsi:         [PASS][54] -> [FAIL][55] ([i915#1529])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8539/fi-bxt-dsi/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/fi-bxt-dsi/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1529]: https://gitlab.freedesktop.org/drm/intel/issues/1529
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (50 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8539 -> Patchwork_17778

  CI-20190529: 20190529
  CI_DRM_8539: 6590da76d8c6a2952b3cde70859bad41c59ed444 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17778: 92adebe0d92e6cab0f07415f16bd6aabd0fa5c58 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

92adebe0d92e drm/i915/params: switch to device specific parameters
af9a802b3b26 drm/i915/params: prevent changing module params runtime
4d8a197e487c drm/i915/params: fix i915.fake_lmem_start module param sysfs permissions
8685c3c6d218 drm/i915/params: don't expose inject_probe_failure in debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17778/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
