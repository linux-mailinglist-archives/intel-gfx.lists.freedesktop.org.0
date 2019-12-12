Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAB511D89A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF366E203;
	Thu, 12 Dec 2019 21:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D30AA6E203;
 Thu, 12 Dec 2019 21:34:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C93BBA0073;
 Thu, 12 Dec 2019 21:34:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Thu, 12 Dec 2019 21:34:24 -0000
Message-ID: <157618646479.32009.3389002232136209018@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212190230.188505-1-sean@poorly.run>
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev2)
URL   : https://patchwork.freedesktop.org/series/70393/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7553 -> Patchwork_15728
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15728 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15728, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15728:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-guc:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-8700k:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-y:           [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-icl-y/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-icl-y/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-apl-guc:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-guc:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-soraka:      [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-soraka/igt@i915_module_load@reload-with-fault-injection.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-soraka/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-r:           [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-r/igt@i915_module_load@reload-with-fault-injection.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-r/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cml-u2:          [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-cml-u2/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-cml-u2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-whl-u:           [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-u3:          [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
    - fi-glk-dsi:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-7500u:       [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-whl-u/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-byt-j1900/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-cfl-guc/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-cfl-8700k/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-byt-n2820/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15728 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][48] -> [FAIL][49] ([fdo#111407])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [DMESG-FAIL][50] ([i915#723]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][52] ([i915#725]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [DMESG-FAIL][54] ([i915#725]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][56] ([i915#62] / [i915#92]) -> [DMESG-WARN][57] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][58] ([i915#289]) -> [DMESG-WARN][59] ([i915#109] / [i915#289])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-icl-u2/igt@i915_module_load@reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][60] ([i915#694]) -> [DMESG-FAIL][61] ([i915#722])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][62] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][63] ([i915#62] / [i915#92]) +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][64] ([fdo#110943] / [fdo#111093]) -> [FAIL][65] ([fdo#111093])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7553/fi-icl-guc/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7553 -> Patchwork_15728

  CI-20190529: 20190529
  CI_DRM_7553: 85e34ee26876ad3d0438ed9cc0d1b727761dcded @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15728: 33b2dcba156f572b3107663a3fe393ff1f8ff917 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

33b2dcba156f drm/i915: Add HDCP 1.4 support for MST connectors
42978bd3f621 drm/i915: Expose HDCP shim functions from dp for use by dp_mst
f03715af66e3 drm/i915: Use ddi_update_pipe in intel_dp_mst
d1165847a339 drm/i915: Support DP MST in enc_to_dig_port() function
5cf2459e1ab8 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
46a30f077469 drm/i915: Protect workers against disappearing connectors
03cad2db95dc drm/i915: Factor out hdcp->value assignments
135b02f35aa2 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
2ef309e174b5 drm/i915: Intercept Aksv writes in the aux hooks
b16968ebee0e drm/i915: WARN if HDCP signalling is enabled upon disable
ab50e164f964 drm/i915: Clear the repeater bit on HDCP disable
4f25d7348ece drm/i915: Fix sha_text population code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15728/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
