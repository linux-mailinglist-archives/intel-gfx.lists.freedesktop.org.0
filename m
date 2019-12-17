Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6086122F10
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 15:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C50AD6E9FA;
	Tue, 17 Dec 2019 14:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EF946E9FA;
 Tue, 17 Dec 2019 14:44:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15DC6A0119;
 Tue, 17 Dec 2019 14:44:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 17 Dec 2019 14:44:07 -0000
Message-ID: <157659384706.21846.15676380979217958197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216220742.34332-1-jose.souza@intel.com>
In-Reply-To: <20191216220742.34332-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C01/11=5D_drm=3A_Add_=5F=5Fdrm=5Fatomi?=
 =?utf-8?b?Y19oZWxwZXJfY3J0Y19zdGF0ZV9yZXNldCgpICYgY28uIChyZXYyKQ==?=
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

Series: series starting with [v3,01/11] drm: Add __drm_atomic_helper_crtc_state_reset() & co. (rev2)
URL   : https://patchwork.freedesktop.org/series/71009/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7581 -> Patchwork_15813
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15813 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15813, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15813:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-cfl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-cfl-8700k/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-kbl-7500u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-c.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-kbl-7500u/igt@kms_busy@basic-flip-pipe-c.html
    - fi-skl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-skl-guc/igt@kms_busy@basic-flip-pipe-c.html

  * igt@runner@aborted:
    - fi-whl-u:           NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-whl-u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15813 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-skl-6770hq:      [PASS][11] -> [INCOMPLETE][12] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-skl-6770hq/igt@kms_busy@basic-flip-pipe-b.html
    - fi-skl-lmem:        [PASS][13] -> [INCOMPLETE][14] ([i915#198])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-skl-lmem/igt@kms_busy@basic-flip-pipe-b.html
    - fi-cml-u2:          [PASS][15] -> [TIMEOUT][16] ([i915#109] / [i915#449])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-cml-u2/igt@kms_busy@basic-flip-pipe-b.html
    - fi-apl-guc:         [PASS][17] -> [INCOMPLETE][18] ([fdo#103927])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-apl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-bxt-dsi:         [PASS][19] -> [TIMEOUT][20] ([i915#109] / [i915#449])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-bxt-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-skl-6600u:       [PASS][21] -> [TIMEOUT][22] ([i915#109] / [i915#449])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-skl-6600u/igt@kms_busy@basic-flip-pipe-b.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-skl-6600u/igt@kms_busy@basic-flip-pipe-b.html
    - fi-whl-u:           [PASS][23] -> [TIMEOUT][24] ([i915#109] / [i915#449])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-whl-u/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-y:           [PASS][25] -> [TIMEOUT][26] ([i915#109] / [i915#449])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-icl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-glk-dsi:         [PASS][27] -> [TIMEOUT][28] ([i915#109] / [i915#449])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-glk-dsi/igt@kms_busy@basic-flip-pipe-b.html
    - fi-tgl-y:           [PASS][29] -> [TIMEOUT][30] ([i915#109] / [i915#449] / [i915#561])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-tgl-y/igt@kms_busy@basic-flip-pipe-b.html
    - fi-kbl-soraka:      [PASS][31] -> [TIMEOUT][32] ([i915#109] / [i915#449])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-b.html
    - fi-icl-guc:         [PASS][33] -> [TIMEOUT][34] ([i915#109] / [i915#449])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-icl-guc/igt@kms_busy@basic-flip-pipe-b.html
    - fi-kbl-r:           [PASS][35] -> [TIMEOUT][36] ([i915#109] / [i915#449])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-kbl-r/igt@kms_busy@basic-flip-pipe-b.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][37] ([i915#816]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][39] ([fdo#111593]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-ilk-650:         [DMESG-WARN][41] ([i915#116]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-ilk-650/igt@i915_module_load@reload-with-fault-injection.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-ilk-650/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][43] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][44] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][45] ([i915#725]) -> [DMESG-FAIL][46] ([i915#770])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [DMESG-FAIL][47] ([i915#553] / [i915#725]) -> [DMESG-FAIL][48] ([i915#725])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][49] ([i915#62] / [i915#92]) -> [INCOMPLETE][50] ([i915#605])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][51] ([fdo#110943] / [fdo#111093]) -> [FAIL][52] ([fdo#111093] / [i915#287] / [k.org#203557])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7581/fi-icl-guc/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/fi-icl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#116]: https://gitlab.freedesktop.org/drm/intel/issues/116
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#287]: https://gitlab.freedesktop.org/drm/intel/issues/287
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#605]: https://gitlab.freedesktop.org/drm/intel/issues/605
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#203557]: https://bugzilla.kernel.org/show_bug.cgi?id=203557


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-blb-e6850 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7581 -> Patchwork_15813

  CI-20190529: 20190529
  CI_DRM_7581: 5ccf72e75044ac46e1db5b66d9a9780b316a7c26 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15813: 2a21719011109e35fb1260a45c700a128030c45d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2a2171901110 drm/i915/display: Add comment to a function that probably can be removed
2b87688a3815 drm/i915/display: Check if pipe fastset is allowed by external dependencies
2bff3c1a0e10 drm/i915/dp: Fix MST disable sequences
d47b4a3a790c drm/i915/display: Always enables MST master pipe first
c3c03b1f66d2 drm/i915/tgl: Select master transcoder for MST stream
b4d6fefb2a73 drm/i915/display: Share intel_connector_needs_modeset()
4ba5962e635b drm/i915: Introduce intel_plane_state_reset()
36f03a633586 drm/i915: Introduce intel_crtc_state_reset()
5cc530fd92e0 drm/i915: Introduce intel_crtc_{alloc, free}()
6ceb6d64933d drm/i915: s/intel_crtc/crtc/ in intel_crtc_init()
fb54fab06250 drm: Add __drm_atomic_helper_crtc_state_reset() & co.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15813/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
