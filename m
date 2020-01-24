Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1CA148E19
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 19:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F8C6E42D;
	Fri, 24 Jan 2020 18:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5594C6E42D;
 Fri, 24 Jan 2020 18:55:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C79DA0093;
 Fri, 24 Jan 2020 18:55:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 24 Jan 2020 18:55:15 -0000
Message-ID: <157989211528.15092.16378393334676300790@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1579871655.git.jani.nikula@intel.com>
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29_regist?=
 =?utf-8?q?er_accessors?=
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

Series: drm/i915/display: mass conversion to intel_de_*() register accessors
URL   : https://patchwork.freedesktop.org/series/72533/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7809 -> Patchwork_16255
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/index.html

Known issues
------------

  Here are the changes found in Patchwork_16255 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-dsi:         [PASS][7] -> [TIMEOUT][8] ([fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-dsi/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-icl-dsi/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@basic:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_addfb_basic@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-tgl-y/igt@kms_addfb_basic@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][11] -> [FAIL][12] ([i915#262])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [INCOMPLETE][17] ([i915#879]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#889]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][21] ([i915#424]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-kbl-x1275:       [INCOMPLETE][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [FAIL][25] ([i915#410]) -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][27] ([fdo#111096] / [i915#323]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][29] ([fdo#112271]) -> [FAIL][30] ([i915#694])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][31] ([i915#725]) -> [DMESG-FAIL][32] ([i915#553] / [i915#725])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][33] ([i915#553] / [i915#725]) -> [DMESG-FAIL][34] ([i915#725])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][35] ([IGT#4] / [i915#263]) -> [FAIL][36] ([i915#217])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-skl-6700k2:      [FAIL][37] ([i915#410]) -> [SKIP][38] ([fdo#109271]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][39] ([CI#94] / [fdo#111827] / [i915#1017]) -> [SKIP][40] ([CI#94] / [fdo#111827]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][41] ([CI#94] / [fdo#109285] / [i915#1017]) -> [SKIP][42] ([CI#94] / [fdo#109285])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#410]: https://gitlab.freedesktop.org/drm/intel/issues/410
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7809 -> Patchwork_16255

  CI-20190529: 20190529
  CI_DRM_7809: 861f608ce6e3c1a1ad320a5d18055601cff36e45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16255: 913f16a2e7ae351c8ff99c4d782a9bfa4847b862 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

913f16a2e7ae drm/i915/vlv_dsi_pll: use intel_de_*() functions for register access
cdbe7f57017f drm/i915/vlv_dsi: use intel_de_*() functions for register access
f3b543cd4384 drm/i915/vga: use intel_de_*() functions for register access
12c70fe8b613 drm/i915/vdsc: use intel_de_*() functions for register access
afa64a3c6bbd drm/i915/tv: use intel_de_*() functions for register access
c3ae7ea81350 drm/i915/sprite: use intel_de_*() functions for register access
e4aa567631f4 drm/i915/sdvo: use intel_de_*() functions for register access
406166f74cf9 drm/i915/psr: use intel_de_*() functions for register access
5a5f3f5ef651 drm/i915/pipe_crc: use intel_de_*() functions for register access
70abf854e570 drm/i915/panel: use intel_de_*() functions for register access
33568867e120 drm/i915/overlay: use intel_de_*() functions for register access
fa2af54524c8 drm/i915/lvds: use intel_de_*() functions for register access
38949463942f drm/i915/lpe_audio: use intel_de_*() functions for register access
3841cf8aa830 drm/i915/hdmi: use intel_de_*() functions for register access
3525b2857c38 drm/i915/hdcp: use intel_de_*() functions for register access
fd2ac1b92db5 drm/i915/gmbus: use intel_de_*() functions for register access
f6f92e9ec996 drm/i915/fifo_underrun: use intel_de_*() functions for register access
46415f31fdbe drm/i915/fbc: use intel_de_*() functions for register access
6b856ed292fb drm/i915/dvo: use intel_de_*() functions for register access
6351092052d2 drm/i915/dsb: use intel_de_*() functions for register access
62cb010d54e3 drm/i915/dp_mst: use intel_de_*() functions for register access
dac3c1307ff6 drm/i915/dpll_mgr: use intel_de_*() functions for register access
59d4feee81b6 drm/i915/dpio_phy: use intel_de_*() functions for register access
f827549283b1 drm/i915/dp: use intel_de_*() functions for register access
9129d0adc87c drm/i915/display_power: use intel_de_*() functions for register access
dadca7367192 drm/i915/display: use intel_de_*() functions for register access
3626a27aaf8e drm/i915/ddi: use intel_de_*() functions for register access
d93abf166aae drm/i915/crt: use intel_de_*() functions for register access
975fff8f273d drm/i915/combo_phy: use intel_de_*() functions for register access
e3e9bb668fb8 drm/i915/color: use intel_de_*() functions for register access
65fb0d418cb5 drm/i915/cdclk: use intel_de_*() functions for register access
36f2779671c5 drm/i915/audio: use intel_de_*() functions for register access
c07095a827f3 drm/i915/icl_dsi: use intel_de_*() functions for register access

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16255/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
