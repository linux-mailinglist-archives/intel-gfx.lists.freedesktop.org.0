Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B351EE807
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 17:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9396E455;
	Thu,  4 Jun 2020 15:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 666A56E50E;
 Thu,  4 Jun 2020 15:49:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BE16A47E0;
 Thu,  4 Jun 2020 15:49:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 Jun 2020 15:49:09 -0000
Message-ID: <159128574934.14555.5243811314207063969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604150503.17199-1-jani.nikula@intel.com>
In-Reply-To: <20200604150503.17199-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/params=3A_switch_to_device_specific_parameters?=
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

Series: drm/i915/params: switch to device specific parameters
URL   : https://patchwork.freedesktop.org/series/78004/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8583 -> Patchwork_17872
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17872 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17872, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17872:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-8809g/boot.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-icl-y/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-icl-u2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-cfl-8109u/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-skl-6600u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-skl-6600u/boot.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-cfl-8700k/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-bxt-dsi/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-bxt-dsi/boot.html
    - fi-icl-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-icl-dsi/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-icl-dsi/boot.html
    - fi-whl-u:           [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-whl-u/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-whl-u/boot.html
    - fi-cml-u2:          [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-cml-u2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-cml-u2/boot.html
    - fi-skl-6700k2:      [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-skl-6700k2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-skl-6700k2/boot.html
    - fi-cfl-guc:         [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-cfl-guc/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-soraka/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-soraka/boot.html
    - fi-icl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-icl-guc/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-icl-guc/boot.html
    - fi-cml-s:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-cml-s/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-cml-s/boot.html
    - fi-skl-lmem:        [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-skl-lmem/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-glk-dsi/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-glk-dsi/boot.html
    - fi-tgl-y:           [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-tgl-y/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-tgl-y/boot.html
    - fi-kbl-guc:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-guc/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-x1275/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-x1275/boot.html
    - fi-kbl-7500u:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-7500u/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-7500u/boot.html
    - fi-skl-guc:         [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-skl-guc/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-kbl-r/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-tgl-dsi/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-tgl-dsi/boot.html
    - {fi-tgl-u}:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-tgl-u/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-tgl-u/boot.html
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-ehl-1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-ehl-1/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_17872 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][54] -> [FAIL][55] ([i915#348])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-apl-guc/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-bsw-n3050:       [PASS][56] -> [DMESG-WARN][57] ([i915#1982])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-bsw-n3050/igt@i915_module_load@reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-bsw-n3050/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][58] -> [DMESG-WARN][59] ([i915#1982])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8583/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8583 -> Patchwork_17872

  CI-20190529: 20190529
  CI_DRM_8583: e147ef9bced964b97283851a519aea132a5613e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17872: 121db1e864d600a3de364f26a4df211cadc0f7c5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

121db1e864d6 drm/i915/params: switch to device specific parameters

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17872/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
