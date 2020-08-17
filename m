Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A62478A7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 23:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E9C89CB5;
	Mon, 17 Aug 2020 21:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEEF689CB2;
 Mon, 17 Aug 2020 21:17:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B825CA0078;
 Mon, 17 Aug 2020 21:17:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 17 Aug 2020 21:17:55 -0000
Message-ID: <159769907572.22665.14041322689970462201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714163236.14105-1-imre.deak@intel.com>
In-Reply-To: <20200714163236.14105-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Fix_Combo_PHY_DPLL_fractional_divider_for_38=2E4M?=
 =?utf-8?q?Hz_ref_clock_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0905682039=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0905682039==
Content-Type: multipart/alternative;
 boundary="===============4606628382277081897=="

--===============4606628382277081897==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl+: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock (rev2)
URL   : https://patchwork.freedesktop.org/series/79486/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8891_full -> Patchwork_18365_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18365_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18365_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18365_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb7/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18365_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#1436] / [i915#716])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][30] -> [INCOMPLETE][31] ([i915#1635] / [i915#2278])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@i915_selftest@mock@contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl1/igt@i915_selftest@mock@contexts.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk9/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982]) +15 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl5/igt@kms_flip@flip-vs-fences@a-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl1/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl2/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [FAIL][44] ([i915#1528]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-glk:          [DMESG-WARN][46] ([i915#118] / [i915#95]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk2/igt@gem_ctx_shared@q-smoketest-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl9/igt@gem_workarounds@suspend-resume.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl5/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][50] ([i915#1436] / [i915#1635] / [i915#716]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][52] ([i915#118] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +9 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][56] ([CI#80]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-hsw5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][60] ([i915#1188]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][62] ([i915#173]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb1/igt@kms_psr@no_drrs.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][66] ([i915#1542]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb6/igt@perf@blocking-parameterized.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb1/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][68] ([i915#1982]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb4/igt@perf_pmu@module-unload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb5/igt@perf_pmu@module-unload.html

  * igt@prime_busy@after@vecs0:
    - shard-hsw:          [FAIL][70] ([i915#2258]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-hsw7/igt@prime_busy@after@vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-hsw2/igt@prime_busy@after@vecs0.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-FAIL][72] ([i915#1982]) -> [DMESG-WARN][73] ([i915#1982])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][74] ([fdo#109349]) -> [DMESG-WARN][75] ([i915#1226])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [DMESG-FAIL][77] ([fdo#108145] / [i915#1982])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][78] ([fdo#109271] / [i915#1635] / [i915#716]) -> [FAIL][79] ([i915#1635] / [i915#2110])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8891/shard-apl4/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-apl1/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8891 -> Patchwork_18365

  CI-20190529: 20190529
  CI_DRM_8891: f01d54256ca8735663c14ccf0525777fea682e8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18365: d27f4a1c75b10bc42abc5e52438eb67171e4107d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/index.html

--===============4606628382277081897==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/tgl+: Fix Combo PHY DPLL fractional=
 divider for 38.4MHz ref clock (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79486/">https://patchwork.freedesktop.org/series/79486/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18365/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18365/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8891_full -&gt; Patchwork_18365_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18365_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18365_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18365_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-tglb:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shar=
d-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365=
/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18365/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18365/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb5/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18365/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18365/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tgl=
b5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shar=
d-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18365/shard-tglb3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365=
/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb8/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18365/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18365/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-tglb2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18365/shard-tglb2/igt@runner@aborted.html">FAIL</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18365_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18365/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915=
#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i=
915#95</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/sh=
ard-skl3/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-apl4/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard=
-apl1/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab=
-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18365/shard-glk9/igt@kms_flip@2x-wf_vblank-ts-chec=
k-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl5/igt@kms_flip@flip-vs-fences@a-edp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/sh=
ard-skl1/igt@kms_flip@flip-vs-fences@a-edp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1=
5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18365/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18365/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-ic=
lb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-kbl2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-kbl7/igt=
@kms_setmode@basic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-proces=
s@vebox.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1528">i915#1528</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18365/shard-skl6/igt@gem_ctx_persistence@legacy-engin=
es-mixed-process@vebox.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-glk2/igt@gem_ctx_shared@q-smoketest-all.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#=
118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i9=
15#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18365/shard-glk8/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl9/igt@gem_workarounds@suspend-resume.html">INCOMPLETE=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
365/shard-skl5/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-apl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#14=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i=
915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
16">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18365/shard-apl6/igt@gen9_exec_parse@allowed-all.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18365/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl8/igt@kms_cursor_legacy@basic-flip-after-cursor-varyi=
ng-size.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18365/shard-skl6/igt@kms_cursor_legacy@basic-fl=
ip-after-cursor-varying-size.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-hsw5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@bc-vga1-=
hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/gfx=
-ci/i915-infra/issues/80">CI#80</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18365/shard-hsw1/igt@kms_flip@2x-flip-vs-abso=
lute-wf_vblank@bc-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8891/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_183=
65/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +7 similar issu=
es</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8891/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/s=
hard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb1/igt@kms_psr@no_drrs.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/173">i915#173</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-iclb5/=
igt@kms_psr@no_drrs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18365/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb6/igt@perf@blocking-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1836=
5/shard-iclb1/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_183=
65/shard-iclb5/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@after@vecs0:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-hsw7/igt@prime_busy@after@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/sha=
rd-hsw2/igt@prime_busy@after@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18365/shard-skl2/igt@kms_cursor_legac=
y@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#109=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18365/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#12=
26</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18365/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8891/shard-apl4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18365=
/shard-apl1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8891 -&gt; Patchwork_18365</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8891: f01d54256ca8735663c14ccf0525777fea682e8a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18365: d27f4a1c75b10bc42abc5e52438eb67171e4107d @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4606628382277081897==--

--===============0905682039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0905682039==--
